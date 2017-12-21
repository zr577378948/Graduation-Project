package com.zr.handler;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import com.zr.beans.Apply;
import com.zr.beans.Card;
import com.zr.beans.KeHu;
import com.zr.service.KeHuService;

@Controller

public class KeHuHandler {
	@Autowired
	private KeHuService kservice;

	public KeHuService getKservice() {
		return kservice;
	}

	public void setKservice(KeHuService kservice) {
		this.kservice = kservice;
	}

	/**
	 * 显示客户基本信息
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("findAllKeHu.handler")
	public ModelAndView findAllKeHu(HttpServletRequest request) {

		ModelAndView mv = new ModelAndView();
		int pageSize = 7;
		int sumPages = 0;
		// 分页
		String flagDiv = request.getParameter("flagDiv");
		int sumRecords = kservice.queryAllKeHu();
		/* System.out.println("总记录数：" + sumRecords); */

		if (sumRecords % pageSize == 0) {
			sumPages = sumRecords / pageSize;
		} else {
			sumPages = sumRecords / pageSize + 1;
		}
		request.getSession().setAttribute("sumPages", sumPages);
		if (request.getSession().getAttribute("nowPage") == null) {
			int nowPage = 1;
			request.getSession().setAttribute("nowPage", nowPage);
		} else {
			int nowPage = (int) request.getSession().getAttribute("nowPage");
			// 判断是否点击分页查询
			if (flagDiv != null) {
				// 实现分页
				if (flagDiv.equals("prev")) {
					// 上一页
					if (nowPage > 1) {
						nowPage--;
					} else {
						nowPage = 1;
					}
				} else if (flagDiv.equals("next")) {
					// 下一页
					if (nowPage < sumPages) {
						nowPage++;
					}
				} else if (flagDiv.equals("first")) {
					// 首页
					nowPage = 1;
				} else if (flagDiv.equals("last")) {
					// 最后一页,即：总页数
					nowPage = sumPages;
				}
			}

			request.getSession().setAttribute("nowPage", nowPage);
			/* System.out.println("当前页:>>>>>>>>>>>>>>>" + nowPage); */
			Map<String, Integer> map = new HashMap<String, Integer>();
			map.put("start", pageSize * (nowPage - 1));
			map.put("pageSize", pageSize);
			List<KeHu> kehus = kservice.findAllKeHu(map);
			request.getSession().setAttribute("kehusList", kehus);
			mv.addObject("kehusList", kehus);
			mv.setViewName("/jsp/user/user-baselist");
			return mv;

		}
		// 默认设置第一页
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("start", 0);
		map.put("pageSize", 7);
		List<KeHu> kehus = kservice.findAllKeHu(map);
		request.getSession().setAttribute("kehusList", kehus);
		mv.addObject("kehusList", kehus);
		mv.setViewName("/jsp/user/user-baselist");
		return mv;
	}

	/**
	 * 根据姓名模糊查询客户基本信息
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("findByKeHu_name.handler")
	public ModelAndView findByKeHu_name(KeHu kehu, HttpServletRequest request,
			@RequestParam("kehu_name") String kehu_name) {
		ModelAndView mv = new ModelAndView();
		kehu.setKehu_name(kehu_name);
		List<KeHu> kehus = kservice.findByKeHu_name(kehu);
		request.getSession().setAttribute("kehusList", kehus);
		mv.addObject("kehusList", kehus);
		mv.setViewName("/jsp/user/user-baselist");
		return mv;
	}

	/**
	 * 添加客户基本信息
	 * 
	 * @param kehu
	 * @param request
	 * @return
	 */
	@RequestMapping("insertKeHu.handler")
	public ModelAndView insertKeHu(KeHu kehu, HttpServletRequest request) {
		kservice.insertKeHu(kehu);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/jsp/user/user-baselist");
		return mv;
	}

	/**
	 * 根据id查询客户基本信息
	 * 
	 * @return
	 */
	@RequestMapping("findByKeHu_id.handler")
	public ModelAndView findByKeHu_id(HttpServletRequest request,
			@RequestParam(value = "kehu.kehu_id", required = false) Integer id) {
		ModelAndView mv = new ModelAndView();
		KeHu kehu = new KeHu();
		kehu.setKehu_id(id);
		kehu = kservice.findByKeHu_id(kehu);
		mv.addObject("kehu", kehu);
		mv.setViewName("/jsp/user/user-update");
		return mv;
	}

	/**
	 * 更新客户基本信息
	 * 
	 * @param kehu
	 * @param request
	 * @return
	 */
	@RequestMapping("updateKeHu.handler")
	public ModelAndView updateKeHu(@ModelAttribute KeHu kehu) {
		ModelAndView mv = new ModelAndView();
		kservice.updateKeHu(kehu);
		/* mv.setViewName("/jsp/user/user-baselist"); */
		mv.setViewName("forward:/findAllKeHu.handler");
		return mv;
	}

	/**
	 * 全查客户申请信息
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("findAllApply.handler")
	public ModelAndView findAllApply(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		int pageSize = 5;
		int sumPages = 0;
		// 分页
		String flagDiv = request.getParameter("flagDiv");
		int sumRecords = kservice.findAllApplyCount();
		/* System.out.println("总记录数：" + sumRecords); */

		if (sumRecords % pageSize == 0) {
			sumPages = sumRecords / pageSize;
		} else {
			sumPages = sumRecords / pageSize + 1;
		}
		request.getSession().setAttribute("sumPages", sumPages);
		if (request.getSession().getAttribute("nowPage") == null) {
			int nowPage = 1;
			request.getSession().setAttribute("nowPage", nowPage);
		} else {
			int nowPage = (int) request.getSession().getAttribute("nowPage");
			// 判断是否点击分页查询
			if (flagDiv != null) {
				// 实现分页
				if (flagDiv.equals("prev")) {
					// 上一页
					if (nowPage > 1) {
						nowPage--;
					} else {
						nowPage = 1;
					}
				} else if (flagDiv.equals("next")) {
					// 下一页
					if (nowPage < sumPages) {
						nowPage++;
					}
				} else if (flagDiv.equals("first")) {
					// 首页
					nowPage = 1;
				} else if (flagDiv.equals("last")) {
					// 最后一页,即：总页数
					nowPage = sumPages;
				}
			}

			request.getSession().setAttribute("nowPage", nowPage);
			/* System.out.println("当前页:>>>>>>>>>>>>>>>" + nowPage); */
			Map<String, Integer> map = new HashMap<String, Integer>();
			map.put("start", pageSize * (nowPage - 1));
			map.put("pageSize", pageSize);
			List<Apply> applys = kservice.findAllApply(map);
			request.getSession().setAttribute("applysList", applys);
			mv.addObject("applysList", applys);
			mv.setViewName("/jsp/user/user-applylist");
			return mv;

		}
		// 默认设置第一页
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("start", 0);
		map.put("pageSize", 5);
		List<Apply> applys = kservice.findAllApply(map);
		request.getSession().setAttribute("applysList", applys);
		mv.addObject("applysList", applys);
		mv.setViewName("/jsp/user/user-applylist");
		return mv;
	}

	/**
	 * 通过名字模糊查询客户申请信息
	 * 
	 * @param apply
	 * @param request
	 * @return
	 */
	/*
	 * @RequestMapping("findApplyByKeHu_name.handler") public ModelAndView
	 * findApplyByKeHu_name(Apply apply, HttpServletRequest request) {
	 * ModelAndView mv = new ModelAndView(); List<Apply> applys =
	 * kservice.findApplyByKeHu_name(apply); mv.addObject("applysList", applys);
	 * mv.setViewName("/jsp/user/user-applylist"); return mv; }
	 */
	@RequestMapping("findApplyByKeHu_name.handler")
	public ModelAndView findApplyByKeHu_name(Apply apply, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		List<Apply> applys = kservice.findApplyByKeHu_name(apply);
		mv.addObject("applysList", applys);
		mv.setViewName("/jsp/user/user-applylist");
		return mv;
	}

	/**
	 * 审批通过
	 * 
	 * @param apply
	 * @param request
	 * @param id
	 * @return
	 */
	@RequestMapping("shenpi.handler")
	public ModelAndView shenpi(Apply apply, HttpServletRequest request,
			@RequestParam(value = "applys.apply_id", required = false) Integer id) {
		ModelAndView mv = new ModelAndView();
		apply.setApply_id(id);
		kservice.shenpi(apply);
		/* mv.setViewName("/jsp/user/user-applylist"); */
		mv.setViewName("forward:/findAllApply.handler");

		return mv;
	}

	/**
	 * 审批拒绝
	 * 
	 * @param apply
	 * @param request
	 * @param id
	 * @return
	 */
	@RequestMapping("shenpino.handler")
	public ModelAndView shenpino(Apply apply, HttpServletRequest request,
			@RequestParam(value = "applys.apply_id", required = false) Integer id) {
		ModelAndView mv = new ModelAndView();
		apply.setApply_id(id);
		kservice.shenpino(apply);
		/* mv.setViewName("/jsp/user/user-applylist"); */
		mv.setViewName("forward:/findAllApply.handler");
		return mv;
	}

	@RequestMapping("find_kehu_name.handler")
	public ModelAndView find_kehu_name(KeHu kehu, HttpServletRequest request,
			@RequestParam("kehu_name") String kehu_name) {
		ModelAndView mv = new ModelAndView();
		kehu.setKehu_name(kehu_name);
		KeHu kehu1 = kservice.find_kehu_name(kehu);
		if (kehu1 == null) {
		} else {
			System.out.println(kehu1.getCards());
		}
		mv.addObject("kehu", kehu1);
		mv.setView(new MappingJackson2JsonView());
		return mv;

	}
	
}
