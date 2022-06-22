package com.mySpring.myapp.board.vo;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("LicenseTalkVO")
public class LicenseTalkVO {
   
   private int LICENSETALKNO;
   private String TITLE;
   private String CONTENT;
   private String WRITER;
   private String userName;
   private Date REGDATE;
   private int VIEWCNT;
   private int recnt;
   private String show;
   private String[] files;
//   private String STUDENT_NAME;
   
   public int getLICENSETALKNO() {
      return LICENSETALKNO;
   }
   public String getUserName() {
      return userName;
   }
   public void setUserName(String userName) {
      this.userName = userName;
   }
   public int getRecnt() {
      return recnt;
   }
   public void setRecnt(int recnt) {
      this.recnt = recnt;
   }
   public String getShow() {
      return show;
   }
   public void setShow(String show) {
      this.show = show;
   }
   public String[] getFiles() {
      return files;
   }
   public void setFiles(String[] files) {
      this.files = files;
   }
   public void setLICENSETALKNO(int lICENSETALKNO) {
      LICENSETALKNO = lICENSETALKNO;
   }
   public String getTITLE() {
      return TITLE;
   }
   public void setTITLE(String tITLE) {
      TITLE = tITLE;
   }
   public String getCONTENT() {
      return CONTENT;
   }
   public void setCONTENT(String cONTENT) {
      CONTENT = cONTENT;
   }
   public String getWRITER() {
      return WRITER;
   }
   public void setWRITER(String wRITER) {
      WRITER = wRITER;
   }
   public Date getREGDATE() {
      return REGDATE;
   }
   public void setREGDATE(Date rEGDATE) {
      REGDATE = rEGDATE;
   }
   public int getVIEWCNT() {
      return VIEWCNT;
   }
   public void setVIEWCNT(int vIEWCNT) {
      VIEWCNT = vIEWCNT;
   }
}