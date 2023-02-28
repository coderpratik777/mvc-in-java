package com.pratiti.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.pratiti.entity.Customer;

public interface CustomerRespository extends JpaRepository<Customer, Integer> {
	
	public Optional<Customer> findByName(String name);
	//we use here optional api because there be the chances of getting null values
	//as a return from the jsp pages
	
	public Optional<Customer> findById(String id);
	
	

}
