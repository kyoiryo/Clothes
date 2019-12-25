package com.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.po.Clothes;
@Repository("adminClothesDao")
@Mapper
public interface AdminClothesDao {
	public List<Clothes> selectClothes();
	public List<Clothes> selectAllClothesByPage(Map<String, Object> map);
	public int addClothes(Clothes clothes);
	public Clothes selectClothesById(Integer id);
	public int deleteClothes(List<Integer> ids);
	public int deleteAclothes(Integer id);
	public int updateClothesById(Clothes clothes);
	public List<Map<String, Object>> selectCartClothes(Integer id);
	public List<Map<String, Object>> selectFocusClothes(Integer id);
	public List<Map<String, Object>> selectOrderdetailClothes(Integer id);
}
