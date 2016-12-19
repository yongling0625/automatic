package com.gy.automatic.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gy.automatic.model.PdfInfo;
import com.gy.automatic.service.DownloadService;

@Controller
public class DownloadController {
	@Autowired
	private DownloadService downloadService;
	
	@RequestMapping("/download")
	public String selectNewsList(Model model){
		List<PdfInfo> pdfList = downloadService.selectDownloadList();
		model.addAttribute("pdfList", pdfList);
		return "download";
	}
	@RequestMapping("/download/{id}")
	public String selectDownloadById(@PathVariable String id,Model model,ModelMap map){
//		News news = newsService.selectNewsById(id);
//		model.addAttribute("news", news);
		map.addAttribute("download_cate", id);
		return "download";
	}
	
}
