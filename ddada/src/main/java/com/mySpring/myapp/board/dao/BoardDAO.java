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
	
	
	// ���� ��Ʈ
	// 01. LicenseTalk �Խñ� �ۼ�
    public void LicenseTalkCreate(LicenseTalkVO vo) throws Exception;
    // 02. LicenseTalk �Խñ� �󼼺���
    public LicenseTalkVO LicenseTalkRead(int LicenseTalkNO) throws Exception;
    // 03. LicenseTalk �Խñ� ����
    public void LicenseTalkUpdate(LicenseTalkVO vo) throws Exception;
    // 04. LicenseTalk �Խñ� ����
    public void LicenseTalkDelete(int LicenseTalkNO) throws Exception;
    // 05. LicenseTalk �Խñ� ��ü ���
    public List<LicenseTalkVO> LicenseTalkListAll(int start, int end, String searchOption, String keyword) throws Exception;
    // 06. LicenseTalk �Խñ� ��ȸ
    public void LicenseTalkIncreaseViewcnt(int LicenseTalkNO) throws Exception;
    // 07. �Խñ� ���ڵ� ���� �޼ҵ� �߰�
    public int countLicenseTalk(String searchOption, String keyword) throws Exception;
    // 08. �Խù� ÷������ �߰�
    public void addAttach(String fullName);
    // 09. �Խù� ÷������ ���
    public List<String> getAttach(int LicenseTalkNO);
    // 10. �Խñ� ÷������ ����ó��
    public void deleteFile(String fullname);
    // 11. �Խñ� ÷������ ������Ʈó��
    public void updateAttach(String fullName, int LicenseTalkNO);
}
