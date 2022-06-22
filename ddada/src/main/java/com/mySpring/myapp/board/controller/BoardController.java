package com.mySpring.myapp.board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.mySpring.myapp.board.vo.LicenseTalkVO;


public interface BoardController {
	
	public ModelAndView listArticles(HttpServletRequest request, HttpServletResponse response) throws Exception;
//	public ModelAndView listReview(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
//	public ModelAndView takeClassList(HttpServletRequest request, HttpServletResponse response) throws Exception;
//	public ModelAndView userPurchaseList(HttpServletRequest request, HttpServletResponse response) throws Exception;
//	public ModelAndView userQAList(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView	modProfile(HttpServletRequest request, HttpServletResponse response) throws Exception;
//	public ModelAndView	purchaseHistory(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView	wishlistHistory(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView wishlistCertificateHistory(HttpServletRequest request, HttpServletResponse response) throws Exception;
	//public ModelAndView consultationHistory(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView mapForm(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public ResponseEntity addNewArticle(MultipartHttpServletRequest multipartRequest,HttpServletResponse response) throws Exception;
//	public ResponseEntity addNewReview(MultipartHttpServletRequest multipartRequest,HttpServletResponse response) throws Exception;
	
//	public ModelAndView viewArticle(@RequestParam("articleNO") int articleNO,
//			                        HttpServletRequest request, HttpServletResponse response) throws Exception;
//	public ModelAndView viewArticle(@RequestParam("LEC_NAME") String LEC_NAME,
//            HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	//public ResponseEntity modArticle(MultipartHttpServletRequest multipartRequest,  HttpServletResponse response) throws Exception;
	public ResponseEntity  removeArticle(@RequestParam("articleNO") int articleNO,
                              HttpServletRequest request, HttpServletResponse response) throws Exception;

	public ModelAndView lecture(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView certification(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView book(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView community(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	
	// DDADA DB	
	public ModelAndView takeLectureByID(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView lectureHistoryByID(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView purchaseHistoryByID(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView consultationHistoryByID(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView reviewHistoryByID(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ResponseEntity addNewReview(HttpServletRequest request, MultipartHttpServletRequest multipartRequest,HttpServletResponse response) throws Exception;
	public ModelAndView viewReview(@RequestParam("reviewNO") String reviewNO,
            						HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ResponseEntity removeReview(@RequestParam("reviewNO") String reviewNO,
            HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	// ÁØÇõ ÆÄÆ®
	public ModelAndView LicenseTalkList(@RequestParam(defaultValue="title")String searchOption,
	         @RequestParam(defaultValue="")String keyword,
	         @RequestParam(defaultValue="1") int curPage)throws Exception ;
	   public String LicenseTalkWrite();
	   public  String LicenseTalkInsert (@ModelAttribute LicenseTalkVO vo, HttpSession session) throws Exception;
	   
	   public ModelAndView LicenseTalkView(@RequestParam int LicenseTalkNO, @RequestParam int curPage, @RequestParam String searchOption,
	         @RequestParam String keyword, HttpSession session) throws Exception;
}
