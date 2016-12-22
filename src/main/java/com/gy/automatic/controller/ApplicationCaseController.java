package com.gy.automatic.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gy.automatic.model.ApplicationCase;
import com.gy.automatic.service.ApplicationCaseService;
@Controller
@RequestMapping("/appCase")
public class ApplicationCaseController {
	@Autowired
	private ApplicationCaseService applicationCaseService;
	
	@RequestMapping(value="/{categoryId}",method=RequestMethod.GET)
	public String selectApplicationCaseList(@PathVariable Integer categoryId,Model map){
		ApplicationCase applicationCase= applicationCaseService.selectAppCaseByCategoryId(categoryId);
		if(applicationCase != null){
			String[] images = applicationCase.getApplicationCaseImages().split(",");
			map.addAttribute("applicationCase", applicationCase);
			map.addAttribute("appCase_cate", categoryId);
			map.addAttribute("images", images);
		}
		return "appCase";
	}
	
}
