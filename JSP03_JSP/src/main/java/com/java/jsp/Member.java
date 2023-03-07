package com.java.jsp;

public class Member {

	// 아이디, 비밀번호, 이름, 전화번호의 프로퍼티(필드) 만들기
	// 기본생성자, getter / setter 메소드 만들기
	
	private String id;
	private String pw;
	private String name;
	private String tel;
	
	public Member() {}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	
	
}
