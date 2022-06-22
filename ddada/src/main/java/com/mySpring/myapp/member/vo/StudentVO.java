package com.mySpring.myapp.member.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("studentVO")
public class StudentVO {
	private String STUDENT_ID;
	private String STUDENT_PWD;
	private String STUDENT_NAME;
	private String STUDENT_PHONE;
	private String STUDENT_EMAIL;
	private String STUDENT_ADDR;
	private Date STUDENT_JOINDATE;

	public StudentVO() {
		
	}
	
	public StudentVO(String sTUDENT_ID, String sTUDENT_PWD, String sTUDENT_NAME, String sTUDENT_EMAIL, String sTUDENT_PHONE, String sTUDENT_ADDR) {
	this.STUDENT_ID = sTUDENT_ID;
	this.STUDENT_PWD = sTUDENT_PWD;
	this.STUDENT_NAME = sTUDENT_NAME;
	this.STUDENT_EMAIL = sTUDENT_EMAIL;
	this.STUDENT_PHONE = sTUDENT_PHONE;
	this.STUDENT_ADDR = sTUDENT_ADDR;
}

	public String getSTUDENT_ID() {
		return STUDENT_ID;
	}

	public void setSTUDENT_ID(String sTUDENT_ID) {
		STUDENT_ID = sTUDENT_ID;
	}

	public String getSTUDENT_PWD() {
		return STUDENT_PWD;
	}

	public void setSTUDENT_PWD(String sTUDENT_PWD) {
		STUDENT_PWD = sTUDENT_PWD;
	}

	public String getSTUDENT_NAME() {
		return STUDENT_NAME;
	}

	public void setSTUDENT_NAME(String sTUDENT_NAME) {
		STUDENT_NAME = sTUDENT_NAME;
	}

	public String getSTUDENT_PHONE() {
		return STUDENT_PHONE;
	}

	public void setSTUDENT_PHONE(String sTUDENT_PHONE) {
		STUDENT_PHONE = sTUDENT_PHONE;
	}

	public String getSTUDENT_EMAIL() {
		return STUDENT_EMAIL;
	}

	public void setSTUDENT_EMAIL(String sTUDENT_EMAIL) {
		STUDENT_EMAIL = sTUDENT_EMAIL;
	}

	public String getSTUDENT_ADDR() {
		return STUDENT_ADDR;
	}

	public void setSTUDENT_ADDR(String sTUDENT_ADDR) {
		STUDENT_ADDR = sTUDENT_ADDR;
	}

	public Date getSTUDENT_JOINDATE() {
		return STUDENT_JOINDATE;
	}

	public void setSTUDENT_JOINDATE(Date sTUDENT_JOINDATE) {
		STUDENT_JOINDATE = sTUDENT_JOINDATE;
	}
}


