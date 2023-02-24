package com.pratiti.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {
	
	@RequestMapping("/hello")
	public String hello(Map map) {
		map.put("message","Welcome to spring MVC");
		return "hello.jsp";
	}

}
