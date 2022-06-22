package com.mySpring.myapp.member.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

/*
CREATE TABLE test_member(
    id varchar2(10) PRIMARY KEY,
    pwd varchar2(10),
    name varchar2(50),
    email varchar2(50),
    phone varchar2(20),
    address varchar2(50),
    joinDate date DEFAULT SYSDATE
)

INSERT INTO test_member
VALUES('testid1', '1111', '첫번째', 'first@gmail.com', '010-1111-9999', '경기도 안산시', sysdate);

INSERT INTO test_member
VALUES('testid2', '2222', '두번째', 'second@gmail.com', '010-2222-8888', '인천 연수구', sysdate);

INSERT INTO test_member
VALUES('testid3', '3333', '세번째', 'third@gmail.com', '010-3333-7777', '서울 서초구', sysdate);
*/

@Component("memberVOTest")
public class MemberVOTest {
	private String id;
	private String pwd;
	private String name;
	private String email;
	private String phone;
	private String address;
	private Date joinDate;

	public MemberVOTest() {
		
	}

	public MemberVOTest(String id, String pwd, String name, String email, String phone, String address) {
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.address = address;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}

}
