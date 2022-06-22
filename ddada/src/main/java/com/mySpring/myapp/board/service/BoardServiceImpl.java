package com.mySpring.myapp.board.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.mySpring.myapp.board.dao.BoardDAO;
import com.mySpring.myapp.board.vo.ArticleVO;
import com.mySpring.myapp.board.vo.ImageVO;
import com.mySpring.myapp.board.vo.TakeLectureListVO;
import com.mySpring.myapp.board.vo.TakeLectureVO;
import com.mySpring.myapp.board.vo.UserPurchaseVO;
import com.mySpring.myapp.board.vo.UserQAVO;
import com.mySpring.myapp.board.vo.UserReviewVO;
import com.mySpring.myapp.board.vo.LicenseTalkVO;


@Service("boardService")
@Transactional(propagation = Propagation.REQUIRED)
public class BoardServiceImpl  implements BoardService{
	@Autowired
	BoardDAO boardDAO;
	
	public List<ArticleVO> listArticles() throws Exception{
		List<ArticleVO> articlesList =  boardDAO.selectAllArticlesList();
        return articlesList;
	}
	public List<ArticleVO> listReview() throws Exception{
		List<ArticleVO> reviewsList =  boardDAO.selectAllReviewList();
        return reviewsList;
	}
	
	public List<TakeLectureVO> listTakeLecture() throws Exception{
		List<TakeLectureVO> takeLectureList =  boardDAO.selectAllTakeLectureList();
        return takeLectureList;
	}

	@Override
	public int addNewArticle(Map articleMap) throws Exception{
		return boardDAO.insertNewArticle(articleMap);
	}
	
	 //���� ���� ���̱�
	@Override
	public ArticleVO viewArticle(int articleNO) throws Exception {
		ArticleVO articleVO = boardDAO.selectArticle(articleNO);
		return articleVO;
	}
	
	@Override
	public void removeArticle(int articleNO) throws Exception {
		boardDAO.deleteArticle(articleNO);
	}
	
	
	
	
	
	
	
	// DDADA DB
	@Override
	public List<TakeLectureListVO> listTakeLectureList(String STUDENT_ID) throws Exception {
		List<TakeLectureListVO> takeLectureList =  boardDAO.selectTakeLecture(STUDENT_ID);
        return takeLectureList;
	}
	
	@Override
	public List<UserPurchaseVO> listUserPurchaseList(String STUDENT_ID) throws Exception{
		List<UserPurchaseVO> userPurchaseList =  boardDAO.selectUserPurchase(STUDENT_ID);
        return userPurchaseList;
	}
	
	@Override
	public List<UserQAVO> listUserQAList(String STUDENT_ID) throws Exception{
		List<UserQAVO> userQAList =  boardDAO.selectUserQA(STUDENT_ID);
        return userQAList;
	}
	
	@Override
	public List<UserReviewVO> listUserReviewList(String STUDENT_ID) throws Exception{
		List<UserReviewVO> userReviewList =  boardDAO.selectUserReview(STUDENT_ID);
        return userReviewList;
	}
	
	@Override
	public int addNewReview(Map reviewMap) throws Exception{
		return boardDAO.insertNewReview(reviewMap);
	}
	
	@Override
	public UserReviewVO viewOneReview(String REVIEW_NO) throws Exception{
		UserReviewVO userReviewVO = boardDAO.selectOneReview(REVIEW_NO);
		return userReviewVO;
	}
	
	@Override
	public void modReview(Map reviewMap) throws Exception{
		boardDAO.updateReview(reviewMap);
	}
	
	@Override
	public void removeReview(String REVIEW_NO) throws Exception{
		boardDAO.deleteReview(REVIEW_NO);
	}
	
	
	
