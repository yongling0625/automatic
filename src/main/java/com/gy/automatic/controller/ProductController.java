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
public class ProductController {
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value="/{categoryId}",method=RequestMethod.GET)
	public String selectProductList(@PathVariable Integer categoryId,ModelMap map){
		List<Product> productList = productService.selectProductList(categoryId);
		map.addAttribute("productList", productList);
		map.addAttribute("product_cate", categoryId);
		return "product";
	}
	
	@RequestMapping(value="/{categoryId}/{productId}")
	public String selectProductListById(@PathVariable Integer productId,@PathVariable Integer categoryId,ModelMap map){
		Product product = productService.selectProductById(productId);
		product.setOverview(product.getOverview().replaceAll("<br>", "\r\n"));
		product.setCoreParameter(product.getCoreParameter().replaceAll("<br>", "\r\n"));
		map.addAttribute("product", product);
		map.addAttribute("product_cate", categoryId);
		return "productInfo";
	}
	
}
