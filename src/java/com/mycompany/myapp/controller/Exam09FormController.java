package com.mycompany.myapp.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Arrays;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class Exam09FormController {
	@Autowired
	private ServletContext servletContext;
	
	@RequestMapping(value="/form/exam01", method=RequestMethod.GET)
	public String joinFrom(){
		return "form/exam01";
	}
	
	@RequestMapping(value="/form/exam01", method=RequestMethod.POST)
	public String join(String mid, String mname, String mpassword, @RequestParam(defaultValue = "0") int mage, String[] mskill, String mbirth){
		System.out.println("mid: " + mid);
		System.out.println("mname: " + mname);
		System.out.println("mpassword: " + mpassword);
		System.out.println("mage: " + mage);
		System.out.println("mskill: " + Arrays.toString(mskill));
		System.out.println("mbirth: " + mbirth);
		return "form/exam01";
	}
	
	@RequestMapping(value="/form/exam02", method=RequestMethod.GET)
	public String joinFrom2(){
		return "form/exam02";
	}
	@RequestMapping(value="/form/exam02", method=RequestMethod.POST)
	public String join2(String mid, String mname, String mpassword, @RequestParam(defaultValue = "0") int mage, String[] mskill, String mbirth, MultipartFile attach)throws Exception{
		
		//파일의 정보 얻기
		
		String fileName = attach.getOriginalFilename();
		String contentType = attach.getContentType();
		long fileSize =  attach.getSize();
		
		//파일을 서버 하드디스크에 저장
		String realPath = servletContext.getRealPath("/WEB-INF/upload/" + fileName);
		File file =new File(realPath);
		attach.transferTo(file);
		
		System.out.println("fileName: "+fileName);
		System.out.println("contentType: "+contentType);
		System.out.println("fileSize: "+fileSize);
				
		return "form/exam02";
	}
	
	@RequestMapping("/file/exam03")
	public void download(HttpServletResponse response, @RequestHeader("User-Agent") String userAgent) throws IOException{ // 파일을 다운로드 할 때만 리턴 타입 void
	//	return "file/download";
	//응답 HTTP 헤더행을 추가 
	//1) 파일의 이름(옵션) // 없으면 파일로 저장이 안됨
		String fileName = "펭귄.jpg";
		String encodingFileName;
			if(userAgent.contains("MSIE") || userAgent.contains("Trident") || userAgent.contains("Edge")) {
				encodingFileName = URLEncoder.encode(fileName, "UTF-8");
			 System.out.println(encodingFileName);
		} else {
			encodingFileName = new String(fileName.getBytes("UTF-8"), "ISO-8859-1");
		}
			
			
		
	  response.addHeader("Content-Disposition","attachment; filename=\"" +fileName+ "\""); // 헤더명 , 헤더 값(첨부파일이니까 저장 다이얼로그 를 띄워야 한다)
	//2) 파일의 종류
		response.addHeader("Content-Type", "image/jpeg");
	//3) 파일 사이즈(옵션)
		File file = new File(servletContext.getRealPath("/WEB-INF/upload/펭귄.jpg"));
		long fileSize = file.length();
		response.addHeader("Content-Length", String.valueOf(fileSize));
	
//응답 HHTP 본문에 파일 데이터를 출력
		OutputStream os = response.getOutputStream();
		FileInputStream fis = new FileInputStream(file);
		FileCopyUtils.copy(fis,os);
		
		os.flush();
		fis.close();
		os.close();
	}
}
