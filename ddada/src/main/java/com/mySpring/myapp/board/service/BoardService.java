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
	   // 06. LicenseTalk �Խñ� ��ȸ�� ����
	   public void LicenseTalkIncreaseViewcnt(int LicenseTalkNO, HttpSession session) throws Exception;
	   // 07. �Խñ� ���ڵ� ���� �޼ҵ� �߰�
	   public int countLicenseTalk(String searchOption, String keyword) throws Exception;
	   // 08. �Խñ� ÷������ ���
	   public List<String> getAttach(int LicenseTalkNO);
	   // 09. �Խñ� ÷������ ����
	   public void deleteFile(String fullname);

}
