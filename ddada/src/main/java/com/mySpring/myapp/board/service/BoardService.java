package com.mySpring.myapp.board.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.mySpring.myapp.board.vo.ArticleVO;
import com.mySpring.myapp.board.vo.TakeLectureVO;
import com.mySpring.myapp.board.vo.UserPurchaseVO;
import com.mySpring.myapp.board.vo.UserQAVO;

import com.mySpring.myapp.board.vo.TakeLectureListVO;
import com.mySpring.myapp.board.vo.UserReviewVO;
import com.mySpring.myapp.board.vo.LicenseTalkVO;

public interface BoardService {
	public List<ArticleVO> listArticles() throws Exception;
	public List<ArticleVO> listReview() throws Exception;
	
	public List<TakeLectureVO> listTakeLecture() throws Exception;
//	public List<UserPurchaseVO> listUserPurchase() throws Exception;
//	public List<UserQAVO> listUserQA() throws Exception;

	public int addNewArticle(Map articleMap) throws Exception;
	
//	public int addNewReview(Map articleMap) throws Exception;
	
	public ArticleVO viewArticle(int articleNO) throws Exception;
//	public ArticleVO viewArticle(String LEC_NAME) throws Exception;
	
	//public Map viewArticle(int articleNO) throws Exception;
//	public void modArticle(Map articleMap) throws Exception;
	public void removeArticle(int articleNO) throws Exception;
	
	
	// DDADA DB
	public List<TakeLectureListVO> listTakeLectureList(String STUDENT_ID) throws Exception;
	public List<UserPurchaseVO> listUserPurchaseList(String STUDENT_ID) throws Exception;
	public List<UserQAVO> listUserQAList(String STUDENT_ID) throws Exception;
	public List<UserReviewVO> listUserReviewList(String STUDENT_ID) throws Exception;
	public int addNewReview(Map reviewMap) throws Exception;
	public UserReviewVO viewOneReview(String REVIEW_NO) throws Exception;
	public void modReview(Map reviewMap) throws Exception;
	public void removeReview(String REVIEW_NO) throws Exception;
	
	// 준혁 파트
	// 01. LicenseTalk 게시글 작성
	   public void LicenseTalkCreate(LicenseTalkVO vo) throws Exception;
	   // 02. LicenseTalk 게시글 상세보기
	   public LicenseTalkVO LicenseTalkRead(int LicenseTalkNO) throws Exception;
	   // 03. LicenseTalk 게시글 수정
	   public void LicenseTalkUpdate(LicenseTalkVO vo) throws Exception;
	   // 04. LicenseTalk 게시글 삭제
	   public void LicenseTalkDelete(int LicenseTalkNO) throws Exception;
	   // 05. LicenseTalk 게시글 전체 목록
	   public List<LicenseTalkVO> LicenseTalkListAll(int start, int end, String searchOption, String keyword) throws Exception;
	   // 06. LicenseTalk 게시글 조회수 증가
	   public void LicenseTalkIncreaseViewcnt(int LicenseTalkNO, HttpSession session) throws Exception;
	   // 07. 게시글 레코드 갯수 메소드 추가
	   public int countLicenseTalk(String searchOption, String keyword) throws Exception;
	   // 08. 게시글 첨부파일 목록
	   public List<String> getAttach(int LicenseTalkNO);
	   // 09. 게시글 첨부파일 삭제
	   public void deleteFile(String fullname);

}
