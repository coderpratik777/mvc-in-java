package com.pratiti.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.pratiti.entity.Customer;
import com.pratiti.repository.CustomerRespository;

@Controller
public class CustomerController {
	
	
	@Autowired
	private CustomerRespository customerRepo;
	
	@RequestMapping("/add-customer")
	public String add(Customer customer,Map map) {
		
		customerRepo.save(customer);
		map.put("message",customer.getId());
		map.put("name", customer.getName());
		return "confirmation.jsp";
	}
	@RequestMapping("/search-customer")//this url is same as the form action field value
	public String get(@RequestParam("name") String name,Map map) {
		
		Customer customer=customerRepo.findByName(name).get();
		map.put("c", customer);
		return "search.jsp";
		
		
	}
	
	@RequestMapping("/search-customer-byid")
	public String getByid(@RequestParam("id") String id,Map map) {
		
		Customer customer=customerRepo.findById(Integer.parseInt(id)).get();
		System.out.println(customer.getName());
		map.put("cust", customer);
		return "search.js";
		
	}
	
	@RequestMapping("/fetch-all-cutomers")
	public String fetchAll(Map model) {
		List<Customer> list=customerRepo.findAll();
		model.put("listOfCustomers", list);
		return "search.jsp";
	}

}
