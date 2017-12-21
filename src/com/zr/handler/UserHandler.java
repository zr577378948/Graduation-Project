package com.zr.handler;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Response;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.zr.beans.KeHu;
import com.zr.beans.User;
import com.zr.service.UserService;

@Controller

public class UserHandler {
	@Autowired
	private UserService uservice;

	public UserService getUservice() {
		return uservice;
	}

	public void setUservice(UserService uservice) {
		this.uservice = uservice;
	}

	/**
	 * ºóÌ¨µÇÂ½
	 * 
	 * @param user
	 * @param request
	 * @return
	 */
	@RequestMapping("login.handler")
	public ModelAndView login(User user, HttpServletRequest request) {
		User user1 = uservice.findUserByName(user);
		ModelAndView mv = new ModelAndView();
		if (user1 != null) {
			String username = user1.getUsername();
			request.getSession().setAttribute("username", username);
			mv.setViewName("index");
		} else {
			mv.setViewName("login");
		}
		return mv;
	}

	@RequestMapping("userlogin.handler")
	public ModelAndView findKeHuByKeHu_number(KeHu kehu, HttpServletRequest request,HttpServletResponse response,
			@RequestParam(value = "password", required = false) String password) {
		KeHu kehu1 = uservice.findKeHuByKeHu_number(kehu);
		ModelAndView mv = new ModelAndView();
		if (kehu1 != null) {
			String password1 = kehu1.getKehu_number();
			if(password.equals(password1.substring(password1.length()-6))){
			String kehu_name = kehu1.getKehu_name();
			int kehu_id = kehu1.getKehu_id();
			System.out.println(kehu_id);
			request.getSession().setAttribute("kehu_id", kehu_id);
			request.getSession().setAttribute("kehu_name", kehu_name);
			/*mv.setViewName("jsp/head/index");*/
			try {
				response.sendRedirect("jsp/head/index.jsp");
			} catch (IOException e) {
				e.printStackTrace();
			}
			}
		} else {
			mv.setViewName("userlogin");
		}
		return mv;
	}

}
