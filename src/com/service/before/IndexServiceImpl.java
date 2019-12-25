package com.service.before;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.dao.AdminNoticeDao;
import com.dao.AdminTypeDao;
import com.dao.IndexDao;
import com.po.User;
import com.po.Clothes;
import com.po.Notice;

@Service("indexService")
@Transactional
public class IndexServiceImpl implements IndexService{
	@Autowired
	private IndexDao indexDao;
	@Autowired
	private AdminTypeDao adminTypeDao;
	@Autowired
	private AdminNoticeDao adminNoticeDao;
	@Override
	public String before(Model model, HttpSession session, Clothes clothes) {
		session.setAttribute("clothesType", adminTypeDao.selectClothesType());
		model.addAttribute("noticelist", indexDao.selectNotice());
		if(clothes.getId() == null) 
			clothes.setId(0);
		model.addAttribute("lastedlist", indexDao.getLastedClothes(clothes));
		return "before/index";
	}

	@Override
	public String toRegister(Model model) {
		model.addAttribute("rbuser", new User());
		return "before/register";
	}

	@Override
	public String toLogin(Model model) {
		model.addAttribute("lbuser", new User());
		return "before/login";
	}

	@Override
	public String clothesDetail(Model model, Integer id) {
		Clothes clothes = indexDao.selectClothesById(id);
		model.addAttribute("clothes", clothes);
		return "before/clothesdetail";
	}

	@Override
	public String selectANotice(Model model, Integer id) {
		Notice notice = adminNoticeDao.selectANotice(id);
		model.addAttribute("notice", notice);
		return "admin/noticeDetail";
	}

	@Override
	public String search(Model model, String mykey) {
		List<Clothes> list = indexDao.search(mykey);
		model.addAttribute("searchlist", list);
		return "before/searchResult";
	}

	@Override
	public String more(Model model) {
		// TODO Auto-generated method stub
		List<Clothes> list=indexDao.selectAllClothes();
		model.addAttribute("clothes", list);
		return "before/more";
	}
	
}
