package com.mySpring.myapp.board.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.mySpring.myapp.board.vo.ReplyVO;

public interface ReplyService {
   //´ñ±Û ¸ñ·Ï
   public List<ReplyVO> list(Integer LicenseTalkNO, int start, int end, HttpSession session);
   //´ñ±Û ÀÔ·Â
   public void create(ReplyVO vo);
   //´ñ±Û »ó¼¼º¸±â
   public ReplyVO detail(Integer rno);
   //´ñ±Û ¼öÁ¤
   public void update(ReplyVO vo);
   //´ñ±Û »èÁ¦
   public void delete(Integer rno);
   //´ñ±Û °¹¼ö
   public int count(int LicenseTalkNO);
}