package com.mySpring.myapp.board.vo;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.sql.Date;

import org.springframework.stereotype.Component;

/*
CREATE TABLE USER_PURCHASE_LIST(
    BOOK_NUM VARCHAR2(50),
    BOOK_NAME VARCHAR2(50) NOT NULL,
    BOOK_PRICE NUMBER(38) default 0,
    BOOK_COMPANY VARCHAR2(50),
    BOOK_DATE DATE,
    STUDENT_ID varchar2(15),
    CONSTRAINT FK_SID_UPL FOREIGN KEY (STUDENT_ID) REFERENCES STUDENT (STUDENT_ID)
)
*/
@Component("userPurchaseVO")
public class UserPurchaseVO {
	private int BOOK_NUM;
	private String BOOK_NAME;
	private int BOOK_PRICE;
	private String BOOK_COMPANY;
	private Date BOOK_DATE;
	private String STUDENT_ID;
	
	public UserPurchaseVO() {
		System.out.println("UserPurchaseVO »ý¼º");
	}
	
	public int getBOOK_NUM() {
		return BOOK_NUM;
	}

	public void setBOOK_NUM(int bOOK_NUM) {
		BOOK_NUM = bOOK_NUM;
	}

	public String getBOOK_NAME() {
		return BOOK_NAME;
	}

	public void setBOOK_NAME(String bOOK_NAME) {
		BOOK_NAME = bOOK_NAME;
	}

	public int getBOOK_PRICE() {
		return BOOK_PRICE;
	}

	public void setBOOK_PRICE(int bOOK_PRICE) {
		BOOK_PRICE = bOOK_PRICE;
	}

	public String getBOOK_COMPANY() {
		return BOOK_COMPANY;
	}

	public void setBOOK_COMPANY(String bOOK_COMPANY) {
		BOOK_COMPANY = bOOK_COMPANY;
	}

	public Date getBOOK_DATE() {
		return BOOK_DATE;
	}

	public void setBOOK_DATE(Date bOOK_DATE) {
		BOOK_DATE = bOOK_DATE;
	}

	public String getSTUDENT_ID() {
		return STUDENT_ID;
	}

	public void setSTUDENT_ID(String sTUDENT_ID) {
		STUDENT_ID = sTUDENT_ID;
	}
}