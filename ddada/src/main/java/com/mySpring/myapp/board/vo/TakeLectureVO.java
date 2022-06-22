package com.mySpring.myapp.board.vo;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("takeLectureVO")
public class TakeLectureVO {
	private int LEC_NUM;
	private String LEC_NAME;
	private int INSTR_NUM;
	private String INSTR_NAME;
	private Date LEC_STARTDATE;
	private Date LEC_ENDDATE;
	private int LEC_PROGRESS;
	private String BOOK_NAME;
	private String ID;
	private int LEC_SCORE;
	private String LEC_IMAGE;
	private double AVG_LEC_PROGRESS;
	
	public TakeLectureVO() {
		System.out.println("TakeLectureVO »ý¼º");
	}

	public int getLEC_NUM() {
		return LEC_NUM;
	}

	public void setLEC_NUM(int lEC_NUM) {
		LEC_NUM = lEC_NUM;
	}

	public String getLEC_NAME() {
		return LEC_NAME;
	}

	public void setLEC_NAME(String lEC_NAME) {
		LEC_NAME = lEC_NAME;
	}

	public int getINSTR_NUM() {
		return INSTR_NUM;
	}

	public void setINSTR_NUM(int iNSTR_NUM) {
		INSTR_NUM = iNSTR_NUM;
	}

	public String getINSTR_NAME() {
		return INSTR_NAME;
	}

	public void setINSTR_NAME(String iNSTR_NAME) {
		INSTR_NAME = iNSTR_NAME;
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

	public String getBOOK_NAME() {
		return BOOK_NAME;
	}

	public void setBOOK_NAME(String bOOK_NAME) {
		BOOK_NAME = bOOK_NAME;
	}

	public String getID() {
		return ID;
	}

	public void setID(String iD) {
		ID = iD;
	}

	public int getLEC_SCORE() {
		return LEC_SCORE;
	}

	public void setLEC_SCORE(int lEC_SCORE) {
		LEC_SCORE = lEC_SCORE;
	}

	public String getLEC_IMAGE() {
		return LEC_IMAGE;
	}

	public void setLEC_IMAGE(String lEC_IMAGE) {
		LEC_IMAGE = lEC_IMAGE;
	}

	public double  getAVG_LEC_PROGRESS() {
		return AVG_LEC_PROGRESS;
	}

	public void setAVG_LEC_PROGRESS(double aVG_LEC_PROGRESS) {
		AVG_LEC_PROGRESS = aVG_LEC_PROGRESS;
	}
	
//	public int getLevel() { return level; }
//	  
//	public void setLevel(int level) { this.level = level; }

//	public String getImageFileName() {
//		return imageFileName;
//	}
//	public void setImageFileName(String imageFileName) {
//		try {
//			if(imageFileName!= null && imageFileName.length()!=0) {
//				this.imageFileName = URLEncoder.encode(imageFileName,"UTF-8");
//			}
//		} catch (UnsupportedEncodingException e) {
//			e.printStackTrace();
//		}
//	}


	
	
}