package com.gy.automatic.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tk.mybatis.mapper.entity.Example;
import tk.mybatis.mapper.entity.Example.Criteria;

import com.gy.automatic.mapper.ProductMapper;
import com.gy.automatic.model.Product;
import com.gy.automatic.service.ProductService;
@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductMapper productMapper;

	public List<Product> selectProductList(Integer categoryId) {
		Example example = new Example(Product.class);
		example.createCriteria().andEqualTo("categoryId", categoryId);
		return productMapper.selectByExample(example);
	}

	@Override
	public Product selectProductById(Integer productId) {
		return productMapper.selectByPrimaryKey(productId);
	}

}
