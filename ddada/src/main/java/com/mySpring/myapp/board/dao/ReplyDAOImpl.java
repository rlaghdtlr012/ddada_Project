package com.mySpring.myapp.board.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mySpring.myapp.board.vo.ReplyVO;

@Repository
public class ReplyDAOImpl implements ReplyDAO {
   @Autowired
   private SqlSession sqlSession;
   
   //��۸��
   @Override
   public List<ReplyVO> list(Integer LicenseTalkNO, int start, int end){
      Map<String, Object> map = new HashMap<String, Object>();
      map.put("LicenseTalkNO", LicenseTalkNO);
      map.put("start", start);
      map.put("end", end);
      return sqlSession.selectList("reply.listReply", map);
   }
   //��� �󼼺���
      @Override
      public ReplyVO detail(Integer rno) {
         return sqlSession.selectOne("reply.detailReply", rno);
      }
   //��� �ۼ�
   @Override
   public void create(ReplyVO vo) {
      sqlSession.insert("reply.insertReply", vo);
   }
   //��� ����
   @Override
   public void update(ReplyVO vo) {
      sqlSession.update("reply.updateReply", vo);
   }

   //��� ����
   @Override
   public void delete(Integer rno) {
      sqlSession.delete("reply.deleteReply", rno);
   }
   //��� ����
   @Override
   public int count(int LicenseTalkNO) {
      return sqlSession.selectOne("reply.countReply",LicenseTalkNO);
   }
}