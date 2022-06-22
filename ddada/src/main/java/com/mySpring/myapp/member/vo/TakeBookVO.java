package com.mySpring.myapp.member.vo;

import org.springframework.stereotype.Component;

@Component("takeBookVO")
public class TakeBookVO {
   private String BOOK_NUM;
   private String BOOK_NAME;
   private int BOOK_PRICE;
   private int BOOK_PAGE;
   private String BOOK_COMPANY;
   private String LEC_NUM;
   private String LEC_NAME;
   private String INSTR_NUM;
   private String INSTR_NAME;
   private String BOOK_IMAGE;
   
   
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
   public int getBOOK_PRICE() {
      return BOOK_PRICE;
   }
   public void setBOOK_PRICE(int bOOK_PRICE) {
      BOOK_PRICE = bOOK_PRICE;
   }
   public int getBOOK_PAGE() {
      return BOOK_PAGE;
   }
   public void setBOOK_PAGE(int bOOK_PAGE) {
      BOOK_PAGE = bOOK_PAGE;
   }
   public String getBOOK_COMPANY() {
      return BOOK_COMPANY;
   }
   public void setBOOK_COMPANY(String bOOK_COMPANY) {
      BOOK_COMPANY = bOOK_COMPANY;
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
   public String getBOOK_IMAGE() {
      return BOOK_IMAGE;
   }
   public void setBOOK_IMAGE(String bOOK_IMAGE) {
      BOOK_IMAGE = bOOK_IMAGE;
   }
   
   
   
}
   
   
