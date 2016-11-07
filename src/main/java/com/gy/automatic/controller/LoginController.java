package com.gy.automatic.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**
 * @description：登录退出
 */
@Controller
public class LoginController {

	private static Logger LOGGER = LoggerFactory.getLogger(LoginController.class);


	/**
	 * 登陆
	 *
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/login",method=RequestMethod.GET)
	public String index(Model model) {
		return "manage";
	}
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(){
		
		
		return "manage";
	}

}
