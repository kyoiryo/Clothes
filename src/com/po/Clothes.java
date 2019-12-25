package com.po;

import org.springframework.web.multipart.MultipartFile;

public class Clothes {
	private Integer id;
	private String clothesname;
	private Double clothesoprice;
	private Double clothesrprice;
	private Integer clothesstore;
	private MultipartFile logoImage;//对应addclothes.jsp中的图片上传的name属性
	private String clothespicture;
	private Integer clothestype_id;
	private String typename;//查询时使用
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getClothesname() {
		return clothesname;
	}
	public void setClothesname(String clothesname) {
		this.clothesname = clothesname;
	}
	public Double getClothesoprice() {
		return clothesoprice;
	}
	public void setClothesoprice(Double clothesoprice) {
		this.clothesoprice = clothesoprice;
	}
	public Double getClothesrprice() {
		return clothesrprice;
	}
	public void setClothesrprice(Double clothesrprice) {
		this.clothesrprice = clothesrprice;
	}
	public Integer getClothesstore() {
		return clothesstore;
	}
	public void setClothesstore(Integer clothesstore) {
		this.clothesstore = clothesstore;
	}
	public MultipartFile getLogoImage() {
		return logoImage;
	}
	public void setLogoImage(MultipartFile logoImage) {
		this.logoImage = logoImage;
	}
	public String getClothespicture() {
		return clothespicture;
	}
	public void setClothespicture(String clothespicture) {
		this.clothespicture = clothespicture;
	}
	public Integer getClothestype_id() {
		return clothestype_id;
	}
	public void setClothestype_id(Integer clothestype_id) {
		this.clothestype_id = clothestype_id;
	}
	public String getTypename() {
		return typename;
	}
	public void setTypename(String typename) {
		this.typename = typename;
	}
	
	

}
