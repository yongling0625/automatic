package com.gy.automatic.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gy.automatic.model.CarouselImg;
import com.gy.automatic.service.HomeService;

@Controller
public class HomeController {
	@Autowired
	private HomeService	homeService;
	
	@RequestMapping("/")
	public String index(){
		return "redirect:index";
	}
	
	
	@RequestMapping("/index")
	public String jumpToHomePage(ModelMap map) {
//		List<CarouselImg> carouselImgList = homeService.selectCarouselPic();
//		map.addAttribute("carouselImgList", carouselImgList);
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
