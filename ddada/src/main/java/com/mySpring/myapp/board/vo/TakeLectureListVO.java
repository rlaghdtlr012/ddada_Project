package com.mySpring.myapp.board.vo;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.sql.Date;

import org.springframework.stereotype.Component;


//CREATE TABLE TAKE_LECTURE_LIST (
//  LEC_NUM VARCHAR2(20) PRIMARY KEY,
//  LEC_NAME VARCHAR2(50) NOT NULL,
//  INSTR_NUM VARCHAR2(10),
//  INSTR_NAME VARCHAR2(30),
//  
//  LEC_FEE NUMBER(20) default 0, -- TO_CHAR(LEC_FEE , '999,999,999')
//  LEC_DATE NUMBER(10),
//  LEC_STARTDATE DATE DEFAULT SYSDATE,
//  LEC_ENDDATE DATE, -- MAPPER의 쿼리문에서 이렇게 INSERT 하기 ; LEC_STARTDATE + TO_NUMBER(LEC_DATE)
//  LEC_PROGRESS NUMBER(10) default 0,
//  LEC_SCORE NUMBER(10) default 0,
//
//  BOOK_NUM VARCHAR2(10),
//  BOOK_NAME VARCHAR2(50),
//  LEC_IMAGE VARCHAR2(100),
//  STUDENT_ID varchar2(15),
//  CONSTRAINT FK_SID_TLEC FOREIGN KEY (STUDENT_ID) REFERENCES STUDENT (STUDENT_ID)
//);

@Component("takeLectureListVO")
public class TakeLectureListVO {
	private String LEC_NUM;
	private String LEC_NAME;
	private String INSTR_NUM;
	private String INSTR_NAME;
	
	private int LEC_FEE;
	private int LEC_DATE;
	private Date LEC_STARTDATE;
	private Date LEC_ENDDATE;
	private int LEC_PROGRESS;
	private int LEC_SCORE;
	
	private String BOOK_NUM;
	private String BOOK_NAME;
	private String LEC_IMAGE;
	private String STUDENT_ID;
	
	private double AVG_LEC_PROGRESS;
	
	public TakeLectureListVO() {
		System.out.println("TakeLectureListVO 생성");
	}

	public String getLEC_NUM() {
		return LEC_NUM;
	}

	public void setLEC_NUM(String lEC_NUM) {
		LEC_NUM = lEC_NUM;
	}

	public String getLEC_NAME() {
		return LEC_NAME;
	}

	public void setLEC_NAME(String lEC_NAME) {
		LEC_NAME = lEC_NAME;
	}

	public String getINSTR_NUM() {
		return INSTR_NUM;
	}

	public void setINSTR_NUM(String iNSTR_NUM) {
		INSTR_NUM = iNSTR_NUM;
	}

	public String getINSTR_NAME() {
		return INSTR_NAME;
	}

	public void setINSTR_NAME(String iNSTR_NAME) {
		INSTR_NAME = iNSTR_NAME;
	}

	public int getLEC_FEE() {
		return LEC_FEE;
	}

	public void setLEC_FEE(int lEC_FEE) {
		LEC_FEE = lEC_FEE;
	}

	public int getLEC_DATE() {
		return LEC_DATE;
	}

	public void setLEC_DATE(int lEC_DATE) {
		LEC_DATE = lEC_DATE;
	}

	public Date getLEC_STARTDATE() {
		return LEC_STARTDATE;
	}

	public void setLEC_STARTDATE(Date lEC_STARTDATE) {
		LEC_STARTDATE = lEC_STARTDATE;
	}

	public Date getLEC_ENDDATE() {
		return LEC_ENDDATE;
	}

	public void setLEC_ENDDATE(Date lEC_ENDDATE) {
		LEC_ENDDATE = lEC_ENDDATE;
	}

	public int getLEC_PROGRESS() {
		return LEC_PROGRESS;
	}

	public void setLEC_PROGRESS(int lEC_PROGRESS) {
		LEC_PROGRESS = lEC_PROGRESS;
	}

	public int getLEC_SCORE() {
		return LEC_SCORE;
	}

	public void setLEC_SCORE(int lEC_SCORE) {
		LEC_SCORE = lEC_SCORE;
	}

	public String getBOOK_NUM() {
		return BOOK_NUM;
	}

	public void setBOOK_NUM(String bOOK_NUM) {
		BOOK_NUM = bOOK_NUM;
	}

	public String getBOOK_NAME() {
		return BOOK_NAME;
	}

	public void setBOOK_NAME(String bOOK_NAME) {
		BOOK_NAME = bOOK_NAME;
	}

	public String getLEC_IMAGE() {
		return LEC_IMAGE;
	}

	public void setLEC_IMAGE(String lEC_IMAGE) {
		LEC_IMAGE = lEC_IMAGE;
	}

	public String getSTUDENT_ID() {
		return STUDENT_ID;
	}

	public void setSTUDENT_ID(String sTUDENT_ID) {
		STUDENT_ID = sTUDENT_ID;
	}

	public double getAVG_LEC_PROGRESS() {
		return AVG_LEC_PROGRESS;
	}

	public void setAVG_LEC_PROGRESS(double aVG_LEC_PROGRESS) {
		AVG_LEC_PROGRESS = aVG_LEC_PROGRESS;
	}
	
	
}