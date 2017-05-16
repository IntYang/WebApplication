
package com.mycompany.myapp.controller;

import com.mycompany.myapp.dto.Board;
import com.mycompany.myapp.dto.Member;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/jsp")
public class Exam07JspController {
	@RequestMapping("/exam01")
	public String exam01() {
		return "jsp/exam01";
	}
	
	@RequestMapping("/exam02")
	public String exam02() {
		return "jsp/exam02";
	}
	
	@RequestMapping("/exam03")
	public String exam03() {
		return "jsp/exam03";
	}
	
	@RequestMapping("/exam04")
	public String exam04(HttpServletRequest request) {
		request.setAttribute("name2","홍길동");
		request.setAttribute("member2", new Member("홍길동", 30));
		return "jsp/exam04";
	}
	
	@RequestMapping("/exam05")
	public String exam05(Model model) {		
		model.addAttribute("name3", "홍길동");
		model.addAttribute("memeber3", new Member("홍길동", 30));
		
		Board board = new Board();
		board.setBno(1);
		board.setBtitle("오늘은 휴가 전날");
		board.setBcontent("휴가 때 과제할 내용을 준비해야합니다.");
		board.setBwriter("감자바");
		board.setBdate(new Date());
		model.addAttribute("board", board);
		
		List<Board> list = new ArrayList<Board>();
		for(int i=1; i<=10; i++){
			Board b = new Board();
			b.setBno(i);
			b.setBtitle("제목"+i);
			b.setBcontent("내용." + i);
			b.setBwriter("글쓴이" + i);
			b.setBdate(new Date());
			list.add(b);
		}
		model.addAttribute("list", list);
		
		return "jsp/exam05";
	}
	
}
