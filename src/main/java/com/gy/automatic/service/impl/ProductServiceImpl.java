package com.gy.automatic.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gy.automatic.mapper.ProductMapper;
import com.gy.automatic.model.Product;
import com.gy.automatic.service.ProductService;
@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductMapper productMapper;

	public List<Product> selectProductList() {
		return productMapper.selectAll();
	}

}
