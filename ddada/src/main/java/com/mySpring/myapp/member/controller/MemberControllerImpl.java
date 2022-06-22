package com.mySpring.myapp.member.controller;

import java.util.List;

import java.util.Map;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.net.openssl.ciphers.Authentication; //
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mySpring.myapp.member.service.MemberService;
import com.mySpring.myapp.member.vo.MemberVO;
import com.mySpring.myapp.member.vo.MemberVOTest;


import com.mySpring.myapp.member.vo.StudentVO;
import com.mySpring.myapp.member.vo.LectureVO;
import com.mySpring.myapp.member.vo.InstructorVO;
import com.mySpring.myapp.board.vo.UserReviewVO;
import com.mySpring.myapp.member.vo.TakeBookVO;

import org.springframework.http.ResponseEntity;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;


@Controller("memberController")
//@EnableAspectJAutoProxy
public class MemberControllerImpl implements MemberController {
	@Autowired
	private MemberService memberService;
	@Autowired
	MemberVO memberVO;	
	@Autowired
	MemberVOTest memberVOTest;
	@Autowired
	StudentVO studentVO;

	boolean isRemoved = false;
	boolean isInserted = false;
	
	@RequestMapping(value = { "/","/main.do"}, method = RequestMethod.GET)
	private ModelAndView main(HttpServletRequest request, HttpServletResponse response) {
		String viewName = (String)request.getAttribute("viewName");	
		
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		if (isRemoved) {
			 mav.addObject("message", "회원 탈퇴가 완료되었습니다.");
			 isRemoved = false;
		}
		return mav;
		
//		String viewName = (String)request.getAttribute("viewName");	
//		
//		HttpSession session = request.getSession();
//		studentVO = (StudentVO) session.getAttribute("student");
//		ModelAndView mav = new ModelAndView();
//		
//		if (studentVO != null)
//		{
//			String id = studentVO.getSTUDENT_ID();
//			
//			if (id == "admin" || id == "administrator")
//			{
////				ModelAndView mav = new ModelAndView();
//				mav.setViewName("redirect:/member/adminPage.do");
////				return mav;
//			}
//		}
//		else
//		{
////			ModelAndView mav = new ModelAndView();
//			mav.setViewName(viewName);
//			if (isRemoved) {
//				 mav.addObject("message", "회원 탈퇴가 완료되었습니다.");
//				 isRemoved = false;
//			}
//			
//		}
//		
//		return mav;
	}
	
	@Override
	@RequestMapping(value="/member/listMembers.do" ,method = RequestMethod.GET)
	public ModelAndView listMembers(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		List membersList = memberService.listMembers();
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("membersList", membersList);
		return mav;
	}

	@Override
	@RequestMapping(value="/member/modProfile.do" ,method = RequestMethod.GET)
	public ModelAndView modProfile(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		
		HttpSession session = request.getSession();
		studentVO = (StudentVO) session.getAttribute("student");
		String id = studentVO.getSTUDENT_ID();
		
		studentVO = memberService.selectStudent(id);
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("studentProfile", studentVO);
		return mav;
	}

	@Override
	@RequestMapping(value="/member/addMember.do", method = RequestMethod.POST)
	public ModelAndView addStudent(@ModelAttribute("student") StudentVO student,
			                  HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		int result = 0;
		result = memberService.addStudent(student);
		ModelAndView mav = new ModelAndView("redirect:/member/loginForm.do");
		return mav;
	}
	
	@Override
	@RequestMapping(value="/member/removeMember.do" ,method = RequestMethod.GET)
	public ModelAndView removeStudent(@RequestParam("id") String id, 
			           HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		memberService.removeStudent(id);
		HttpSession session = request.getSession();
		session.removeAttribute("student");
		session.removeAttribute("isLogOn"); 
		
		isRemoved = true;
		
		ModelAndView mav = new ModelAndView("redirect:/main.do");
		return mav;
	}
	
