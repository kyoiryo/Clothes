package com.controller.before;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.service.before.CartService;

@Controller
@RequestMapping("/cart")
public class CartController extends BaseBeforeController{
	@Autowired
	private CartService cartService;
	@RequestMapping("/putCart")
	public String putCart(Model model,Integer shoppingnum, Integer id, HttpSession session) {
		return cartService.putCart(model, shoppingnum, id, session);
	}
	
	@RequestMapping("/selectCart")
	public String selectCart(Model model, HttpSession session) {
		return cartService.selectCart(model, session);
	}
	
	@RequestMapping("/deleteAclothes")
	public String deleteAclothes(Integer id,HttpSession session) {
		return cartService.deleteAclothes(id, session);
	}
	
	@RequestMapping("/clear")
	public String clear(HttpSession session) {
		return cartService.clear(session);
	}
	
	@RequestMapping("/orderConfirm")
	public String orderConfirm(Model model, HttpSession session, Integer aid) {
		return cartService.orderConfirm(model, session, aid);
	}
}
