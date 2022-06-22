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
	
	 //占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占싱깍옙
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
	
	
	
	// 준혁 파트
	// 01. LicenseTalk 게시글 쓰기
	   @Transactional
	   @Override
	   public void LicenseTalkCreate(LicenseTalkVO vo) throws Exception{
	      String title = vo.getTITLE();
	      String content = vo.getCONTENT();
	      String writer = vo.getWRITER();
	      // *태그문자 처리 (< ==> &lt; > ==> &gt; )
	      // replace(A, B) A를 B로 변경
	      title = title.replace("<", "&lt;");
	      title = title.replace(">", "&gt;");
	      writer = writer.replace("<", "&lt;");
	      writer = writer.replace(">", "&gt;");
	      // *공백문자 처리
	      title = title.replace(" ",  "&nbsp;&nbsp;");
	      writer = writer.replace(" ",  "&nbsp;&nbsp;");
	      // *줄바꿈 문자처리
	      content = content.replace("\n", "<br>");
	      vo.setTITLE(title);
	      vo.setCONTENT(content);
	      vo.setWRITER(writer);
	      boardDAO.LicenseTalkCreate(vo);
	      // 게시물의 첨부파일 정보 등록
	      String[] files = vo.getFiles(); // 첨부파일 배열
	      if(files == null) return; // 첨부파일이 없으면 메서드 종료
	      // 첨부파일들의 정보를 tbl_attach 테이블에 insert
	      for(String name : files){ 
	            boardDAO.addAttach(name);
	            }
	   }
	   
	   // 02. LicenseTalk 게시글 상세보기
	   @Override
	   public LicenseTalkVO LicenseTalkRead(int LicenseTalkNO) throws Exception{
	      System.out.println("SErvice read 처리 댐");
	      return boardDAO.LicenseTalkRead(LicenseTalkNO);
	      
	   }
	   
	   // 03. LicenseTalk 게시글 수정
	   @Transactional
	   @Override
	   public void LicenseTalkUpdate(LicenseTalkVO vo) throws Exception{
	      boardDAO.LicenseTalkUpdate(vo);
	      // 첨부파일 정보 등록
	      String[] files = vo.getFiles(); // 첨부파일 배열
	      // 첨부파일이 없으면 종료
	      if(files == null) return;
	      // 첨부파일들의 정보를 tbl_attach 테이블에 insert
	      for(String name : files){
	            boardDAO.updateAttach(name, vo.getLICENSETALKNO());
	            }
	   }
	   
	   // 04. LicenseTalk 게시글 삭제
	   @Override
	   public void LicenseTalkDelete(int LicenseTalkNO) throws Exception{
	      boardDAO.LicenseTalkDelete(LicenseTalkNO);
	   }
	   
	   // 05. 게시글 전체목록
	   @Override
	   public List<LicenseTalkVO> LicenseTalkListAll(int start, int end, String searchOption, String keyword) throws Exception{
	      return boardDAO.LicenseTalkListAll(start, end, searchOption, keyword);
	   }
	   
	   // 07. 게시글 레코드 갯수
	   @Override
	   public int countLicenseTalk(String searchOption, String keyword) throws Exception {
	   return boardDAO.countLicenseTalk(searchOption, keyword);
	   }
	   
	   // 06. 게시글 조회 수 증가
	   @Override
	   public void LicenseTalkIncreaseViewcnt(int LicenseTalkNO, HttpSession session) throws Exception{
	      System.out.println("Service 조회수 증가처리 댐");
	      long update_time = 0;
	      //세션에 저장된 조회시간 검색
	      // 최초로 조회할 경우 세션에 저장된 값이 없기 때문에 if문은 실행x
	      if (session.getAttribute("update_time_"+LicenseTalkNO) != null) {
	                              //세션에서 읽어오기
	         update_time = (long)session.getAttribute("update_time_"+LicenseTalkNO);
	      }
	      // 시스템의 현재시간을 current_time에 저장
	      long current_time = System.currentTimeMillis();
	      // 일정시간이 경과 후 조회 수 증가 처리 24*60*60*1000(24시간)
	      // 시스템현재시간 - 열람시간 > 일정시간(조회수 증가가 가능하도록 지정한 시간)
	      if (current_time - update_time > 5*1000) {
	         boardDAO.LicenseTalkIncreaseViewcnt(LicenseTalkNO);
	         //세션에 시간을 저장: "update_time_"+LicenseTalkNO는 다른변수와 중복되지 않게 명명한 것
	         session.setAttribute("update_time_"+LicenseTalkNO, current_time);
	      }
	   }
	      
	      // 08. 게시글의 첨부파일 목록
	      @Override
	      public List<String> getAttach(int LicenseTalkNO) {
	         return boardDAO.getAttach(LicenseTalkNO);
	      }
	      @Override
	      public void deleteFile(String fullname) {
	         boardDAO.deleteFile(fullname);
	      }

}
