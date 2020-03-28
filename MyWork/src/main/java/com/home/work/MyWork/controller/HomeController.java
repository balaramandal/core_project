package com.home.work.MyWork.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	@RequestMapping("/")
	public ModelAndView loadHome() {
		return new ModelAndView("home").addObject("name", "Balaram");
	}
}
