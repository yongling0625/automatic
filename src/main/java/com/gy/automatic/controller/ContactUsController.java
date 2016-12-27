package com.gy.automatic.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gy.automatic.model.Problem;
import com.gy.automatic.service.ContactUsService;

@Controller
public class ContactUsController {

	@Autowired
	private ContactUsService contactUsService;
	
	@RequestMapping("/contactUs")
	public String selectNewsList(Problem problem,HttpServletRequest request,HttpServletResponse response,Model model){
		if(problem!=null){
			contactUsService.insert(problem);
		}
		return "index";
	}
}
