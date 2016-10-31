package com.gy.automatic.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gy.automatic.model.CarouselImg;
import com.gy.automatic.service.HomeService;

@Controller
public class HomeController {
	@Autowired
	private HomeService	homeService;
	
	
	@RequestMapping("/home")
	public String jumpToHomePage(ModelMap map) {
		List<CarouselImg> carouselImgList = homeService.selectCarouselPic();
		map.addAttribute("carouselImgList", carouselImgList);
		return "home";
	}

	@RequestMapping("/getCarouselPic")
	@ResponseBody
	public Map<String,Object> selectCarouselPic() {
		Map<String, Object> picMap = new HashMap<String, Object>();
		picMap.put("title", "轮播图片");
		picMap.put("id", 1);
		picMap.put("start", "轮播图片");
		List<CarouselImg> carouselImgList = homeService.selectCarouselPic();
		picMap.put("data", carouselImgList);
		return picMap;

	}
	public Map<String,Object> selectCarouselPic222() {
		Map<String, Object> picMap = new HashMap<String, Object>();
		picMap.put("title", "轮播图片");
		picMap.put("id", 1);
		picMap.put("start", "轮播图片");
		List<CarouselImg> carouselImgList = homeService.selectCarouselPic();
		picMap.put("data", carouselImgList);
		return picMap;
		
	}
}
