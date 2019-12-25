package com.service.before;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.po.Address;

public interface AddressService {
	public String addNewAddress(Model model,Address address, HttpSession session);
	public String selectAddress(Model model,HttpSession session);
	public String toUpdateAddress(Model model,Integer id);
	public String updateAddress(Model model,Address address, HttpSession session,Integer id);
	public String deleteAddress(Integer id,HttpSession session);
}
