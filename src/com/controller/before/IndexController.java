package com.controller.before;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.po.Clothes;
import com.service.before.IndexService;
@Controller
public class IndexController {
	@Autowired
	private IndexService indexService;
	
	@RequestMapping("/before")
	public String before(Model model,HttpSession session, Clothes clothes) {
		return indexService.before(model, session, clothes);
	}
	
	@RequestMapping("/toRegister")
	public String toRegister(Model model) {
		return indexService.toRegister(model);
	}
	
	@RequestMapping("/toLogin")
	public String toLogin(Model model) {
		return indexService.toLogin(model);
	}
	
	@RequestMapping("/clothesDetail")
	public String clothesDetail(Model model,Integer id) {
		return indexService.clothesDetail(model, id);
	}
	
	@RequestMapping("/selectANotice")
	public String selectANotice(Model model,Integer id) {
		return indexService.selectANotice(model, id);
	}
	
	@RequestMapping("/search")
	public String search(Model model,String mykey) {
		return indexService.search(model, mykey);
	}
	
	@RequestMapping("/more")
	public String more(Model model) {
		return indexService.more(model);
	}
	
}
