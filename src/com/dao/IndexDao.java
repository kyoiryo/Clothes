package com.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.po.Clothes;

@Repository("indexDao")
@Mapper
public interface IndexDao {
	public List<Map<String, Object>> selectNotice();
	public List<Map<String, Object>> getLastedClothes(Clothes clothes);
	public Clothes selectClothesById(Integer id);
	public List<Clothes> search(String mykey);
	public List<Clothes> selectAllClothes();
}
