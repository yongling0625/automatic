package com.gy.automatic.service;

import java.util.List;

import com.gy.automatic.model.News;

public interface NewsService {

	List<News> selectNewsList();

	News selectNewsById(Integer id);

}
