package com.service.before;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.dao.OrderDao;
import com.po.Order;
import com.util.MyUtil;
@Service("orderService")
@Transactional
public class OrderServiceImpl implements OrderService{
	@Autowired
	private OrderDao orderDao;
	@Override
	public String orderSubmit(Model model, HttpSession session, Double amount,Integer id) {
		Order order = new Order();
		order.setAmount(amount);
		order.setUsertable_id(MyUtil.getUserId(session));
		order.setAddresstable_id(id);
		orderDao.addOrder(order);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("ordersn", order.getId());
		map.put("uid", MyUtil.getUserId(session));
		orderDao.addOrderDetail(map);
		List<Map<String, Object>> list = orderDao.selectClothesShop(MyUtil.getUserId(session));
		for (Map<String, Object> map2 : list) {
			orderDao.updateStore(map2);
		}
		orderDao.clear(MyUtil.getUserId(session));
		model.addAttribute("ordersn", order.getId());
		return "before/orderdone";
	}
	@Override
	public String pay(Integer ordersn) {
		orderDao.pay(ordersn);
		return "before/paydone";
	}
	
}
