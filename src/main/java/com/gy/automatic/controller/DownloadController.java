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
		model.addAttribute("download_cate", "0");
		return "download";
	}
	
	@RequestMapping("/download/{type}")
	public String selectDownloadById(@PathVariable String type,Model model,ModelMap map){
		if("0".equals(type)){
			List<PdfInfo> pdfList = downloadService.selectDownloadList();
			model.addAttribute("pdfList", pdfList);
		}else{
			List<PdfInfo> pdfList = downloadService.selectDownloadListByType(type);
			model.addAttribute("pdfList", pdfList);
		}
		model.addAttribute("download_cate", type);
		return "download";
	}
	
//	@RequestMapping("showImageOrDownloadPdf/{id}/{type}")
//    public void showImageOrDownloadPdf(HttpServletRequest request,HttpServletResponse response,@PathVariable String id,@PathVariable String type){//pic_addr:图片路径(d:\\upload\\a.jpg)
//		List<PdfInfo> pdfList = downloadService.selectDownloadListById(id);
//		String endWith = addr.substring(addr.length()-4, addr.length());
//        //1.设置文件ContentType类型，这样设置，会自动判断下载文件类型  
//		response.setContentType("multipart/form-data"); 
//		if(".pdf".equals(endWith.toLowerCase())){
////			0response.setContentType("application/pdf");
//			String[] temp = addr.split("\\\\");
//			String pdfName = temp[temp.length-1];
//			response.setHeader("content-disposition", "attachment; filename="+pdfName);
////		}else{
////			response.setContentType("image/*");
//		}
//        FileInputStream fis = null; 
//        OutputStream os = null; 
//        try {
//         fis = new FileInputStream(addr);
//         os = response.getOutputStream();
//            int count = 0;
//            byte[] buffer = new byte[1024*8];
//            while ( (count = fis.read(buffer)) != -1 ){
//             os.write(buffer, 0, count);
//             os.flush();
//            }
//        }catch(Exception e){
//         e.printStackTrace();
//        }finally {
//            try {
//				fis.close();
//				os.close();
//			} catch (IOException e) {
//			e.printStackTrace();
//			}
//        }
//		}
	}
