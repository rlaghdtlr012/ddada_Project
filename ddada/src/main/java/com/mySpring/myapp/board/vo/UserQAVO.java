package com.mySpring.myapp.board.vo;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.sql.Date;

import org.springframework.stereotype.Component;

/*
 	QA_TITLE VARCHAR2(100),
    QA_CONTENT VARCHAR2(2000) NOT NULL,
    QA_REGDATE VARCHAR2(100) default SYSDATE,
    ID varchar2(10) NOT NULL
*/
@Component("userQAVO")
public class UserQAVO {
	private String QA_TITLE;
	private String QA_CONTENT;
	private Date QA_REGDATE;
	private String STUDENT_ID;
	
	public UserQAVO() {
		System.out.println("UserQAVO »ý¼º");
	}


	public String getQA_TITLE() {
		return QA_TITLE;
	}


	public void setQA_TITLE(String qA_TITLE) {
		QA_TITLE = qA_TITLE;
	}


	public String getQA_CONTENT() {
		return QA_CONTENT;
	}


	public void setQA_CONTENT(String qA_CONTENT) {
		QA_CONTENT = qA_CONTENT;
	}


	public Date getQA_REGDATE() {
		return QA_REGDATE;
	}


	public void setQA_REGDATE(Date qA_REGDATE) {
		QA_REGDATE = qA_REGDATE;
	}


	public String getSTUDENT_ID() {
		return STUDENT_ID;
	}


	public void setSTUDENT_ID(String sTUDENT_ID) {
		STUDENT_ID = sTUDENT_ID;
	}
	
	
}