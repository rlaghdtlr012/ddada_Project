package com.mySpring.myapp.member.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.mySpring.myapp.member.vo.MemberVO;
import com.mySpring.myapp.member.vo.MemberVOTest;

import com.mySpring.myapp.member.vo.StudentVO;
import com.mySpring.myapp.member.vo.TakeBookVO;
import com.mySpring.myapp.member.vo.LectureVO;
import com.mySpring.myapp.board.vo.UserReviewVO;


public interface MemberDAO {
	 public List selectAllMemberList() throws DataAccessException;
	 
	 public List selectAllMemberListTest() throws DataAccessException;
	 
	 public int insertMember(MemberVOTest memberVOTest) throws DataAccessException;
	 
//	 public int insertMemberTest(MemberVOTest memberVOTest) throws DataAccessException;
	 
	 public int deleteMember(String id) throws DataAccessException;
	 public MemberVOTest selectMember(String id) throws DataAccessException;
	 
	 public MemberVO loginById(MemberVO memberVO) throws DataAccessException;
	 
	 public MemberVOTest loginByIdTest(MemberVOTest memberVOTest) throws DataAccessException;
	 
	 //public int updateMember(Map modMap) throws DataAccessException;
	 public void updateMember(MemberVOTest memberVOTest) throws DataAccessException;
	
	 
	 // DDADA DB�� ���� �޼ҵ�
	 public int insertStudent(StudentVO studentVO) throws DataAccessException;
	 public StudentVO selectStudent(String id) throws DataAccessException;
	 public StudentVO loginByStudentId(StudentVO studentVO) throws DataAccessException;
	 public void updateStudent(StudentVO studentVO) throws DataAccessException;
	 public int deleteStudent(String id) throws DataAccessException;
	 
	 
	 // ���� ��Ʈ
	 // ���� ��ȸ
     public List<LectureVO> getList();  // getList ������ �ޱ�
      
     //�󼼺���
     public LectureVO detail(LectureVO lectureVO);
      
     //������ ����
     public LectureVO getvideo(LectureVO lectureVO);
      
     public List<LectureVO> detail2(); 
      
     public List<LectureVO> curlist(); 
     
     public int insertLecture(LectureVO lectureVO) throws DataAccessException;
     
     //����
     public List<UserReviewVO> getReview();
       
     // ȿ�� ��Ʈ
     public List selectAllInstructorList() throws DataAccessException;
     public List selectAllStudentList() throws DataAccessException;
     
     
     //���� �߰�
     public void adminInsert(StudentVO studentVO) throws Exception;
     
     //���� ����
	 public void adminUpdate(StudentVO studentVO) throws Exception;
	 
	 //����
	 public StudentVO adminUpdateView(StudentVO studentVO);
     
     // �λ� ��Ʈ
     public List selectAllTakeBookList() throws DataAccessException;
     public TakeBookVO selectTakeList(String BOOK_NUM) throws DataAccessException;
     public TakeBookVO selectTake(String BOOK_NUM) throws DataAccessException;
     
     
}