	@RequestMapping(value="/member/modMember.do", method = RequestMethod.POST)
	public ModelAndView modStudent(@ModelAttribute("student") StudentVO student,
            					  HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		memberService.modStudent(student);
		HttpSession session = request.getSession();

	    studentVO = memberService.login(student);
	    session.setAttribute("student", studentVO);
		
	    StudentVO studentVO = (StudentVO) session.getAttribute("student");
		String id = studentVO.getSTUDENT_ID();
		ModelAndView mav = new ModelAndView("redirect:/member/modProfile.do?id="+id);
		return mav;
	}

	@Override
	@RequestMapping(value = "/member/loginTest.do", method = RequestMethod.POST)
	public ModelAndView loginStudent(@ModelAttribute("student") StudentVO student,
				              RedirectAttributes rAttr,
		                       HttpServletRequest request, HttpServletResponse response) throws Exception {
	ModelAndView mav = new ModelAndView();
	studentVO = memberService.login(student);
	System.out.println("MemberControllerImpl의 loginStudent 실행");
	
	if(studentVO != null)
	{
	    HttpSession session = request.getSession();
	    
	    session.setAttribute("student", studentVO);
	    session.setAttribute("isLogOn", true);
	    
	    String action = (String)session.getAttribute("action");
	    session.removeAttribute("action");
	    
	    if (action!= null)
	    {
			studentVO = (StudentVO) session.getAttribute("student");
			String id = studentVO.getSTUDENT_ID();
			System.out.println("로그인 아이디 : " + id);
			
			if (id == "admin")
			{	
				mav.setViewName("redirect:/member/adminPage.do");
			}
			else
				mav.setViewName("redirect:"+action);
	    }
	    else 
	    {
	    	studentVO = (StudentVO) session.getAttribute("student");
			String id = studentVO.getSTUDENT_ID();
			System.out.println("로그인 아이디 : " + id);
			String admin = "admin";
			
	    	if (id.equals(admin))
			{	
				mav.setViewName("redirect:/member/adminPage.do");
			}
	    	else
	    		mav.setViewName("redirect:/main.do"); 
	    }

	}
	else 
	{
	   rAttr.addAttribute("result","loginFailed");
	   mav.setViewName("redirect:/member/loginForm.do");
	}
		return mav;
	}
	
	@Override
	@RequestMapping(value = "/member/logout.do", method =  RequestMethod.GET)
	public ModelAndView logoutStudent(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		session.removeAttribute("student");
		session.removeAttribute("isLogOn");
		ModelAndView mav = new ModelAndView();
		/* mav.setViewName("redirect:/member/listMembers.do"); */
		 mav.setViewName("redirect:/main.do"); 
		return mav;
	}	

	@RequestMapping(value = "/member/loginForm.do", method =  RequestMethod.GET)
	private ModelAndView loginform(@RequestParam(value= "result", required=false) String result,
							  @RequestParam(value= "action", required=false) String action,
						       HttpServletRequest request, 
						       HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		HttpSession session = request.getSession();
		session.setAttribute("action", action);  
		ModelAndView mav = new ModelAndView();
		mav.addObject("result",result);
		mav.setViewName(viewName);
		return mav;
	}
	
	@RequestMapping(value = "/member/memberForm.do", method =  RequestMethod.GET)
	private ModelAndView memberform(@RequestParam(value= "result", required=false) String result,
							  @RequestParam(value= "action", required=false) String action,
						       HttpServletRequest request, 
						       HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		HttpSession session = request.getSession();
		session.setAttribute("action", action);  
		ModelAndView mav = new ModelAndView();
		mav.addObject("result",result);
		mav.setViewName(viewName);
		return mav;
	}

	
	@RequestMapping(value = "/member/modMemberForm.do", method =  RequestMethod.GET)
	private ModelAndView profileform(@RequestParam(value= "result", required=false) String result,
			  						 @RequestParam(value= "action", required=false) String action,
//							   @RequestParam("id") String id,
						       HttpServletRequest request, 
						       HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
//		HttpSession session = request.getSession();
//		ModelAndView mav = new ModelAndView("redirect:/member/modProfile.do?id="+id);
		HttpSession session = request.getSession();
		session.setAttribute("action", action);  
		ModelAndView mav = new ModelAndView();
		mav.addObject("result", result);
		mav.setViewName(viewName);
		
//		mav.setViewName("redirect:/member/modProfile.do?id="+session.getId());
		return mav;
	}
	
