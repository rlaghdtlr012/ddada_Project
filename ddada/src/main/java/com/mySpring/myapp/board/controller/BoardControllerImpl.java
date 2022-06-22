package com.mySpring.myapp.board.controller;
import java.io.File;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

// 준혁 임포트
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.mySpring.myapp.board.service.BoardPager;
import com.mySpring.myapp.board.service.BoardService;
import com.mySpring.myapp.board.service.ReplyService;
import com.mySpring.myapp.board.vo.ArticleVO;
import com.mySpring.myapp.board.vo.ImageVO;
import com.mySpring.myapp.member.vo.MemberVO;
import com.mySpring.myapp.member.vo.MemberVOTest;
import com.mySpring.myapp.member.vo.StudentVO;
import com.mySpring.myapp.board.vo.TakeLectureVO;
import com.mySpring.myapp.board.vo.UserPurchaseVO;

import com.mySpring.myapp.board.dao.BoardDAO;

import com.mySpring.myapp.board.vo.TakeLectureListVO;
import com.mySpring.myapp.board.vo.UserReviewVO;
import com.mySpring.myapp.board.vo.LicenseTalkVO;


@Controller("boardController")
public class BoardControllerImpl  implements BoardController{
	private static final String ARTICLE_IMAGE_REPO = "D:\\board\\article_image";
	
	// 준혁 파트
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private BoardService boardService;
	@Autowired
	private ArticleVO articleVO;
	@Autowired
	private TakeLectureListVO takeLectureListVO;
	@Autowired
	private StudentVO studentVO;
	@Autowired
	private UserReviewVO reviewVO;
	@Autowired
	private BoardDAO boardDAO;
	
	@Autowired
	private LicenseTalkVO LicenseTalkVO;
	@Autowired
	private ReplyService replyService;

	
	/* 이렇게 하면
	@RequestMapping(value= "/board/mapForm.do", method = RequestMethod.GET )
      public String create2() {
       
       return "/board/mapForm";
       }
	*/
	
	
	@Override
	@RequestMapping(value= "/board/listArticles.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView listArticles(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		List articlesList = boardService.listArticles();
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("articlesList", articlesList);
		return mav;
	}

	@Override
	@RequestMapping(value= "/board/listReview.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView reviewHistoryByID(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String viewName = (String)request.getAttribute("viewName");
		
		HttpSession session = request.getSession();
		studentVO = (StudentVO) session.getAttribute("student");
		String id = studentVO.getSTUDENT_ID();
		
		List userReviewList = boardService.listUserReviewList(id);
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("userReviewList", userReviewList);
		return mav;
	}

	// 테스트를 위한 임시 컨트롤러들
	@Override
	@RequestMapping(value= "/board/lecture.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView lecture(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		return mav;
	}
	@Override
	@RequestMapping(value= "/board/certification.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView certification(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		return mav;
	}
	@Override
	@RequestMapping(value= "/board/book.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView book(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		return mav;
	}
	@Override
	@RequestMapping(value= "/board/community.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView community(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		return mav;
	}
	
	@Override
	@RequestMapping(value= "/board/consultationHistory.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView consultationHistoryByID(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String viewName = (String)request.getAttribute("viewName");
		
		HttpSession session = request.getSession();
		studentVO = (StudentVO) session.getAttribute("student");
		String id = studentVO.getSTUDENT_ID();
		
		List userQAList = boardService.listUserQAList(id);

		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("userQAList", userQAList);
		return mav;
	}
	
	@Override
	@RequestMapping(value= "/board/modProfile.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView modProfile(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		List articlesList = boardService.listArticles();
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("articlesList", articlesList);
		return mav;
	}

	@Override
	@RequestMapping(value= "/board/purchaseHistory.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView lectureHistoryByID(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String viewName = (String)request.getAttribute("viewName");
		
		HttpSession session = request.getSession();
		studentVO = (StudentVO) session.getAttribute("student");
		String id = studentVO.getSTUDENT_ID();

		List takeLectureList = boardService.listTakeLectureList(id);

		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("takeLectureList", takeLectureList);
		return mav;
	}
	
