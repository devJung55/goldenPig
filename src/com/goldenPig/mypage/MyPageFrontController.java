package com.goldenPig.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.Result;
import com.mysql.cj.x.protobuf.MysqlxPrepare.Execute;

public class MyPageFrontController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath , "").split("\\.")[0];
		Result result = null;
	
		
		
		if(target.equals("/profile")) {
			result = new Result();
			new MyPageProfileController();
			
		}else if(target.equals("/modifyOk")) {
			new MyPageModifyOkController();
			
		}else if(target.equals("/answer")) {
			new MyPageAnswerController();
			
		}else if(target.equals("/question")) {
			new MyPageQuestionController();
			
		}else if(target.equals("/scrap")) {
			new MyPageScrapController();
			
		}else if(target.equals("/scrap")) {
			new MyPageDeleteOKController().execute(req, resp);
			
		}else {
			System.out.println(target);
		}
		
		if(result != null) {
			if(result.isRedirect()) {
				resp.sendRedirect(result.getPath());
			}else {
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
		}
	
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
