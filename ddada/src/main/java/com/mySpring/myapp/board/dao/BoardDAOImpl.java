package com.mySpring.myapp.board.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.mySpring.myapp.board.vo.ArticleVO;
import com.mySpring.myapp.board.vo.ImageVO;
import com.mySpring.myapp.board.vo.TakeLectureListVO;
import com.mySpring.myapp.board.vo.TakeLectureVO;
import com.mySpring.myapp.board.vo.UserPurchaseVO;
import com.mySpring.myapp.board.vo.UserQAVO;
import com.mySpring.myapp.board.vo.UserReviewVO;
import com.mySpring.myapp.board.vo.LicenseTalkVO;

@Repository("boardDAO")
public class BoardDAOImpl implements BoardDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List selectAllArticlesList() throws DataAccessException {
		List<ArticleVO> articlesList = articlesList = sqlSession.selectList("mapper.board.selectAllArticlesList");
		return articlesList;
	}
	@Override
	public List selectAllReviewList() throws DataAccessException {
		List<ArticleVO> articlesList = articlesList = sqlSession.selectList("mapper.board.selectAllReviewsList");
		return articlesList;
	}
	
	@Override
	public List selectAllTakeLectureList() throws DataAccessException {
		List<TakeLectureVO> takeLectureList = takeLectureList = sqlSession.selectList("mapper.board.selectAllTakeLectureList");
		return takeLectureList;
	}
//	@Override
//	public List selectAllAVGLecProgress() throws DataAccessException {
//		List avgLecProgressList = avgLecProgressList = sqlSession.selectList("mapper.board.selectAllAVGLecProgress");
//		return avgLecProgressList;
//	}
	
	@Override
	public List selectAllUserPurchaseList() throws DataAccessException{
		List<UserPurchaseVO> articlesList = articlesList = sqlSession.selectList("mapper.board.selectAllUserPurchaseList");
		return articlesList;
	}
	
	@Override
	public List selectAllUserQAList() throws DataAccessException{
		List<UserQAVO> articlesList = articlesList = sqlSession.selectList("mapper.board.selectAllUserQAList");
		return articlesList;
	}
	
	
	@Override
	public int insertNewArticle(Map articleMap) throws DataAccessException {
		int articleNO = selectNewArticleNO();
		articleMap.put("articleNO", articleNO);
		sqlSession.insert("mapper.board.insertNewArticle",articleMap);
		return articleNO;
	}
//	@Override
//	public int insertNewReview(Map articleMap) throws DataAccessException {
//		int articleNO = selectNewArticleNOTest();
//		articleMap.put("articleNO", articleNO);
//		sqlSession.insert("mapper.board.insertNewArticleTest",articleMap);
//		return articleNO;
//	}
    
	//占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占싸듸옙
	/*
	@Override
	public void insertNewImage(Map articleMap) throws DataAccessException {
		List<ImageVO> imageFileList = (ArrayList)articleMap.get("imageFileList");
		int articleNO = (Integer)articleMap.get("articleNO");
		int imageFileNO = selectNewImageFileNO();
		for(ImageVO imageVO : imageFileList){
			imageVO.setImageFileNO(++imageFileNO);
			imageVO.setArticleNO(articleNO);
		}
		sqlSession.insert("mapper.board.insertNewImage",imageFileList);
	}
	
   */
	
	@Override
	public ArticleVO selectArticle(int articleNO) throws DataAccessException {
		return sqlSession.selectOne("mapper.board.selectArticle", articleNO);
	}
//	@Override
//	public TakeLectureVO selectReview(String LEC_NAME) throws DataAccessException {
//		return sqlSession.selectOne("mapper.board.selectReview", LEC_NAME);
//	}
	
	
	@Override
	public ArticleVO selectArticleTest(int articleNO) throws DataAccessException {
		return sqlSession.selectOne("mapper.board.selectArticleTest", articleNO);
	}

