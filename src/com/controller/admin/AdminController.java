package com.controller.admin;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.po.Admin;
import com.service.admin.AdminService;
@Controller
public class AdminController {
	@Autowired
	private AdminService adminService;
	@RequestMapping("/admin")
	public String toLogin(@ModelAttribute("auser") Admin auser) {
		return "admin/login";
	}
	@RequestMapping("/admin/login")
	public String login(@ModelAttribute("auser") Admin auser, Model model, HttpSession session) {
		return adminService.login(auser, model, session);
	}
	@RequestMapping("/exit")
	public String exit(@ModelAttribute("auser") Admin auser,HttpSession session) {
		session.invalidate();
		return "admin/login";
	}
}
