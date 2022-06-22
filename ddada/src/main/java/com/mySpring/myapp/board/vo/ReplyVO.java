package com.mySpring.myapp.board.vo;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.sql.Date;

import org.springframework.stereotype.Component;

public class ReplyVO {
	   private Integer rno;                  //댓글번호
	   private Integer LicenseTalkNO;      //게시글 번호
	   private String replytext;            //댓글 내용
	   private String replyer;               //댓글 작성자
	   private String userName;            //댓글 작성자 이름
	   private Date regdate;               //댓글 작성일자
	   private Date updatedate;         //댓글 수정일자
	   private String secretReply;         // 댓글 숨김 유무 추가
	   private String writer;               // 게시글의 작성자 추가
	   
	   
	   
	   public String getSecretReply() {
	      return secretReply;
	   }
	   public void setSecretReply(String secretReply) {
	      this.secretReply = secretReply;
	   }
	   public String getWriter() {
	      return writer;
	   }
	   public void setWriter(String writer) {
	      this.writer = writer;
	   }
	   public Integer getRno() {
	      return rno;
	   }
	   public void setRno(Integer rno) {
	      this.rno = rno;
	   }
	   public Integer getLicenseTalkNO() {
	      return LicenseTalkNO;
	   }
	   public void setLicenseTalkNO(Integer licenseTalkNO) {
	      this.LicenseTalkNO = licenseTalkNO;
	   }
	   public String getReplytext() {
	      return replytext;
	   }
	   public void setReplytext(String replytext) {
	      this.replytext = replytext;
	   }
	   public String getReplyer() {
	      return replyer;
	   }
	   public void setReplyer(String replyer) {
	      this.replyer = replyer;
	   }
	   public String getUserName() {
	      return userName;
	   }
	   public void setUserName(String userName) {
	      this.userName = userName;
	   }
	   public Date getRegdate() {
	      return regdate;
	   }
	   public void setRegdate(Date regdate) {
	      this.regdate = regdate;
	   }
	   public Date getUpdatedate() {
	      return updatedate;
	   }
	   public void setUpdatedate(Date updatedate) {
	      this.updatedate = updatedate;
	   }
	   
	   

	}