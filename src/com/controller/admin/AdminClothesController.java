package com.controller.admin;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.po.Clothes;
import com.service.admin.AdminClothesService;
@Controller
@RequestMapping("/adminClothes")
public class AdminClothesController extends BaseController{
	@Autowired
	private AdminClothesService adminClothesService;
	@RequestMapping("/selectClothes")
	public String selectClothes(Model model, Integer pageCur, String act) {
		return adminClothesService.selectClothes(model, pageCur, act);
	}
	
	@RequestMapping("/toAddClothes")
	public String toAddClothes(Model model){
		model.addAttribute("clothes", new Clothes());
		return "admin/addClothes";
	}
	
	@RequestMapping("/addClothes")   
	public String addClothes(@ModelAttribute Clothes clothes, HttpServletRequest request, String updateAct){
		return adminClothesService.addOrUpdateClothes(clothes, request, updateAct);
	}
	
	@RequestMapping("/selectAClothes")
	public String selectAClothes(Model model, Integer id, String act){
		return adminClothesService.selectAClothes(model, id, act);
	}
	
	@RequestMapping("/deleteClothes")
	public String deleteClothes(Integer ids[], Model model) {
		return adminClothesService.deleteClothes(ids, model);
	}
	
	@RequestMapping("/deleteAClothes")
	public String deleteAClothes(Integer id, Model model) {
		return adminClothesService.deleteAClothes(id, model);
	}
}