//	@Override
//	public void updateArticle(Map articleMap) throws DataAccessException {
//		sqlSession.update("mapper.board.updateArticle", articleMap);
//	}

	@Override
	public void deleteArticle(int articleNO) throws DataAccessException {
		sqlSession.delete("mapper.board.deleteArticle", articleNO);
		
	}
	
	@Override
	public List selectImageFileList(int articleNO) throws DataAccessException {
		List<ImageVO> imageFileList = null;
		imageFileList = sqlSession.selectList("mapper.board.selectImageFileList",articleNO);
		return imageFileList;
	}
	
	private int selectNewArticleNO() throws DataAccessException {
		return sqlSession.selectOne("mapper.board.selectNewArticleNO");
	}
	private int selectNewArticleNOTest() throws DataAccessException {
		return sqlSession.selectOne("mapper.board.selectNewArticleNOTest");
	}
	
	private int selectNewImageFileNO() throws DataAccessException {
		return sqlSession.selectOne("mapper.board.selectNewImageFileNO");
	}

	
	
	
	
	
	
	
	
	
	// DDADA DB
	public List selectTakeLecture(String STUDENT_ID) throws DataAccessException{
		List<TakeLectureListVO> takeLectureList = takeLectureList = sqlSession.selectList("mapper.board.selectTakeLectureList", STUDENT_ID);
		return takeLectureList;
	}
	
	@Override
	public List selectAllAVGLecProgress() throws DataAccessException {
		List avgLecProgressList = avgLecProgressList = sqlSession.selectList("mapper.board.selectAllAVGLecProgress");
		return avgLecProgressList;
	}
	
	@Override
	public List selectUserPurchase(String STUDENT_ID) throws DataAccessException {
		List<UserPurchaseVO> userPurchaseList = userPurchaseList = sqlSession.selectList("mapper.board.selectUserPurchaseList", STUDENT_ID);
		return userPurchaseList;
	}
	
	@Override
	public List selectUserQA(String STUDENT_ID) throws DataAccessException {
		List<UserQAVO> userQAList = userQAList = sqlSession.selectList("mapper.board.selectUserQAList", STUDENT_ID);
		return userQAList;
	}
	
	@Override
	public List selectUserReview(String STUDENT_ID) throws DataAccessException{
		List<UserReviewVO> userReviewList = userReviewList = sqlSession.selectList("mapper.board.selectUserReviewList", STUDENT_ID);
		return userReviewList;
	}

	private int selectNewReviewNO() throws DataAccessException {
		return sqlSession.selectOne("mapper.board.selectNewReviewNO");
	}
	
	@Override
	public int insertNewReview(Map reviewMap) throws DataAccessException{
		int reviewNO = selectNewReviewNO();
		reviewMap.put("REVIEW_NO", reviewNO);
		sqlSession.insert("mapper.board.insertNewReview", reviewMap);
		return reviewNO;
	}
	
	@Override
	public UserReviewVO selectOneReview(String REVIEW_NO) throws DataAccessException{
		return sqlSession.selectOne("mapper.board.selectUserReview", REVIEW_NO);
	}
	
	@Override
	public void updateReview(Map reviewMap) throws DataAccessException{
		sqlSession.update("mapper.board.updateReview", reviewMap);
	}
	
	@Override
	public void deleteReview(String REVIEW_NO) throws DataAccessException{
		sqlSession.delete("mapper.board.deleteReview", REVIEW_NO);
	}
	
	
	
	// 준혁 파트
	// 01_01. LicenseTalk 게시글 작성
	   @Override
	   public void LicenseTalkCreate(LicenseTalkVO vo) throws Exception {
	      sqlSession.insert("mapper.board.insert", vo);
	   }
	   
	   // 01_02 게시물 첨부파일 추가
	      @Override
	      public void addAttach(String fullName) {
	         sqlSession.insert("mapper.board.addAttach", fullName);
	      }
	   
	   // 02. LicenseTalk 게시글 상세보기
	   @Override
	   public LicenseTalkVO LicenseTalkRead(int LicenseTalkNO) throws Exception {
	      System.out.println("다오 ㅇㅇ ");
	      return sqlSession.selectOne("mapper.board.LicenseTalkView", LicenseTalkNO);
	   }
	   
	   // 03. LicenseTalk 게시글 수정
	   @Override
	   public void LicenseTalkUpdate(LicenseTalkVO vo) throws Exception {
	      sqlSession.update("mapper.board.updateLicenseTalk", vo);
	   }
	   
	   // 04. LicenseTalk 게시글 삭제
	   @Override
	   public void LicenseTalkDelete(int LicenseTalkNO) throws Exception {
	      sqlSession.delete("mapper.board.deleteLicenseTalk", LicenseTalkNO);
	      
	   }
	   
	   // 05. LicenseTalk 게시글 전체 목록
	   @Override
	   public List<LicenseTalkVO> LicenseTalkListAll(int start, int end, String searchOption, String keyword) throws Exception {
	      //검색옵션, 키워드 맵에 저장
	      Map<String, Object> map = new HashMap<String, Object>();
	      map.put("searchOption", searchOption); 
	      map.put("keyword", keyword);
	      // BETWEEN #{start}, #{end}에 입력될 값
	      map.put("start", start);
	      map.put("end", end);
	      
	      // 여기 mapper의 쿼리가 listAll이 아닌 countLicenseTalk로 되어있어서 안 됐던 것...!!
	      // return sqlSession.selectList("mapper.board.countLicenseTalk", map);
	      return sqlSession.selectList("mapper.board.listAll", map);
	      
	   }
	   
	   // 06. LicenseTalk 게시글 조회 수 증가
	   @Override
	   public void LicenseTalkIncreaseViewcnt(int LicenseTalkNO) throws Exception {
	      sqlSession.update("mapper.board.increaseViewcnt", LicenseTalkNO);
	   }
	   
	   // 07. LicenseTalk 게시글 레코드 갯수
	   @Override
	   public int countLicenseTalk(String searchOption, String keyword) throws Exception{
	      // 검색옵션, 키워드 맵에 저장
	      Map<String, String> map = new HashMap<String, String>();
	      map.put("searchOption", searchOption); 
	      map.put("keyword", keyword);
	      return sqlSession.selectOne("mapper.board.countLicenseTalk", map);
	   }
	   
	   // 08. 게시글 첨부파일 목록
	      @Override
	      public List<String> getAttach(int LicenseTalkNO) {
	         return sqlSession.selectList("board.getAttach", LicenseTalkNO);
	      }

	      // 09. 게시글 첨부파일 삭제처리
	      @Override
	      public void deleteFile(String fullname) {
	         sqlSession.delete("board.deleteAttach", fullname);
	      }
	      // 10. 게시글 첨부파일 업데이트 처리
	      @Override
	      public void updateAttach(String fullName, int LicenseTalkNO) {
	         Map<String, Object> map = new HashMap<String, Object>();
	         map.put("fullName", fullName);
	         map.put("LicenseTalkNO", LicenseTalkNO);
	         sqlSession.insert("board.updateAttach", map);
	      }

}
