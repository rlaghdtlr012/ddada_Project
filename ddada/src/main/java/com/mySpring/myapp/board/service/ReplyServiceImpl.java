package com.mySpring.myapp.board.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mySpring.myapp.board.dao.ReplyDAO;
import com.mySpring.myapp.board.vo.ReplyVO;

@Service
public class ReplyServiceImpl implements ReplyService {
   
   @Autowired
   ReplyDAO replyDao;
   
   //��� ���
   @Override
   public List<ReplyVO> list(Integer LicenseTalkNO, int start, int end, HttpSession session){
      List<ReplyVO> items = replyDao.list(LicenseTalkNO, start, end);
      // ���ǿ��� ���� ����� id�� ����
      String userId = (String) session.getAttribute("userId");
      for(ReplyVO vo : items){
         // ��� ����߿� �߿� ��� ����� ���� ���
         if(vo.getSecretReply().equals("y")){
            if(userId== null){ // ��α��� ���¸� ��� ��۷� ó��
               vo.setReplytext("��� ����Դϴ�.");
            } else { // �α��� ������ ���
               String writer = vo.getWriter(); // �Խù� �ۼ��� ����
               String replyer = vo.getReplyer(); // ��� �ۼ��� ����
               // �α����� ����ڰ� �Խù��� �ۼ���X ��� �ۼ��ڵ� X ��д�۷� ó��
               if(!userId.equals(writer) && !userId.equals(replyer)) {
                  vo.setReplytext("��� ����Դϴ�.");
               }
            }
         }
      }
      return items;
   }
   //��� �󼼺���
   @Override
   public ReplyVO detail(Integer rno) {
      return replyDao.detail(rno);
   }
   //��� �ۼ�
   @Override
   public void create(ReplyVO vo) {
      replyDao.create(vo);
   }
   //��� ����
   @Override
   public void update(ReplyVO vo) {
      replyDao.update(vo);
}
   //��� ����
   @Override
   public void delete(Integer rno) {
      replyDao.delete(rno);
   }
   //��� ����
   @Override
   public int count(int LicenseTalkNO) {
      return replyDao.count(LicenseTalkNO);
   }
   
}