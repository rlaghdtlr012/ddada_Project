package com.mySpring.myapp.board.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.mySpring.myapp.board.vo.ReplyVO;

public interface ReplyService {
   //��� ���
   public List<ReplyVO> list(Integer LicenseTalkNO, int start, int end, HttpSession session);
   //��� �Է�
   public void create(ReplyVO vo);
   //��� �󼼺���
   public ReplyVO detail(Integer rno);
   //��� ����
   public void update(ReplyVO vo);
   //��� ����
   public void delete(Integer rno);
   //��� ����
   public int count(int LicenseTalkNO);
}