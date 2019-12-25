package com.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.po.Address;
import com.po.Clothes;

@Repository("addressDao")
@Mapper
public interface AddressDao {
	public Map<String, Object> selectDefAddress(Integer uid);
	public int addNewAddress(Address address);
	public List<Map<String, Object>> selectAddress(Integer id);
	public Address selectAddressById(Integer id);
	public int updateAddressById(Address address);
	public int deleteAddress(Integer id);
	
}
