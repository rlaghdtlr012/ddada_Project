package com.mySpring.myapp.member.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.mySpring.myapp.member.dao.MemberDAO;
import com.mySpring.myapp.member.vo.MemberVO;
import com.mySpring.myapp.member.vo.MemberVOTest;

import com.mySpring.myapp.member.vo.StudentVO;
import com.mySpring.myapp.member.vo.TakeBookVO;
import com.mySpring.myapp.member.vo.LectureVO;
import com.mySpring.myapp.member.vo.InstructorVO;
import com.mySpring.myapp.board.vo.UserReviewVO;



@Service("memberService")
@Transactional(propagation = Propagation.REQUIRED)
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDAO memberDAO;

	@Override
	public List listMembers() throws DataAccessException {
		List membersList = null;
		membersList = memberDAO.selectAllMemberList();
		return membersList;
	}
	@Override
	public List listMembersTest() throws DataAccessException {
		List membersListTest = null;
		membersListTest = memberDAO.selectAllMemberListTest();
		return membersListTest;
	}

	@Override
	public int addMember(MemberVOTest memberVOTest) throws DataAccessException {
		return memberDAO.insertMember(memberVOTest);
	}

	@Override
	public int removeMember(String id) throws DataAccessException {
		return memberDAO.deleteMember(id);
	}
	
	@Override
	public MemberVOTest selectMember(String id) throws DataAccessException {
		return memberDAO.selectMember(id);
	}
	
//	@Override
//	public MemberVO login(MemberVO memberVO) throws Exception{
//		return memberDAO.loginById(memberVO);
//	}
	
	@Override
	public MemberVOTest loginTest(MemberVOTest memberVOTest) throws Exception{
		return memberDAO.loginByIdTest(memberVOTest);
	}
	
	@Override
	public void modMember(MemberVOTest memberVOTest) throws DataAccessException {
		memberDAO.updateMember(memberVOTest);
	}
	
	// DDADA DB
	@Override
	public int addStudent(StudentVO studentVO) throws DataAccessException {
		return memberDAO.insertStudent(studentVO);
	}
	
	@Override
	public StudentVO login(StudentVO studentVO) throws Exception{
		System.out.println("MemberServiceImpl�� login ����");
		return memberDAO.loginByStudentId(studentVO);
	}
	
	@Override
	public StudentVO selectStudent(String id) throws DataAccessException{
		return memberDAO.selectStudent(id);
	}
	
	@Override
	public void modStudent(StudentVO studentVO) throws DataAccessException{
		memberDAO.updateStudent(studentVO);
	}
	
	@Override
	public int removeStudent(String id) throws DataAccessException {
		return memberDAO.deleteStudent(id);
	}
	
	// ���� ��Ʈ
	//��ȸ
	   @Override 
	   public List<LectureVO> getList(){
	      return memberDAO.getList(); 
	   }
	      
	   //�󼼺���
	   @Override
	   public LectureVO detail(LectureVO lectureVO) {
	      return memberDAO.detail(lectureVO);
	   }
	      
	   //�����󺸱�
	   @Override
	   public LectureVO getvideo(LectureVO lectureVO) {
	      return memberDAO.getvideo(lectureVO);
	   }
	   
	   @Override
	   public List<LectureVO> detail2() {
	      return memberDAO.detail2();
	   }
	   
	   @Override
	   public List<LectureVO> curlist() {
	      return memberDAO.curlist();
	   }
	   
	   @Override
		public int insertLecture(LectureVO lectureVO) throws DataAccessException{
			return memberDAO.insertLecture(lectureVO);
		}
	   
	   @Override
	      public List<UserReviewVO> getReview() {
	         return memberDAO.getReview();
	      }
	   
	   
	   // ȿ�� ��Ʈ
	   @Override
	   public List listInstructor() throws Exception {
	      List instructorList = null;
	      instructorList = memberDAO.selectAllInstructorList();
	      return instructorList;
	   }
	   @Override
	   public List listStudent() throws DataAccessException {
		   List studentList = null;
		   studentList = memberDAO.selectAllStudentList();
		   return studentList;
	   }
	   
	   
	   //���� �߰�
	   public void adminInsert(StudentVO studentVO) throws Exception {
	      memberDAO.adminInsert(studentVO);
	   }
	   
	   //���� ����
		public void adminUpdate(StudentVO studentVO) throws Exception {
			 memberDAO.adminUpdate(studentVO);
		}
		
		//����
		public StudentVO adminUpdateView(StudentVO studentVO) {
			return memberDAO.adminUpdateView(studentVO);
		}
	   	   
	   // �λ� ��Ʈ
	   
	   public List<TakeBookVO> listTakeBook() throws Exception{
		      List<TakeBookVO> takeBookList = memberDAO.selectAllTakeBookList();
	      return takeBookList;
	   }

	   /*
	    * public TakeBookVO selectTakeList(String BOOK_NUM) { return
	    * memberDAO.selectTakeList(BOOK_NUM); }
	    */
	   
	   @Override
	   public TakeBookVO selectTake(String BOOK_NUM) {
	      return memberDAO.selectTake(BOOK_NUM);
	   }
	   
	   @Override
	   public TakeBookVO selectTakeList(String BOOK_NUM) {
	      return memberDAO.selectTake(BOOK_NUM);
	   }	   
	   
}
