package com.po;

public class Order {
	private Integer id;
	private Integer usertable_id;
	private Double amount;
	private Integer status;
	private String orderdate;
	private Integer addresstable_id;
	
	
	public Integer getAddresstable_id() {
		return addresstable_id;
	}
	public void setAddresstable_id(Integer addresstable_id) {
		this.addresstable_id = addresstable_id;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
	public Integer getUsertable_id() {
		return usertable_id;
	}
	public void setUsertable_id(Integer usertable_id) {
		this.usertable_id = usertable_id;
	}
	public Double getAmount() {
		return amount;
	}
	public void setAmount(Double amount) {
		this.amount = amount;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public String getOrderdate() {
		return orderdate;
	}
	public void setOrderdate(String orderdate) {
		this.orderdate = orderdate;
	}
}
