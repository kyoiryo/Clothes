package com.service.before;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.po.Clothes;

public interface IndexService {
	public String before(Model model,HttpSession session, Clothes clothes);
	public String toRegister(Model model);
	public String toLogin(Model model);
	public String clothesDetail(Model model,Integer id);
	public String selectANotice(Model model,Integer id);
	public String search(Model model,String mykey);
	public String more(Model model);
}
