package com.service.admin;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.po.Admin;

public interface AdminService {
	public String login(Admin auser, Model model, HttpSession session);
}