	@Override
	@RequestMapping(value= "/board/userPurchaseList.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView purchaseHistoryByID(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		
		HttpSession session = request.getSession();
		studentVO = (StudentVO) session.getAttribute("student");
		String id = studentVO.getSTUDENT_ID();
		
		List userPurchaseList = boardService.listUserPurchaseList(id);
		
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("userPurchaseList", userPurchaseList);
		return mav;
	}

	@Override
	@RequestMapping(value= "/board/wishlistHistory.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView wishlistHistory(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		List articlesList = boardService.listArticles();
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("articlesList", articlesList);
		return mav;
	}
	@Override
	@RequestMapping(value= "/board/wishlistCertificateHistory.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView wishlistCertificateHistory(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		List articlesList = boardService.listArticles();
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("articlesList", articlesList);
		return mav;
	}
	
	@Override
	@RequestMapping(value= "/board/mapForm.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView mapForm(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		return mav;
	}
	
	
	@Override
	@RequestMapping(value="/board/addNewArticle.do" ,method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity addNewArticle(MultipartHttpServletRequest multipartRequest, 
	HttpServletResponse response) throws Exception {
		multipartRequest.setCharacterEncoding("utf-8");
		Map<String,Object> articleMap = new HashMap<String, Object>();
		Enumeration enu=multipartRequest.getParameterNames();
		while(enu.hasMoreElements()){
			String name=(String)enu.nextElement();
			String value=multipartRequest.getParameter(name);
			articleMap.put(name,value);
		}
		
		String imageFileName= upload(multipartRequest);
		HttpSession session = multipartRequest.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("member");
		String id = memberVO.getId();
		articleMap.put("parentNO", 0);
		articleMap.put("id", id);
		articleMap.put("imageFileName", imageFileName);
		
		String message;
		ResponseEntity resEnt=null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		try {
			int articleNO = boardService.addNewArticle(articleMap);
			if(imageFileName!=null && imageFileName.length()!=0) {
				File srcFile = new 
				File(ARTICLE_IMAGE_REPO+"\\"+"temp"+"\\"+imageFileName);
				File destDir = new File(ARTICLE_IMAGE_REPO+"\\"+articleNO);
				FileUtils.moveFileToDirectory(srcFile, destDir,true);
			}
	
			message = "<script>";
			message += " alert('占쏙옙占쏙옙占쏙옙 占쌩곤옙占쌩쏙옙占싹댐옙.');";
			message += " location.href='"+multipartRequest.getContextPath()+"/board/listArticles.do'; ";
			message +=" </script>";
		    resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
		}catch(Exception e) {
			File srcFile = new File(ARTICLE_IMAGE_REPO+"\\"+"temp"+"\\"+imageFileName);
			srcFile.delete();
			
			message = " <script>";
			message +=" alert('占쏙옙占쏙옙占쏙옙 占쌩삼옙占쌩쏙옙占싹댐옙. 占쌕쏙옙 占시듸옙占쏙옙 占쌍쇽옙占쏙옙');');";
			message +=" location.href='"+multipartRequest.getContextPath()+"/board/articleForm.do'; ";
			message +=" </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
			e.printStackTrace();
		}
		return resEnt;
	}

	@RequestMapping(value="/board/addNewReview.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity addNewReview(HttpServletRequest request, MultipartHttpServletRequest multipartRequest, 
	HttpServletResponse response) throws Exception {
		multipartRequest.setCharacterEncoding("utf-8");
		
		Map<String,Object> reviewMap = new HashMap<String, Object>();
		Enumeration enu=multipartRequest.getParameterNames();
		while(enu.hasMoreElements()) {
			String name=(String)enu.nextElement();
			String value=multipartRequest.getParameter(name);
			
			reviewMap.put(name, value); 
		}
		
//		String imageFileName= upload(multipartRequest);
		HttpSession session = request.getSession();
		StudentVO studentVO = (StudentVO) session.getAttribute("student");
		String id = studentVO.getSTUDENT_ID();
		reviewMap.put("PARENT_NO", 0);
		reviewMap.put("STUDENT_ID", id);
//		articleMap.put("imageFileName", imageFileName);
		
		String message;
		ResponseEntity resEnt=null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		try {
			int reviewNO = boardService.addNewReview(reviewMap);
//			if(imageFileName!=null && imageFileName.length()!=0) {
//				File srcFile = new
//				File(ARTICLE_IMAGE_REPO+"\\"+"temp"+"\\"+imageFileName);
//				File destDir = new File(ARTICLE_IMAGE_REPO+"\\"+articleNO);
//				FileUtils.moveFileToDirectory(srcFile, destDir,true);
//			}
			
			message = "<script>";
			message += " alert('리뷰 작성 완료.');";
			message += " location.href='"+multipartRequest.getContextPath()+"/board/listReview.do'; ";
			message +=" </script>";
		    resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
		}
		catch(Exception e) {
//			File srcFile = new File(ARTICLE_IMAGE_REPO+"\\"+"temp"+"\\"+imageFileName);
//			srcFile.delete();
			
			message = " <script>";
			message +=" alert('리뷰 작성에 실패했습니다. 다시 작성해주세요!');";
			message +=" location.href='"+multipartRequest.getContextPath()+"/board/reviewForm.do'; ";
			message +=" </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
			e.printStackTrace();
		}
		
		return resEnt;
	}

	@RequestMapping(value="/board/viewReview.do" ,method = RequestMethod.GET)
	public ModelAndView viewReview(@RequestParam("reviewNO") String reviewNO,
								   HttpServletRequest request, HttpServletResponse response) throws Exception{
		String viewName = (String)request.getAttribute("viewName");
		
		reviewVO = boardService.viewOneReview(reviewNO);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		mav.addObject("review", reviewVO);
		return mav;
	}

	@RequestMapping(value="/board/takeClassList.do" ,method = RequestMethod.GET)
	public ModelAndView takeLectureByID(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		
		HttpSession session = request.getSession();
		
		// 로그인이 되어있지 않을 경우 (임시로 처리해둠)
		if (session.getAttribute("student") != null)
		{
			studentVO = (StudentVO) session.getAttribute("student");
			String id = studentVO.getSTUDENT_ID();
			List takeLectureList = boardService.listTakeLectureList(id);
			List avgLecProgress = boardDAO.selectAllAVGLecProgress();
			ModelAndView mav = new ModelAndView(viewName);
			mav.addObject("takeLectureList", takeLectureList);
			mav.addObject("avgLecProgress", avgLecProgress);
			return mav;
		}
		else
		{
			ModelAndView mav = new ModelAndView(viewName);
			mav.setViewName("redirect:/member/loginForm.do");
			return mav;
		}
		
	}
	
	@RequestMapping(value="/board/modReview.do" ,method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity modArticle(HttpServletRequest request, MultipartHttpServletRequest multipartRequest,  
	    HttpServletResponse response) throws Exception {
	    multipartRequest.setCharacterEncoding("utf-8");
		Map<String,Object> reviewMap = new HashMap<String, Object>();
		Enumeration enu=multipartRequest.getParameterNames();
		while(enu.hasMoreElements()){
			String name=(String)enu.nextElement();
			String value=multipartRequest.getParameter(name);
			System.out.println(name + " " + value);
			reviewMap.put(name, value);
		}

		HttpSession session = request.getSession();
		StudentVO studentVO = (StudentVO) session.getAttribute("student");
		String id = studentVO.getSTUDENT_ID();
		reviewMap.put("STUDENT_ID", id);
		
		String reviewNO = (String)reviewMap.get("REVIEW_NO");
		String message;
		ResponseEntity resEnt=null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
	    try
	    {
	       boardService.modReview(reviewMap);

	       message = "<script>";
		   message += " alert('리뷰 수정 완료.');";
		   message += " location.href='"+multipartRequest.getContextPath()+"/board/viewReview.do?reviewNO="+reviewNO+"';";
		   message +=" </script>";
	       resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
	    }
	    catch(Exception e)
	    {
	      message = "<script>";
		  message += " alert('리뷰 수정 실패! 다시 작성해주세요.');";
		  message += " location.href='"+multipartRequest.getContextPath()+"/board/viewReview.do?reviewNO="+reviewNO+"';";
		  message +=" </script>";
	      resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
	    }
	    return resEnt;
	  }
  
  @Override
  @RequestMapping(value="/board/removeArticle.do" ,method = RequestMethod.POST)
  @ResponseBody
  public ResponseEntity  removeArticle(@RequestParam("articleNO") int articleNO,
                              HttpServletRequest request, HttpServletResponse response) throws Exception{
	response.setContentType("text/html; charset=UTF-8");
	String message;
	ResponseEntity resEnt=null;
	HttpHeaders responseHeaders = new HttpHeaders();
	responseHeaders.add("Content-Type", "text/html; charset=utf-8");
	try {
		boardService.removeArticle(articleNO);
		File destDir = new File(ARTICLE_IMAGE_REPO+"\\"+articleNO);
		FileUtils.deleteDirectory(destDir);
		
		message = "<script>";
		message += " alert('占쏙옙占쏙옙 占쏙옙占쏙옙占쌩쏙옙占싹댐옙.');";
		message += " location.href='"+request.getContextPath()+"/board/listArticles.do';";
		message +=" </script>";
	    resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
	       
	}catch(Exception e) {
		message = "<script>";
		message += " alert('占쌜억옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쌩삼옙占쌩쏙옙占싹댐옙.占쌕쏙옙 占시듸옙占쏙옙 占쌍쇽옙占쏙옙.');";
		message += " location.href='"+request.getContextPath()+"/board/listArticles.do';";
		message +=" </script>";
	    resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
	    e.printStackTrace();
	}
	return resEnt;
  }  
  
  @Override
  @RequestMapping(value="/board/removeReview.do" ,method = RequestMethod.POST)
  @ResponseBody
  public ResponseEntity removeReview(@RequestParam("reviewNO") String reviewNO,
                              HttpServletRequest request, HttpServletResponse response) throws Exception{
	response.setContentType("text/html; charset=UTF-8");
	String message;
	ResponseEntity resEnt=null;
	HttpHeaders responseHeaders = new HttpHeaders();
	responseHeaders.add("Content-Type", "text/html; charset=utf-8");
	try {
		boardService.removeReview(reviewNO);
		
		message = "<script>";
		message += " alert('리뷰를 삭제하였습니다.');";
		message += " location.href='"+request.getContextPath()+"/board/listReview.do';";
		message +=" </script>";
	    resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
	       
	}catch(Exception e) {
		message = "<script>";
		message += " alert('리뷰 삭제에 실패했습니다. 다시 시도해주세요.');";
		message += " location.href='"+request.getContextPath()+"/board/listReview.do';";
		message +=" </script>";
	    resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
	    e.printStackTrace();
	}
	return resEnt;
  } 

    // 엄마 나 눈물 날 것 같아... 하...
	@RequestMapping(value="/board/reviewForm.do" , method = RequestMethod.GET)
	public ModelAndView form(@RequestParam("LEC_NAME") String LEC_NAME,
	                                HttpServletRequest request, HttpServletResponse response) throws Exception {
			String viewName = (String)request.getAttribute("viewName");
			ModelAndView mav = new ModelAndView(viewName);
			mav.addObject("takeLectureName", LEC_NAME);
			return mav;
	}
	
	

	//占싼곤옙 占싱뱄옙占쏙옙 占쏙옙占싸듸옙占싹깍옙
	private String upload(MultipartHttpServletRequest multipartRequest) throws Exception{
		String imageFileName= null;
		Iterator<String> fileNames = multipartRequest.getFileNames();
		
		while(fileNames.hasNext()){
			String fileName = fileNames.next();
			MultipartFile mFile = multipartRequest.getFile(fileName);
			imageFileName=mFile.getOriginalFilename();
			File file = new File(ARTICLE_IMAGE_REPO +"\\"+ fileName);
			if(mFile.getSize()!=0){ //File Null Check
				if(! file.exists()){ //占쏙옙貫占� 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占�
					if(file.getParentFile().mkdirs()){ //占쏙옙恝占� 占쌔댐옙占싹댐옙 占쏙옙占썰리占쏙옙占쏙옙 占쏙옙占쏙옙
							file.createNewFile(); //占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙
					}
				}
				mFile.transferTo(new File(ARTICLE_IMAGE_REPO +"\\"+"temp"+ "\\"+imageFileName)); //占쌈시뤄옙 占쏙옙占쏙옙占� multipartFile占쏙옙 占쏙옙占쏙옙 占쏙옙占싹뤄옙 占쏙옙占쏙옙
			}
		}
		return imageFileName;
	}
	
	
	
	
	////////// 자격증 Ddada ////////////
	   @RequestMapping(value= "/board/certificateInfo.do", method = RequestMethod.GET )
	      public String create1() {
	         return "/board/certificateInfo";
	      }
	   
	   @RequestMapping(value= "/board/mapForm.do", method = RequestMethod.GET )
	      public String create2() {
	       return "/board/mapForm";
	       }
	   
	   @RequestMapping(value= "/board/informationProcessing.do", method = RequestMethod.GET )
	      public String create3() {
	       return "/board/informationProcessing";
	       }
	   
	   @RequestMapping(value= "/board/computerUse.do", method = RequestMethod.GET )
	   public String create12() {
	    return "/board/computerUse";
	    }

	   @RequestMapping(value= "/board/MSAzure.do", method = RequestMethod.GET )
	      public String create5() {
	       return "/board/MSAzure";
	       }
	   
	   @RequestMapping(value= "/board/networkManagement.do", method = RequestMethod.GET )
	   public String create6() {
	    return "/board/networkManagement";
	    }
	   
	   @RequestMapping(value= "/board/linuxMaster.do", method = RequestMethod.GET )
	   public String create7() {
	    return "/board/linuxMaster";
	    }
	   
	   @RequestMapping(value= "/board/informationSecure.do", method = RequestMethod.GET )
	   public String create8() {
	    return "/board/informationSecure";
	    }
	   
	   @RequestMapping(value= "/board/informationManage.do", method = RequestMethod.GET )
	   public String create10() {
	    return "/board/informationManage";
	    }
	   
	   @RequestMapping(value= "/board/word.do", method = RequestMethod.GET )
	   public String create4() {
	    return "/board/word";
	    }
	   
	   @RequestMapping(value = "/board/sqld.do", method =  {RequestMethod.GET, RequestMethod.POST})
	   public ModelAndView takeCertiList(HttpServletRequest request, HttpServletResponse response) throws Exception {
	      String viewName = (String)request.getAttribute("viewName");
//	      List takeCertiList = boardService.listTakeCerti();
	      ModelAndView mav = new ModelAndView(viewName);
//	      mav.addObject("takeCertiList",takeCertiList);
	      mav.setViewName(viewName);
	      return mav;
	   }

	   
	   
	   ///////////// 커뮤니티 Ddada //////////////////
	// 01. LicenseTalk 게시글 목록
	   @RequestMapping("/board/LicenseTalkList.do")
	   public ModelAndView LicenseTalkList(@RequestParam(defaultValue="title")String searchOption,
	                                          @RequestParam(defaultValue="")String keyword,
	                                          @RequestParam(defaultValue="1") int curPage)throws Exception {
	      //레코드의 갯수
	      int count = boardService.countLicenseTalk(searchOption, keyword);
	      // 페이지 나누기 관련 처리
	      BoardPager boardPager = new BoardPager(count, curPage);
	      int start = boardPager.getPageBegin();
	      int end = boardPager.getPageEnd();
	      
//	      List<LicenseTalkVO> list = boardService.LicenseTalkListAll(start, end, searchOption, keyword);
	      List list = boardService.LicenseTalkListAll(start, end, searchOption, keyword);
	      
	      // ModelAndView - 모델과 뷰
	      ModelAndView mav = new ModelAndView();
	      
	      // 데이터를 맵에 저장
	      Map<String, Object> map = new HashMap<String, Object>();
	      map.put("LicenseTalkList", list); // list
	      map.put("count", count); // 레코드의 갯수
	      map.put("searchOption", searchOption); // 검색옵션
	      map.put("keyword", keyword); // 검색키워드
	      map.put("boardPager", boardPager);
	      mav.setViewName ("/board/LicenseTalkList"); // 뷰를 LicenseTalkList.jsp로 설정
	      mav.addObject("map", map);
	      return mav; // LicenseTalkList.jsp List가 전달된다.
	   }
	   
	   // 02-01. LicenseTalk 작성화면
	   @RequestMapping(value= "/board/LicenseTalkWrite.do", method = RequestMethod.GET)
	   public  String LicenseTalkWrite (){
	      return "/board/LicenseTalkWrite";
	   }
	   
	   // 02-02. LicenseTalk 작성처리
	   @RequestMapping(value= "/board/LicenseTalkInsert.do", method = RequestMethod.POST)
	   public  String LicenseTalkInsert (@ModelAttribute LicenseTalkVO vo, HttpSession session) throws Exception{
	      //session에 저장된 userId를 writer에 저장
	      String writer = (String) session.getAttribute("userId");
	      // vo에 writer를 세팅
	      vo.setWRITER(writer);
	      boardService.LicenseTalkCreate(vo);
	      return "redirect:LicenseTalkList.do";
	   }
	   
	   // 03. LicenseTalkList 게시글 상세내용 조회, 게시글 조회수 증가 처리
	   @RequestMapping(value="/board/LicenseTalkView.do", method = RequestMethod.GET)
	   public ModelAndView LicenseTalkView(@RequestParam int LicenseTalkNO, @RequestParam int curPage, @RequestParam String searchOption,
	                                             @RequestParam String keyword, HttpSession session) throws Exception{
	      // 조회 수 증가 처리
	      boardService.LicenseTalkIncreaseViewcnt(LicenseTalkNO, session);
	      System.out.println("ControllerImpl 조회수 증가처리 댐");
	      //모델(데이터)+뷰(화면)를 함께 전달하는 객체
	      ModelAndView mav = new ModelAndView();
	      //뷰의 이름
	      mav.setViewName("/board/LicenseTalkView");
	      //뷰에 전달할 데이터
//	      mav.addObject("count", ReplyService.count(LicenseTalkNO)); // 우선 주석 처리
	      mav.addObject("count", replyService.count(LicenseTalkNO)); // 우선 주석 처리
	      mav.addObject("LiceneseTalk",boardService.LicenseTalkRead(LicenseTalkNO));
	      mav.addObject("curPage", curPage);
	      mav.addObject("searchOption", searchOption);
	      mav.addObject("keyword", keyword);
	      logger.info("mav:", mav);
	      return mav;
	   }
	   
	   // 04. LicenseTalk 게시글 수정
	   // 입력한 내용들은 @ModelAttribute LicenseTalkVO vo로 전달됨)
	   @RequestMapping(value="/board/LicenseTalkUpdate.do", method=RequestMethod.POST)
	   public String LicenseTalkUpdate(@ModelAttribute LicenseTalkVO vo) throws Exception{
	      boardService.LicenseTalkUpdate(vo);
	      return "redirect:LicenseTalkList.do";
	   }
	   
	   // 05. 게시글 삭제
	   @RequestMapping("LicenseTalkDelete.do")
	   public String LicenseTalkDelete(@RequestParam int LicenseTalkNO) throws Exception{
	      boardService.LicenseTalkDelete(LicenseTalkNO);
	      return "redirect:LicenseTalkList.do";
	   }
	   
	   // 06. 게시글 첨부파일 목록
	      // http://loacalhost/spring02/board/getAttach/1
	      // @PathVariable : parameter가 아닌 url에 포함된 변수
	      // @RequestParam : parameter변수
	      @RequestMapping("/getAttach/{LicenseTalkNO}")
	      @ResponseBody // view가 아닌 data를 리턴
	      public List<String> getAttach(@PathVariable("LicenseTalkNO") int LicenseTalkNO){
	         return boardService.getAttach(LicenseTalkNO);
	      }
	   
	   @RequestMapping(value= "/board/notice.do", method = RequestMethod.GET )
	    public String create22() { return "/board/notice"; }
	    
	   
	   @RequestMapping(value= "/board/faq.do", method = RequestMethod.GET )
	    public String create13() {
	      return "/board/faq";
	     }
	   
	   @RequestMapping(value= "/board/ask.do", method = RequestMethod.GET )
	    public String create14() {
	      return "/board/ask";
	     }
	   
	   
	   @RequestMapping(value= "/board/ask2.do", method = RequestMethod.GET )
	    public String create15() {
	      return "/board/ask2";
	     }
	   
	   @RequestMapping(value= "/board/FreeTalkList.do", method = RequestMethod.GET )
	    public String create16() {
	      return "/board/FreeTalkList";
	     }
	   
}
