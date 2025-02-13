package com.service.before;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.dao.AddressDao;
import com.dao.CartDao;
import com.util.MyUtil;

@Service("cartService")
@Transactional
public class CartServiceImpl implements CartService{
	@Autowired
	private CartDao cartDao;
	@Autowired
	private AddressDao addressDao;
	@Override
	public String putCart(Model model, Integer shoppingnum, Integer id, HttpSession session) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("uid", MyUtil.getUserId(session));
		map.put("gid", id);
		map.put("shoppingnum", shoppingnum);
		List<Map<String, Object>> list = cartDao.isPutCart(map);
		if(list.size() > 0)
			cartDao.updateCart(map);
		else
			cartDao.putCart(map);
		return "forward:/cart/selectCart";
	}
	@Override
	public String selectCart(Model model, HttpSession session) {
		List<Map<String, Object>> list = cartDao.selectCart(MyUtil.getUserId(session));
		double sum = 0;
		for (Map<String, Object> map : list) {
			sum = sum + (Double)map.get("smallsum");
		}
		model.addAttribute("total", sum);
		model.addAttribute("cartlist", list);
		return "before/cart";
	}
	@Override
	public String deleteAclothes(Integer id, HttpSession session) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("uid", MyUtil.getUserId(session));
		map.put("gid", id);
		cartDao.deleteAclothes(map);
		return "forward:/cart/selectCart";
	}
	@Override
	public String clear(HttpSession session) {
		cartDao.clear(MyUtil.getUserId(session));
		return "forward:/cart/selectCart";
	}
	@Override
	public String orderConfirm(Model model, HttpSession session, Integer aid) {
		List<Map<String, Object>> list = cartDao.selectCart(MyUtil.getUserId(session));
		double sum = 0;
		for (Map<String, Object> map : list) {
			sum = sum + (Double)map.get("smallsum");
		}
		model.addAttribute("total", sum);
		model.addAttribute("cartlist", list);
		if(aid != 0) {
			//System.out.println(aid);
			model.addAttribute("address", addressDao.selectAddressById(aid));
		}else {
			model.addAttribute("address", addressDao.selectDefAddress(MyUtil.getUserId(session)));
		}
		
		return "before/orderconfirm";
	}

}
