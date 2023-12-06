package com.ebook.ebook;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;

@Entity
public class Bookdata {
	
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Id
	private int id;
	private String bname;
	private String writer;
	private double price;
	private String img;
	private String category;
	@OneToMany
	private List<Cart>cart;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	
	public Bookdata() {
		super();
	}
//	public Bookdata(int id, String bname, String writer, double price, String img) {
//		super();
//		this.id = id;
//		this.bname = bname;
//		this.writer = writer;
//		this.price = price;
//		this.img = img;
//	}
	
	public Bookdata(int id, String bname, String writer, double price, String img, String category) {
		super();
		this.id = id;
		this.bname = bname;
		this.writer = writer;
		this.price = price;
		this.img = img;
		this.category=category;
	}
	
	public List<Cart> getCart() {
		return cart;
	}
	public void setCart(List<Cart> cart) {
		this.cart = cart;
	}


	
	
	
	
}
