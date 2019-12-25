package com.service.before;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.po.User;

public interface UserService {
	public String register(User buser,Model model, HttpSession session);
	public String login(User buser,Model model, HttpSession session);
}
