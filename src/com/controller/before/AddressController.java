package com.controller.before;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.po.Address;
import com.po.Notice;
import com.service.before.AddressService;
import com.service.before.CartService;
import com.service.before.OrderService;

@Controller
@RequestMapping("/address")
public class AddressController extends BaseBeforeController{
	@Autowired
	private AddressService addressService;
	
	@RequestMapping("/toAddNewAddress")
	public String toAddNewAddress(Model model) {
		model.addAttribute("address", new Address());
		return "before/addNewAddress";
	}
	
	@RequestMapping("/addNewAddress")
	public String addNewAddress(Model model,@ModelAttribute Address address, HttpSession session) {
		return addressService.addNewAddress(model, address, session);
	}
	
	@RequestMapping("/selectAddress")
	public String selectAddress(Model model,HttpSession session) {
		return addressService.selectAddress(model,session);
	}
	
	@RequestMapping("/toUpdateAddress")
	public String toUpdateAddress(Model model,Integer id) {
		return  addressService.toUpdateAddress(model, id);
		
	}
	
	
	@RequestMapping("/updateAddress")
	public String updateAddress(Model model,@ModelAttribute Address address, HttpSession session,Integer id) {
		return addressService.updateAddress(model,address, session,id);
	}
	
	@RequestMapping("/deleteAddress")
	public String deleteAddress(Integer id,HttpSession session) {
		return addressService.deleteAddress(id, session);
	}
	

}
