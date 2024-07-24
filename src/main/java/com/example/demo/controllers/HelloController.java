package com.example.demo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("hello")
public class HelloController {

	@GetMapping("/{name}")
	public String sayHelloToUser(@PathVariable("name") String name, Model model) {
		model.addAttribute("name", name);	
		
		return "hello/index";
	}
	
	@GetMapping("")
	public String sayHello() {
		return "redirect:/hello/User";
	}
}