	private String getViewName(HttpServletRequest request) throws Exception {
		String contextPath = request.getContextPath();
		String uri = (String) request.getAttribute("javax.servlet.include.request_uri");
		if (uri == null || uri.trim().equals("")) {
			uri = request.getRequestURI();
		}

		int begin = 0;
		if (!((contextPath == null) || ("".equals(contextPath)))) {
			begin = contextPath.length();
		}

		int end;
		if (uri.indexOf(";") != -1) {
			end = uri.indexOf(";");
		} else if (uri.indexOf("?") != -1) {
			end = uri.indexOf("?");
		} else {
			end = uri.length();
		}

		String viewName = uri.substring(begin, end);
		if (viewName.indexOf(".") != -1) {
			viewName = viewName.substring(0, viewName.lastIndexOf("."));
		}
		if (viewName.lastIndexOf("/") != -1) {
			viewName = viewName.substring(viewName.lastIndexOf("/", 1), viewName.length());
		}
		return viewName;
	}

	
	////////////// 강좌 Ddada ///////////////////
	@RequestMapping(value = "/lecture.do", method = RequestMethod.GET)
	public ModelAndView lecture(HttpServletRequest request, HttpServletResponse response) {		
		String viewName = (String)request.getAttribute("viewName");	
		System.out.println(viewName);
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("list", memberService.getList());
		mav.setViewName(viewName);
		return mav;
	}
	
	// 강좌 화면(원래 이게 메인, 지금은 안 씀!!)
	@RequestMapping(value = "/lectureInfo.do", method = RequestMethod.GET)
	public String list(Model model) {
		model.addAttribute("list", memberService.getList());
		return "lecture"; 
	}
	
	
	// 수강 중인 강좌에 추가
	@Override
	@RequestMapping(value="/insertOSLecture.do", method = RequestMethod.POST)
	public ModelAndView addLecture(@ModelAttribute("info") LectureVO lectureVO,
			   HttpServletRequest request, HttpServletResponse response) throws Exception {
		
//		String viewName = (String)request.getAttribute("viewName");	
//		int result = 0;
//		result = memberService.insertLecture(lectureVO);
//		
//		ModelAndView mav = new ModelAndView("redirect:/lecture.do");
//		mav.setViewName(viewName);
//		if (isInserted) {
//			mav.addObject("message", "수강 신청되었습니다.");
//		}
//		return mav;
		
		
		request.setCharacterEncoding("utf-8");
		int result = 0;
		result = memberService.insertLecture(lectureVO);
		
		ModelAndView mav = new ModelAndView("redirect:/member/mainPractice2.do");
		mav.addObject("message", "수강 신청되었습니다.");
		return mav;
	}

	//상세보기
	@RequestMapping(value = "/Information1.do", method = RequestMethod.GET)
	public String Information1(Model model, LectureVO lectureVO) {
		LectureVO ddada = memberService.detail(lectureVO);
		List<UserReviewVO> userreviewvo1 = memberService.getReview();
		model.addAttribute("userreviewvo", userreviewvo1); 
		model.addAttribute("list", memberService.curlist());
	    model.addAttribute("membervo", ddada); // jsp 부분은 헷갈릴 수 있으니 변수명 안 고쳤음!!
	    model.addAttribute("list2", memberService.detail2()); 
	    return "member/Information1";
	}
	   
