package com.mySpring.myapp.board.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.mySpring.myapp.board.vo.ArticleVO;
import com.mySpring.myapp.board.vo.TakeLectureVO;

import com.mySpring.myapp.board.vo.TakeLectureListVO;
import com.mySpring.myapp.board.vo.UserReviewVO;
import com.mySpring.myapp.board.vo.LicenseTalkVO;

public interface BoardDAO {
	public List selectAllArticlesList() throws DataAccessException;
	public List selectAllReviewList() throws DataAccessException;
	
	public List selectAllTakeLectureList() throws DataAccessException;
//	public List selectAllAVGLecProgress() throws DataAccessException;
	
	public List selectAllUserPurchaseList() throws DataAccessException;
	public List selectAllUserQAList() throws DataAccessException;
	
	
	public int insertNewArticle(Map articleMap) throws DataAccessException;
	
//	public int insertNewReview(Map articleMap) throws DataAccessException;
	public ArticleVO selectArticleTest(int articleNO) throws DataAccessException;
	
	//public void insertNewImage(Map articleMap) throws DataAccessException;
	
	public ArticleVO selectArticle(int articleNO) throws DataAccessException;
//	public TakeLectureVO selectReview(String LEC_NAME) throws DataAccessException;
	
//	public void updateArticle(Map articleMap) throws DataAccessException;
	public void deleteArticle(int articleNO) throws DataAccessException;
	public List selectImageFileList(int articleNO) throws DataAccessException;
	
	
	
	
	
	
	
	
	// DDADA DB
	public List selectTakeLecture(String STUDENT_ID) throws DataAccessException;
	public List selectAllAVGLecProgress() throws DataAccessException;
	public List selectUserPurchase(String STUDENT_ID) throws DataAccessException;
	public List selectUserQA(String STUDENT_ID) throws DataAccessException;
	public List selectUserReview(String STUDENT_ID) throws DataAccessException;
	public int insertNewReview(Map reviewMap) throws DataAccessException;
	public UserReviewVO selectOneReview(String REVIEW_NO) throws DataAccessException;
	public void updateReview(Map reviewMap) throws DataAccessException;
	public void deleteReview(String REVIEW_NO) throws DataAccessException;
	
	
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
    // 06. LicenseTalk 게시글 조회
    public void LicenseTalkIncreaseViewcnt(int LicenseTalkNO) throws Exception;
    // 07. 게시글 레코드 갯수 메소드 추가
    public int countLicenseTalk(String searchOption, String keyword) throws Exception;
    // 08. 게시물 첨부파일 추가
    public void addAttach(String fullName);
    // 09. 게시물 첨부파일 목록
    public List<String> getAttach(int LicenseTalkNO);
    // 10. 게시글 첨부파일 삭제처리
    public void deleteFile(String fullname);
    // 11. 게시글 첨부파일 업데이트처리
    public void updateAttach(String fullName, int LicenseTalkNO);
}
