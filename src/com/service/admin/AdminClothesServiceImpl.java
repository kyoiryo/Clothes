package com.service.admin;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.dao.AdminClothesDao;
import com.po.Clothes;
import com.util.MyUtil;
@Service("adminClothesService")
@Transactional
public class AdminClothesServiceImpl implements AdminClothesService{
	@Autowired
	private AdminClothesDao adminClothesDao;
	@Override
	public String addOrUpdateClothes(Clothes clothes, HttpServletRequest request, String updateAct) {
		String newFileName = "";
		String fileName = clothes.getLogoImage().getOriginalFilename(); 
		if(fileName.length() > 0){
			String realpath = request.getServletContext().getRealPath("logos");
		
			String fileType = fileName.substring(fileName.lastIndexOf('.'));
			
			newFileName = MyUtil.getStringID() + fileType;
			clothes.setClothespicture(newFileName);
			File targetFile = new File(realpath, newFileName); 
			if(!targetFile.exists()){  
	            targetFile.mkdirs();  
	        } 
			File wf = new File("eclipse-workspace\\Clothes\\WebContent\\logos",newFileName);
	        try {   
	        	clothes.getLogoImage().transferTo(targetFile);
	        } catch (Exception e) {  
	            e.printStackTrace();  
	        }  
	        try {
				FileInputStream in = new FileInputStream(targetFile);
				FileOutputStream out = new FileOutputStream(wf);
				int n = 0;
				byte b[] = new byte[100];
				while((n = in.read(b,0,100)) != -1) {
					out.write(b, 0, n);
				}
				in.close();
				out.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if("update".equals(updateAct)){
	       if(adminClothesDao.updateClothesById(clothes) > 0){
	        	return "forward:/adminClothes/selectClothes?act=updateSelect";
	        }else{
	        	return "/adminClothes/updateAclothes";
	       }
		}else{
			if(adminClothesDao.addClothes(clothes) > 0){
				return "forward:/adminClothes/selectClothes";
			}else{
				return "card/addCard";
			}
		}
	}
	
	@Override
	public String selectClothes(Model model, Integer pageCur, String act) {
		List<Clothes> allClothes = adminClothesDao.selectClothes();
		int temp = allClothes.size();
		model.addAttribute("totalCount", temp);
		int totalPage = 0;
		if (temp == 0) {
			totalPage = 0;
		} else {
			totalPage = (int) Math.ceil((double) temp / 10);
		}
		if (pageCur == null) {
			pageCur = 1;
		}
		if ((pageCur - 1) * 10 > temp) {
			pageCur = pageCur - 1;
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("startIndex", (pageCur - 1) * 10);
		map.put("perPageSize", 10);
		allClothes = adminClothesDao.selectAllClothesByPage(map);
		model.addAttribute("allClothes", allClothes);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("pageCur", pageCur);
		if("deleteSelect".equals(act)){
			return "admin/deleteSelectClothes";
		}
		else if("updateSelect".equals(act)){
			return "admin/updateSelectClothes";
		}else{
			return "admin/selectClothes";
		}
	}
	@Override
	public String selectAClothes(Model model, Integer id, String act) {
		Clothes aclothes = adminClothesDao.selectClothesById(id);
		model.addAttribute("clothes", aclothes);
		if("updateAclothes".equals(act)){
			return "admin/updateAclothes";
		}
		return "admin/clothesDetail";
	}
	@Override
	public String deleteClothes(Integer[] ids, Model model) {
		List<Integer> list = new ArrayList<Integer>();
		for (int i = 0; i < ids.length; i++) {
			if(adminClothesDao.selectCartClothes(ids[i]).size() > 0 ||
					adminClothesDao.selectFocusClothes(ids[i]).size() > 0 || 
					adminClothesDao.selectOrderdetailClothes(ids[i]).size() > 0) {
				model.addAttribute("msg", "");
				return "forward:/adminClothes/selectClothes?act=deleteSelect";
			}
			list.add(ids[i]);
		}
		adminClothesDao.deleteClothes(list);
		model.addAttribute("msg", "");
		return "forward:/adminClothes/selectClothes?act=deleteSelect";
	}
	@Override
	public String deleteAClothes(Integer id, Model model) {
		if(adminClothesDao.selectCartClothes(id).size() > 0 ||
				adminClothesDao.selectFocusClothes(id).size() > 0 || 
				adminClothesDao.selectOrderdetailClothes(id).size() > 0) {
			model.addAttribute("msg", "");
			return "forward:/adminClothes/selectClothes?act=deleteSelect";
		}
		adminClothesDao.deleteAclothes(id);
		model.addAttribute("msg", "");
		return "forward:/adminClothes/selectClothes?act=deleteSelect";
	}
}
