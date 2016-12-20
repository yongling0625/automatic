package com.gy.automatic.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gy.automatic.mapper.NewsMapper;
import com.gy.automatic.model.News;
import com.gy.automatic.service.NewsService;
@Service
public class NewsServiceImpl implements NewsService{
	@Autowired
	private NewsMapper newsMapper;
	
	@Override
	public List<News> selectNewsList() {
		return newsMapper.selectAll();
	}

	@Override
	public News selectNewsById(Integer id) {
		return newsMapper.selectByPrimaryKey(id);
	}

}
