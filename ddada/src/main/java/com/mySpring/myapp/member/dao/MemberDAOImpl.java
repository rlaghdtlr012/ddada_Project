package com.mySpring.myapp.member.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.mySpring.myapp.member.vo.MemberVO;
import com.mySpring.myapp.member.vo.MemberVOTest;


import com.mySpring.myapp.member.vo.StudentVO;
import com.mySpring.myapp.member.vo.TakeBookVO;
import com.mySpring.myapp.member.vo.LectureVO;
import com.mySpring.myapp.member.vo.InstructorVO;
import com.mySpring.myapp.board.vo.UserReviewVO;

@Repository("memberDAO")
public class MemberDAOImpl implements MemberDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List selectAllMemberList() throws DataAccessException {
		List<MemberVO> membersList = null;
		membersList = sqlSession.selectList("mapper.member.selectAllMemberList");
		return membersList;
	}
	@Override
	public List selectAllMemberListTest() throws DataAccessException {
		List<MemberVOTest> membersList = null;
		membersList = sqlSession.selectList("mapper.member.selectAllMemberListTest");
		return membersList;
	}

	@Override
	public int insertMember(MemberVOTest memberVOTest) throws DataAccessException {
		int result = sqlSession.insert("mapper.member.insertMember", memberVOTest);
		return result;
	}

	@Override
	public int deleteMember(String id) throws DataAccessException {
		int result = sqlSession.delete("mapper.member.deleteMember", id);
		return result;
	}
	
	@Override
	public MemberVOTest selectMember(String id) throws DataAccessException {
		MemberVOTest vo = sqlSession.selectOne("mapper.member.selectMember", id);
		return vo;
	}
	
	@Override
	public MemberVO loginById(MemberVO memberVO) throws DataAccessException{
		MemberVO vo = sqlSession.selectOne("mapper.member.loginById", memberVO);
		return vo;
	}
	@Override
	public MemberVOTest loginByIdTest(MemberVOTest memberVOTest) throws DataAccessException{
		MemberVOTest vo = sqlSession.selectOne("mapper.member.loginByIdTest", memberVOTest);
		return vo;
	}
	
	@Override
	public void updateMember(MemberVOTest memberVOTest) throws DataAccessException {
		sqlSession.update("mapper.member.updateMember", memberVOTest);
	}
	
	
	// DDADA DB
	@Override
	public int insertStudent(StudentVO studentVO) throws DataAccessException{
		int result = sqlSession.insert("mapper.member.insertStudent", studentVO);
		return result;
	}
	
	@Override
	public StudentVO selectStudent(String id) throws DataAccessException {
		StudentVO vo = sqlSession.selectOne("mapper.member.selectStudent", id);
		return vo;
	}
	
	@Override
	public StudentVO loginByStudentId(StudentVO studentVO) throws DataAccessException{
		StudentVO vo = sqlSession.selectOne("mapper.member.loginByStudentId", studentVO);
		System.out.println(vo);
		return vo;
	}
	
	@Override
	public void updateStudent(StudentVO studentVO) throws DataAccessException{
		sqlSession.update("mapper.member.updateStudent", studentVO);
	}
	
	@Override
	public int deleteStudent(String id) throws DataAccessException {
		int result = sqlSession.delete("mapper.member.deleteStudent", id);
		return result;
	}
	
	
	
	// 태훈 파트
	@Override
	public List<LectureVO> getList() {
		return sqlSession.selectList("mapper.member.getList");
	}
	
	//상세보기
    @Override
    public LectureVO detail(LectureVO lectureVO) {
       return sqlSession.selectOne("mapper.member.detail", lectureVO);
    }
    
    @Override
    public LectureVO getvideo(LectureVO lectureVO) {
       return sqlSession.selectOne("mapper.member.getvideo", lectureVO);
    }
    
    @Override
    public List<LectureVO> detail2() {
       return sqlSession.selectList("mapper.member.detail2");
    }
    
    @Override
    public List<LectureVO> curlist() {
       return sqlSession.selectList("mapper.member.curlist");
    }
    
    @Override
	public int insertLecture(LectureVO lectureVO) throws DataAccessException{
		int result = sqlSession.insert("mapper.member.insertNewLecture", lectureVO);
		return result;
	}
    //리뷰
    @Override
    public List<UserReviewVO> getReview() {
       return sqlSession.selectList("mapper.member.reviewlecture");
    }
    
    
    // 효영 파트
    @Override
    public List selectAllInstructorList() throws DataAccessException {
       List<InstructorVO> instructorList = sqlSession.selectList("mapper.member.selectAllInstructorList");
       return instructorList;
    }
    @Override
    public List selectAllStudentList() throws DataAccessException {
    	List<StudentVO> studentList = sqlSession.selectList("mapper.member.selectAllStudentList");
        return studentList;
    }
    
    
    //어드민 추가
    @Override
    public void adminInsert(StudentVO studentVO) throws Exception {
       sqlSession.insert("mapper.member.adminInsert", studentVO);
    }
    
    //어드민 수정
  	@Override
  	public void adminUpdate(StudentVO studentVO) throws Exception {
  		 sqlSession.update("mapper.member.adminUpdate", studentVO);
  	}
  	
  	@Override
  	 public StudentVO adminUpdateView(StudentVO studentVO) {
        return sqlSession.selectOne("mapper.member.admindetail", studentVO);
     }
  
    // 민상 파트
    @Override
    public List selectAllTakeBookList() throws DataAccessException{
       List<TakeBookVO> takeBookList = takeBookList = sqlSession.selectList("mapper.member.selectAllTakeBookList");
       return takeBookList;
    }
    
    @Override
    public TakeBookVO selectTakeList(String BOOK_NUM) {
       return sqlSession.selectOne("mapper.member.selectTakeList", BOOK_NUM);
    }
    
    @Override
    public TakeBookVO selectTake(String BOOK_NUM) {
       return sqlSession.selectOne("mapper.member.selectTake", BOOK_NUM);
    }
    
    
    
    
    
}
