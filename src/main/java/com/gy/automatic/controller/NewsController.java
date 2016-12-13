package com.gy.automatic.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gy.automatic.model.News;
import com.gy.automatic.service.NewsService;

@Controller
public class NewsController {
	@Autowired
	private NewsService newsService;
	
	@RequestMapping("/news")
	public String selectNewsList(Model model){
		List<News> newsList = newsService.selectNewsList();
		model.addAttribute("newsList", newsList);
		return "news";
	}
	@RequestMapping("/news/{id}")
	public String selectNewsById(@PathVariable Integer id,Model model){
		News news = newsService.selectNewsById(id);
		model.addAttribute("news", news);
		return "newsInfo";
	}
	
}
