package com.ebook.ebook;

import org.springframework.data.repository.CrudRepository;

public interface iuserdata extends CrudRepository<Userdata,Integer>{
	
	Userdata findByEmail(String email);

}
