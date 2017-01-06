package com.gy.automatic.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String index(){
		return "redirect:index";
	}
	
	
	@RequestMapping("/index")
	public String jumpToHomePage(ModelMap map) {
		return "index";
	}
	
	@RequestMapping("/contactUsMain")
	public String contactUsPage() {
		return "contactUsMain";
	}

	@RequestMapping("/partner")
	public String partner() {
		return "partner";
	}
}
