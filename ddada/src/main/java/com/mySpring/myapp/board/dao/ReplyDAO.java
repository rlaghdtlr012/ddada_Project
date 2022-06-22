package com.mySpring.myapp.board.dao;

import java.util.List;

import com.mySpring.myapp.board.vo.ReplyVO;

public interface ReplyDAO {
   //��� ���
   public List<ReplyVO> list(Integer LicenseTalkNO, int start, int end);
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