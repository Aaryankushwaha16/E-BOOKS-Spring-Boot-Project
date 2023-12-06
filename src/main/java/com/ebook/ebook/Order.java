package com.ebook.ebook;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;


@Entity
@Table(name="Ordernew")
public class Order {
	
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Id
	private int id;
	
	@ManyToOne
	private Userdata userdata;
	
	private float total;
	
	private String bid;

	
	public Order() {
		super();
	}

	public Order(Userdata userdata,String bid,float total) {
		super();
		this.userdata = userdata;
		this.total = total;
		this.bid = bid;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Userdata getUserdata() {
		return userdata;
	}

	public void setUserdata(Userdata userdata) {
		this.userdata = userdata;
	}

	public float getTotal() {
		return total;
	}

	public void setTotal(float total) {
		this.total = total;
	}

	public String getBid() {
		return bid;
	}

	public void setBid(String bid) {
		this.bid = bid;
	}
	
	

}
