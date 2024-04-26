package com.green.evalBbs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.green.evalBbs.dao.IEvalBbsDao;

@Controller
public class MyController {
	
	@Autowired
	private IEvalBbsDao dao;
	
	@RequestMapping("/")
	public String root() {
		
		return "index";
	}
	
	
	@GetMapping("/list")
	public String list(Model model) {
		
		model.addAttribute("list", dao.getList());
		
		return "list";
	}
	
	@GetMapping("/writeForm")
	public String writeForm() {
		
		return "writeForm"; 
	}
	
	@PostMapping("/write")
	public String write(@RequestParam("title") String title, @RequestParam("content") String content, @RequestParam("writer") String writer, @RequestParam("regdate") String regdate) {
		
		dao.write(title, content, writer, regdate);
		
		return "redirect:list";
	}

}
