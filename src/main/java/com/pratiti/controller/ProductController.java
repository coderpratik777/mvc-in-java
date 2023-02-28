package com.pratiti.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pratiti.entity.Product;
import com.pratiti.repository.ProductRepository;

@Controller
public class ProductController {
	
	@Autowired
	private ProductRepository productRepo;
	
	@RequestMapping("/add-product")
	public String add(Product product,Map map) {
		productRepo.save(product);
		map.put("message",product.getId());
		return "confirmation.jsp";
	}
}