	//동영상 페이지
	@RequestMapping(value = "/video.do", method = RequestMethod.GET)
	public String video(Model model, LectureVO lectureVO) {
		LectureVO video = memberService.getvideo(lectureVO);
	    model.addAttribute("membervo", video);
	    return "member/video";
	}
	
	
	//////////// 메인 및 관리자 페이지 ////////////////
	@Override
	@RequestMapping(value="/member/adminPage.do" ,method = RequestMethod.GET)
	public ModelAndView adminPage(HttpServletRequest request, HttpServletResponse response) throws Exception {
	      String viewName = (String)request.getAttribute("viewName");
	      List instructorList = memberService.listInstructor();
	      List membersList = memberService.listStudent();
	      ModelAndView mav = new ModelAndView(viewName);
	      mav.addObject("instructorList", instructorList);
	      mav.addObject("membersList", membersList);  // jsp 부분은 헷갈릴 수 있으니 변수명 안 고쳤음!!
	      return mav;
	}
	
	//어드민 추가
	   @RequestMapping(value="/member/adminInsert.do", method = RequestMethod.GET) 
	   public String getadminInsert() {

	   return "/member/adminInsert";
	   }
	   
	   
	   @RequestMapping(value="/member/adminInser.do", method = RequestMethod.POST) 
	      public String adminInsert(HttpServletRequest request, HttpServletResponse response, StudentVO studentVO)throws Exception {
	      
	      memberService.adminInsert(studentVO);
	      
	      return "redirect:/member/adminPage.do";
	   }
	   
	 //어드민 수정
		@RequestMapping(value="/member/adminUpdate.do", method = RequestMethod.GET) 
		public String adminUpdateView(StudentVO studentVO, Model model) throws Exception {
					
			model.addAttribute("StudentVO", memberService.adminUpdateView(studentVO) );
					
			return "/member/adminUpdate";
		}
			
		//어드민 수정
		@RequestMapping(value="/member/adminUpdat.do", method = RequestMethod.POST) 
		public String adminUpdate(StudentVO studentVO, Model model) throws Exception {
				
			memberService.adminUpdate(studentVO);
			
				
			return "redirect:/member/adminPage.do";
		}

	//////////// 도서 Ddada ////////////////
	
	   @Override
	   @RequestMapping(value = "/member/mainPractice2.do", method = {RequestMethod.GET, RequestMethod.POST})
	   public ModelAndView mainPractice2(HttpServletRequest request, HttpServletResponse response) throws Exception{
	      String viewName = (String)request.getAttribute("viewName");
	      
	      List takeBookList = memberService.listTakeBook();
	      
	      ModelAndView mav = new ModelAndView(viewName);      
	      mav.addObject("takeBookList", takeBookList);
	      return mav;
	   }



	   @RequestMapping(value= "/member/payment.do", method = {RequestMethod.GET, RequestMethod.POST} )
	    public String selectTakeList(Model model, @RequestParam("BOOK_NUM") String BOOK_NUM){
	      System.out.println(BOOK_NUM);
	      model.addAttribute("selectTakeList",memberService.selectTakeList(BOOK_NUM));
	      //여러 개를 담는 프로그래밍을 짜보자
//	      TakeBookVO data = memberService.pay(BOOK_NUM);
//	      model.addAttribute("data",data);
	      return "/member/payment";
	    }
	   
	   @RequestMapping(value= "/member/basket.do", method = {RequestMethod.GET, RequestMethod.POST} )
	    public String selectTake(Model model, @RequestParam("BOOK_NUM") String BOOK_NUM){
	      System.out.println(BOOK_NUM);
	      model.addAttribute("selectTake",memberService.selectTake(BOOK_NUM));
	      return "/member/basket";
	    }

	@Override
	public ModelAndView book(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	
	   
}
