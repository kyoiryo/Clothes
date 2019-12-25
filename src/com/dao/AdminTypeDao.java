package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.po.Clothes;
import com.po.ClothesType;
@Repository("adminTypeDao")
@Mapper
public interface AdminTypeDao {
	public List<ClothesType> selectClothesType();
	public int addType(String typename);
	public int deleteType(Integer id);
	public List<Clothes> selectClothesByType(Integer id);
}
