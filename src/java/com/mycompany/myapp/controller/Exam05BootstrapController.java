
package com.mycompany.myapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Exam05BootstrapController {
	
	@RequestMapping("/bootstrap/exam01")
	public String bootstrapExam01() {
		return "bootstrap/exam01";
	}	
	
	@RequestMapping("/bootstrap/exam02")
	public String bootstrapExam02() {
		return "bootstrap/exam02";
	}
	
	@RequestMapping("/bootstrap/exam03")
	public String bootstrapExam03() {
		return "bootstrap/exam03";
	}		
	
}
