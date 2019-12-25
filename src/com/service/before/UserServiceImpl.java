package com.service.before;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.dao.UserDao;
import com.po.User;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDao userDao;
	@Override
	public String register(User buser, Model model, HttpSession session) {
		
		int n = userDao.register(buser);
		if(n > 0) {
			return "before/login";
		}else {
			model.addAttribute("msg", "error");
			return "before/register";
		}
	}
	@Override
	public String login(User buser, Model model, HttpSession session) {

		User ruser = null;
		List<User> list = userDao.login(buser);
		if(list.size() > 0) {
			ruser = list.get(0);
		}
		if(ruser != null) {
			session.setAttribute("bruser", ruser);
			return "forward:/before";
		}else {
			model.addAttribute("msg", "error");
			return "before/login";
		}
	}

}
