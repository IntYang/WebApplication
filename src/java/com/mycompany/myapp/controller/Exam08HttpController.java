package com.mycompany.myapp.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/http")
public class Exam08HttpController {
	@RequestMapping(value="/exam01", method=RequestMethod.GET)
	public String exam01() {
		System.out.println("exam01Get()...");
		return "http/exam01";
	}	
	@RequestMapping(value="/exam01", method=RequestMethod.POST)
	public String exam01POST() {
		System.out.println("exam01Post()...");
		return "http/exam01";
	}
	
	@RequestMapping(value="/exam02")
	public String exam02(HttpServletRequest request, Model model) {	
		String method = request.getMethod();
		String uri = request.getRequestURI();
		String queryString = request.getQueryString();
		String type = request.getParameter("type");
		int bno = Integer.parseInt(request.getParameter("bno"));
		String[] hobby= request.getParameterValues("hobby");
		
		String userAgent = request.getHeader("User-Agent");
		if(userAgent.contains("MSIE") || userAgent.contains("Trident")) {
			userAgent = "IE11 이하 브라우저";
		} else if(userAgent.contains("Edge")){
			userAgent = "엣지 브라우저";
		} else if(userAgent.contains("Chrome")){
			userAgent = "크롬 브라우저";
		}
		
		model.addAttribute("method", method);
		model.addAttribute("uri", uri);
		model.addAttribute("queryString", queryString);
		model.addAttribute("type", type);
		model.addAttribute("bno", bno);
		model.addAttribute("userAgent", userAgent);
		model.addAttribute("hobby", hobby);
		return "http/exam02";
	}
	
	@RequestMapping("/exam03")
	public String exam03(
					@RequestParam String type,
					@RequestParam("bno") int boardNo,
					String[] hobby,
					@RequestHeader("User-Agent") String userAgent,
					Model model) {
		model.addAttribute("type", type);
		model.addAttribute("bno", boardNo);
		model.addAttribute("userAgent", userAgent);
		model.addAttribute("hobby", hobby);
		return "http/exam02";
	}
}
