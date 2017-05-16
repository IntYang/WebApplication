
package com.mycompany.myapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class Exam02HtmlController {
	@RequestMapping("/html/exam01")
	public String html() {
		return "html/exam01";
	}
}
