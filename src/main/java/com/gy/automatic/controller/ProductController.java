package com.gy.automatic.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gy.automatic.model.Product;
import com.gy.automatic.service.ProductService;
@Controller
public class ProductController {
	@Autowired
	private ProductService productService;
	@RequestMapping("/product")
	public String selectProductList(ModelMap map){
		List<Product> productList = productService.selectProductList();
		map.addAttribute("productList", productList);
		return "index";
	}

}
