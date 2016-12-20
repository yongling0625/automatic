package com.gy.automatic.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gy.automatic.model.Product;
import com.gy.automatic.service.ProductService;
@Controller
@RequestMapping("/product")
public class ApplicationCaseController {
//	@Autowired
//	private ApplicationCaseService applicationCaseService;
//	
//	@RequestMapping(value="/{categoryId}",method=RequestMethod.GET)
//	public String selectApplicationCaseList(@PathVariable Integer categoryId,ModelMap map){
//		List<Product> productList = applicationCaseService.selectProductList(categoryId);
//		map.addAttribute("productList", productList);
//		map.addAttribute("product_cate", categoryId);
//		return "product";
//	}
	
}
