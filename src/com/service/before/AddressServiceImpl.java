package com.service.before;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.dao.AddressDao;
import com.po.Address;
import com.po.Clothes;
import com.util.MyUtil;

@Service("addressService")
@Transactional
public class AddressServiceImpl implements AddressService{
	@Autowired
	private AddressDao addressDao;

	@Override
	public String addNewAddress(Model model, Address address, HttpSession session) {
		address.setUsertable_id(MyUtil.getUserId(session));
		addressDao.addNewAddress(address);
		return "forward:/address/selectAddress";
	}
	public String selectAddress(Model model, HttpSession session) {
		List<Map<String, Object>> list = addressDao.selectAddress(MyUtil.getUserId(session));
		model.addAttribute("addresslist", list);
		return "before/selectAddress";
	}
	

		public String toUpdateAddress(Model model,Integer id) {
			model.addAttribute("address",addressDao.selectAddressById(id));
			return "before/updateAddress";
		}
		
				@Override
		public String updateAddress(Model model,Address address, HttpSession session,Integer id) {
			addressDao.updateAddressById(address);
		    return "forward:/address/selectAddress";
		}
	@Override
	public String deleteAddress(Integer id, HttpSession session) {
		addressDao.deleteAddress(id);
		return "forward:/address/selectAddress";
	}
	

}
