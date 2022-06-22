package com.mySpring.myapp.board.vo;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.sql.Date;

import org.springframework.stereotype.Component;

public class ReplyVO {
	   private Integer rno;                  //��۹�ȣ
	   private Integer LicenseTalkNO;      //�Խñ� ��ȣ
	   private String replytext;            //��� ����
	   private String replyer;               //��� �ۼ���
	   private String userName;            //��� �ۼ��� �̸�
	   private Date regdate;               //��� �ۼ�����
	   private Date updatedate;         //��� ��������
	   private String secretReply;         // ��� ���� ���� �߰�
	   private String writer;               // �Խñ��� �ۼ��� �߰�
	   
	   
	   
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