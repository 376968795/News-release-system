package com.zbl.news.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zbl.news.model.News;
import com.zbl.news.service.QService;

@Controller
public class QController {
	@Autowired
	private QService qService;
	
	@RequestMapping("/main")
	public String main(Model model) throws Exception{
		ArrayList<News> listx=qService.newsList("id");
		ArrayList<News> listr=qService.newsList("clickcount");
		ArrayList<News> listp=qService.newsList("pcounts");
		model.addAttribute("listx", listx);
		model.addAttribute("listr", listr);
		model.addAttribute("listp", listp);
		return "main";
	}
}
