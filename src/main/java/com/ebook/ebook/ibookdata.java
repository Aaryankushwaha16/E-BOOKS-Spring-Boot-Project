package com.ebook.ebook;


import java.util.List;

import org.springframework.data.repository.CrudRepository;


public interface ibookdata extends CrudRepository<Bookdata, Integer> {

	//@Query("select u1 from userdata u1 where u1.email=email and u1.password=password")
	//public userdata findByEmail(String email, String password);
	
	List<Bookdata> findAllByCategory(String category);

	List<Bookdata> findAllByBname(String bname);
	
	
}

 