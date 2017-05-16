package com.mycompany.myapp.service;

import com.mycompany.myapp.dao.Exam10Dao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class Exam10ServiceImpl implements Exam10Service {
	
	@Autowired
	private Exam10Dao exam10Dao;
	
	@Override
	public void join(){
		System.out.println("join() 실행");
		exam10Dao.insert();
	}
	
	@Override
	public void login(){
		System.out.println("login() 실행");
		exam10Dao.select();
	}
}
// 인터페이스, 구현 객체 왜 따로 만듦?
// 구현 클래스가 다른 클래스로 대치되어 서비스 구현하고 있다면 컨트롤러는 수정할 필요가 없음.
// 서비스가 바뀌어도 컨트롤러가 바뀌지 않게 하기 위해서이다.