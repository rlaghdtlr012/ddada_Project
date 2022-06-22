package com.mySpring.myapp.board.vo;

import org.springframework.stereotype.Component;

@Component("BoardVO")
public class BoardVO {
	private int cert_num;
	private String cert_name;
	private String cert_grade;
	private String cert_testType;
	private String subject_code;
	private String subject_name;
	private String cert_company;
	private String cert_testDate;
	private int cert_fee;
	private String cert_passratio;
	
	public BoardVO(){
		System.out.println("BoardVO 생성");
	}
	public int getCert_num() {
		return cert_num;
	}
	public void setCert_num(int cert_num) {
		this.cert_num = cert_num;
	}
	public String getCert_name() {
		return cert_name;
	}
	public void setCert_name(String cert_name) {
		this.cert_name = cert_name;
	}
	public String getCert_grade() {
		return cert_grade;
	}
	public void setCert_grade(String cert_grade) {
		this.cert_grade = cert_grade;
	}
	public String getCert_testType() {
		return cert_testType;
	}
	public void setCert_testType(String cert_testType) {
		this.cert_testType = cert_testType;
	}
	public String getSubject_code() {
		return subject_code;
	}
	public void setSubject_code(String subject_code) {
		this.subject_code = subject_code;
	}
	public String getSubject_name() {
		return subject_name;
	}
	public void setSubject_name(String subject_name) {
		this.subject_name = subject_name;
	}
	public String getCert_company() {
		return cert_company;
	}
	public void setCert_company(String cert_company) {
		this.cert_company = cert_company;
	}
	public String getCert_testDate() {
		return cert_testDate;
	}
	public void setCert_testDate(String cert_testDate) {
		this.cert_testDate = cert_testDate;
	}
	public int getCert_fee() {
		return cert_fee;
	}
	public void setCert_fee(int cert_fee) {
		this.cert_fee = cert_fee;
	}
	public String getCert_passratio() {
		return cert_passratio;
	}
	public void setCert_passratio(String cert_passratio) {
		this.cert_passratio = cert_passratio;
	}
	
}
