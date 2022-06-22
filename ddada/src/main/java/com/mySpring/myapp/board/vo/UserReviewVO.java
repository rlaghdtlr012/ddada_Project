package com.mySpring.myapp.board.vo;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("userReviewVO")
public class UserReviewVO {
	private String REVIEW_NO;
	private int PARENT_NO;
	private String LEC_NAME;
	private String REVIEW_TITLE;
	private String REVIEW_CONTENT;
	private Date  REVIEW_DATE;
	private String STUDENT_ID;
	
	private int RATING;
	
	public int getRATING() {
		return RATING;
	}

	public void setRATING(int rATING) {
		RATING = rATING;
	}

	public int getPARENT_NO() {
		return PARENT_NO;
	}

	public void setPARENT_NO(int pARENT_NO) {
		PARENT_NO = pARENT_NO;
	}

	public String getREVIEW_NO() {
		return REVIEW_NO;
	}

	public void setREVIEW_NO(String rEVIEW_NO) {
		REVIEW_NO = rEVIEW_NO;
	}

	public String getLEC_NAME() {
		return LEC_NAME;
	}

	public void setLEC_NAME(String lEC_NAME) {
		LEC_NAME = lEC_NAME;
	}

	public UserReviewVO() {
		System.out.println("UserReviewVO 생성");
	}

	public String getREVIEW_TITLE() {
		return REVIEW_TITLE;
	}

	public void setREVIEW_TITLE(String rEVIEW_TITLE) {
		REVIEW_TITLE = rEVIEW_TITLE;
	}

	public String getREVIEW_CONTENT() {
		return REVIEW_CONTENT;
	}

	public void setREVIEW_CONTENT(String rEVIEW_CONTENT) {
		REVIEW_CONTENT = rEVIEW_CONTENT;
	}

	public Date getREVIEW_DATE() {
		return REVIEW_DATE;
	}

	public void setREVIEW_DATE(Date rEVIEW_DATE) {
		REVIEW_DATE = rEVIEW_DATE;
	}

	public String getSTUDENT_ID() {
		return STUDENT_ID;
	}

	public void setSTUDENT_ID(String sTUDENT_ID) {
		STUDENT_ID = sTUDENT_ID;
	}
	
	
}
