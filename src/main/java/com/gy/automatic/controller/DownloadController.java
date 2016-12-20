package com.gy.automatic.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	
	@RequestMapping("showImage/{pic_addr}")
    public void showImage(HttpServletRequest re,HttpServletResponse response,@PathVariable String pic_addr){//pic_addr:图片路径(d:\\upload\\a.jpg)
		pic_addr = pic_addr.replace("_","\\\\");
		pic_addr = pic_addr.replace("=",".");
		response.setContentType("image/*");
        FileInputStream fis = null; 
        OutputStream os = null; 
        try {
         fis = new FileInputStream(pic_addr);
         os = response.getOutputStream();
            int count = 0;
            byte[] buffer = new byte[1024*8];
            while ( (count = fis.read(buffer)) != -1 ){
             os.write(buffer, 0, count);
             os.flush();
            }
        }catch(Exception e){
         e.printStackTrace();
        }finally {
            try {
				fis.close();
				os.close();
			} catch (IOException e) {
			e.printStackTrace();
			}
        }
		}
	}
