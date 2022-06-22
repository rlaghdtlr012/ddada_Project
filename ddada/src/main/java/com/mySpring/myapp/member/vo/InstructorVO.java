package com.mySpring.myapp.member.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("instructorVO")
public class InstructorVO {
   private String INSTR_NUM;
   private String INSTR_NAME;
   
   public InstructorVO() {
   }

   public InstructorVO(String INSTR_NUM, String INSTR_NAME) {
      this.INSTR_NUM = INSTR_NUM;
      this.INSTR_NAME = INSTR_NAME;

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

   
   /*
    * public String getNum() { return num; }
    * 
    * public void setNum(String num) { this.num = num; }
    */
   
}