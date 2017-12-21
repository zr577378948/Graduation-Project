package com.zr.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;


public class UserInterceptor implements HandlerInterceptor{

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		
	}

	@Override
	public boolean preHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2) throws Exception {
		String username = (String) arg0.getSession().getAttribute("username");
		System.out.println("username:"+username);
		String path = arg0.getServletPath();
		System.out.println("path"+path);
		
		if(path.contains("index")){
			if(username==null){
			arg1.sendRedirect("../../login.jsp"); 
			System.out.println("asdsadds");
		}
		}
		
		/*
		if(username==null){
			arg1.sendRedirect("../../login.jsp"); 
			System.out.println("asdsadds");
		}*/
		
		return true;
	}

}
