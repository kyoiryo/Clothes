package com.service.admin;
import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.po.Clothes;
public interface AdminClothesService {
	public String selectAClothes(Model model, Integer id, String act);
	public String deleteClothes(Integer ids[], Model model);
	public String deleteAClothes(Integer id, Model model);
	public String addOrUpdateClothes(Clothes clothes, HttpServletRequest request, String updateAct);
	public String selectClothes(Model model, Integer pageCur, String act);
}
