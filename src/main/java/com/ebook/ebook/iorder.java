package com.ebook.ebook;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface iorder extends CrudRepository<Order,Integer>{
	int countByUserdata_id(int id);
	List<Cart> findAllByUserdata_id(int id);
}