	// ���� ��Ʈ
	// 01. LicenseTalk �Խñ� ����
	   @Transactional
	   @Override
	   public void LicenseTalkCreate(LicenseTalkVO vo) throws Exception{
	      String title = vo.getTITLE();
	      String content = vo.getCONTENT();
	      String writer = vo.getWRITER();
	      // *�±׹��� ó�� (< ==> &lt; > ==> &gt; )
	      // replace(A, B) A�� B�� ����
	      title = title.replace("<", "&lt;");
	      title = title.replace(">", "&gt;");
	      writer = writer.replace("<", "&lt;");
	      writer = writer.replace(">", "&gt;");
	      // *���鹮�� ó��
	      title = title.replace(" ",  "&nbsp;&nbsp;");
	      writer = writer.replace(" ",  "&nbsp;&nbsp;");
	      // *�ٹٲ� ����ó��
	      content = content.replace("\n", "<br>");
	      vo.setTITLE(title);
	      vo.setCONTENT(content);
	      vo.setWRITER(writer);
	      boardDAO.LicenseTalkCreate(vo);
	      // �Խù��� ÷������ ���� ���
	      String[] files = vo.getFiles(); // ÷������ �迭
	      if(files == null) return; // ÷�������� ������ �޼��� ����
	      // ÷�����ϵ��� ������ tbl_attach ���̺� insert
	      for(String name : files){ 
	            boardDAO.addAttach(name);
	            }
	   }
	   
	   // 02. LicenseTalk �Խñ� �󼼺���
	   @Override
	   public LicenseTalkVO LicenseTalkRead(int LicenseTalkNO) throws Exception{
	      System.out.println("SErvice read ó�� ��");
	      return boardDAO.LicenseTalkRead(LicenseTalkNO);
	      
	   }
	   
	   // 03. LicenseTalk �Խñ� ����
	   @Transactional
	   @Override
	   public void LicenseTalkUpdate(LicenseTalkVO vo) throws Exception{
	      boardDAO.LicenseTalkUpdate(vo);
	      // ÷������ ���� ���
	      String[] files = vo.getFiles(); // ÷������ �迭
	      // ÷�������� ������ ����
	      if(files == null) return;
	      // ÷�����ϵ��� ������ tbl_attach ���̺� insert
	      for(String name : files){
	            boardDAO.updateAttach(name, vo.getLICENSETALKNO());
	            }
	   }
	   
	   // 04. LicenseTalk �Խñ� ����
	   @Override
	   public void LicenseTalkDelete(int LicenseTalkNO) throws Exception{
	      boardDAO.LicenseTalkDelete(LicenseTalkNO);
	   }
	   
	   // 05. �Խñ� ��ü���
	   @Override
	   public List<LicenseTalkVO> LicenseTalkListAll(int start, int end, String searchOption, String keyword) throws Exception{
	      return boardDAO.LicenseTalkListAll(start, end, searchOption, keyword);
	   }
	   
	   // 07. �Խñ� ���ڵ� ����
	   @Override
	   public int countLicenseTalk(String searchOption, String keyword) throws Exception {
	   return boardDAO.countLicenseTalk(searchOption, keyword);
	   }
	   
	   // 06. �Խñ� ��ȸ �� ����
	   @Override
	   public void LicenseTalkIncreaseViewcnt(int LicenseTalkNO, HttpSession session) throws Exception{
	      System.out.println("Service ��ȸ�� ����ó�� ��");
	      long update_time = 0;
	      //���ǿ� ����� ��ȸ�ð� �˻�
	      // ���ʷ� ��ȸ�� ��� ���ǿ� ����� ���� ���� ������ if���� ����x
	      if (session.getAttribute("update_time_"+LicenseTalkNO) != null) {
	                              //���ǿ��� �о����
	         update_time = (long)session.getAttribute("update_time_"+LicenseTalkNO);
	      }
	      // �ý����� ����ð��� current_time�� ����
	      long current_time = System.currentTimeMillis();
	      // �����ð��� ��� �� ��ȸ �� ���� ó�� 24*60*60*1000(24�ð�)
	      // �ý�������ð� - �����ð� > �����ð�(��ȸ�� ������ �����ϵ��� ������ �ð�)
	      if (current_time - update_time > 5*1000) {
	         boardDAO.LicenseTalkIncreaseViewcnt(LicenseTalkNO);
	         //���ǿ� �ð��� ����: "update_time_"+LicenseTalkNO�� �ٸ������� �ߺ����� �ʰ� ����� ��
	         session.setAttribute("update_time_"+LicenseTalkNO, current_time);
	      }
	   }
	      
	      // 08. �Խñ��� ÷������ ���
	      @Override
	      public List<String> getAttach(int LicenseTalkNO) {
	         return boardDAO.getAttach(LicenseTalkNO);
	      }
	      @Override
	      public void deleteFile(String fullname) {
	         boardDAO.deleteFile(fullname);
	      }

}
