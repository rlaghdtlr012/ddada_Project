package com.mySpring.myapp.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mySpring.myapp.member.vo.LectureVO;
import com.mySpring.myapp.member.vo.MemberVO;
import com.mySpring.myapp.member.vo.MemberVOTest;

import com.mySpring.myapp.member.vo.StudentVO;
import com.mySpring.myapp.member.vo.LectureVO;

import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;


public interface MemberController {
	public ModelAndView listMembers(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
//	public ModelAndView modProfile(@RequestParam("id") String id, HttpServletRequest request, HttpServletResponse response) throws Exception;
	
//	public ModelAndView addMember(@ModelAttribute("info") MemberVOTest memberVOTest, HttpServletRequest request, HttpServletResponse response) throws Exception;
//	public ModelAndView removeMember(@RequestParam("id") String id, HttpServletRequest request, HttpServletResponse response) throws Exception;
//	public ModelAndView login(@ModelAttribute("member") MemberVO member,
//                              RedirectAttributes rAttr,
//                              HttpServletRequest request, HttpServletResponse response) throws Exception;
	
//	public ModelAndView loginTest(@ModelAttribute("member") MemberVOTest member,
//            RedirectAttributes rAttr,
//             HttpServletRequest request, HttpServletResponse response) throws Exception;
	
//	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
//	public ModelAndView modMember(@ModelAttribute("member") MemberVOTest member,
//			  HttpServletRequest request, HttpServletResponse response) throws Exception;
//	public ResponseEntity modMember(@ModelAttribute("member") MemberVOTest memberVOTest, MultipartHttpServletRequest multipartRequest,  
//		    HttpServletResponse response) throws Exception;
	
	
	
	
	
	// DDADA DB
	public ModelAndView addStudent(@ModelAttribute("info") StudentVO studentVO,
								   HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView loginStudent(@ModelAttribute("student") StudentVO student,
            					     RedirectAttributes rAttr, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView logoutStudent(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	//public ModelAndView modProfile(@RequestParam("id") String id, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView modProfile(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public ModelAndView modStudent(@ModelAttribute("student") StudentVO student,
			  HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public ModelAndView removeStudent(@RequestParam("id") String id, HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	

	/////////// ���� Ddada //////////////
	public ModelAndView lecture(HttpServletRequest request, HttpServletResponse response);
	// ����ȭ��
	public String list(Model model);
	   
	//�󼼺���
	public String Information1(Model model, LectureVO lectureVO);
	   
	//������ ������
	public String video(Model model, LectureVO lectureVO);
	
	// ���� ���� ���¿� ������ �߰�
	public ModelAndView addLecture(@ModelAttribute("info") LectureVO lectureVO,
			   HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	
	
	/////////// ���� �� ������ ������ //////////////
	public ModelAndView adminPage(HttpServletRequest request, HttpServletResponse response) throws Exception;
	

	/////////// ���� Ddada //////////////
	public ModelAndView book(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public ModelAndView mainPractice2(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	
}