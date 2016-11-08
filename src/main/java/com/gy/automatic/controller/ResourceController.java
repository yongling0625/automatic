package com.gy.automatic.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gy.automatic.model.Resource;
import com.gy.automatic.service.ResourceService;
import com.gy.automatic.vo.Tree;
@Controller
@RequestMapping("/resource")
public class ResourceController {
	@Autowired
	private ResourceService resourceService;
	
	@RequestMapping(value="/tree")
	@ResponseBody
	public List<Tree> selectResourceList(){
		List<Tree> resourceList = resourceService.selectResourceList();
		return resourceList;
	}
}
