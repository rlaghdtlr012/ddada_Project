package com.mySpring.myapp.member.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("lectureVO")
public class LectureVO {
	   private int lec_num;
	   private String lec_name;
	   private int cert_num;
	   private String cert_name;
	   
	   private String cert_testtype;
	   private int subject_code;
	   private String subject_name;
	   
	   private int instr_num;
	   private String instr_name;
	   private int lec_fee;
	   
	   private int lec_date; // String
	   private String book_num;
	   private String book_name;
	   
	   private String cur_subj;
	   private String cur_subt;
	   private String cur_kinds;
	   private int cur_num;

	   private String INSTR_IMG;
	   private String LEC_SUB_NAME;
	   
	   // ¼ö¹Î Ãß°¡
	   private String STUDENT_ID;
	   
	   public String getINSTR_IMG() {
		      return INSTR_IMG;
		   }

	   public void setINSTR_IMG(String iNSTR_IMG) {
	      INSTR_IMG = iNSTR_IMG;
	   }
	   
	   public String getSTUDENT_ID() {
		return STUDENT_ID;
	}

	public void setSTUDENT_ID(String sTUDENT_ID) {
		STUDENT_ID = sTUDENT_ID;
	}
	
	 public String getLEC_SUB_NAME() {
         return LEC_SUB_NAME;
      }

      public void setLEC_SUB_NAME(String LEC_SUB_NAME) {
         this.LEC_SUB_NAME = LEC_SUB_NAME;
      }

 
	   public String getBook_num() {
		   return book_num;
	   }

		public void setBook_num(String book_num) {
			this.book_num = book_num;
		}

	   public String getBook_name() {
	      return book_name;
	   }

	   public void setBook_name(String book_name) {
	      this.book_name = book_name;
	   }

	   public int getCert_num() {
	      return cert_num;
	   }

	   public void setCert_num(int cert_num) {
	      this.cert_num = cert_num;
	   }

	   public int getSubject_code() {
	      return subject_code;
	   }

	   public void setSubject_code(int subject_code) {
	      this.subject_code = subject_code;
	   }

	   public String getCert_testtype() {
	      return cert_testtype;
	   }

	   public void setCert_testtype(String cert_testtype) {
	      this.cert_testtype = cert_testtype;
	   }

	   public String getCert_name() {
	      return cert_name;
	   }

	   public void setCert_name(String cert_name) {
	      this.cert_name = cert_name;
	   }

	   public String getSubject_name() {
	      return subject_name;
	   }

	   public void setSubject_name(String subject_name) {
	      this.subject_name = subject_name;
	   }

	   public int getCur_num() {
	      return cur_num;
	   }

	   public void setCur_num(int cur_num) {
	      this.cur_num = cur_num;
	   }

	   public int getLec_num() {
	      return lec_num;
	   }
	   
	   public String getLec_name() {
	      return lec_name;
	   }

	   public void setLec_name(String lec_name) {
	      this.lec_name = lec_name;
	   }

	   public int getInstr_num() {
	      return instr_num;
	   }
	   public void setInstr_num(int instr_num) {
	      this.instr_num = instr_num;
	   }
	   public String getInstr_name() {
	      return instr_name;
	   }
	   public void setInstr_name(String instr_name) {
	      this.instr_name = instr_name;
	   }
	   public int getLec_fee() {
	      return lec_fee;
	   }
	   public void setLec_fee(int lec_fee) {
	      this.lec_fee = lec_fee;
	   }
	   public void setLec_num(int lec_num) {
	      this.lec_num = lec_num;
	   }
	   
	   public int getLec_date() {
	      return lec_date;
	   }
	   public void setLec_date(int lec_date) {
	      this.lec_date = lec_date;
	   }

	   public String getCur_subj() {
	      return cur_subj;
	   }

	   public void setCur_subj(String cur_subj) {
	      this.cur_subj = cur_subj;
	   }

	   public String getCur_subt() {
	      return cur_subt;
	   }

	   public void setCur_subt(String cur_subt) {
	      this.cur_subt = cur_subt;
	   }

	   public String getCur_kinds() {
	      return cur_kinds;
	   }

	   public void setCur_kinds(String cur_kinds) {
	      this.cur_kinds = cur_kinds;
	   }
}
