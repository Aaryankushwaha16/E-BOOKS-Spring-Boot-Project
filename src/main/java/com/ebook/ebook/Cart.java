package com.ebook.ebook;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;


@Entity
public class Cart {
	
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Id
	private int id;
	@ManyToOne
	private Bookdata bookdata;
	@ManyToOne
	private Userdata userdata;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Bookdata getBookdata() {
		return bookdata;
	}
	public void setBookdata(Bookdata bookdata) {
		this.bookdata = bookdata;
	}
	public Userdata getUserdata() {
		return userdata;
	}
	public void setUserdata(Userdata userdata) {
		this.userdata = userdata;
	}
	public Cart( Bookdata bookdata,Userdata userdata) {
		super();
		
		this.bookdata = bookdata;
		this.userdata = userdata;
	}
	public Cart() {
		super();
	}
	
	

}
