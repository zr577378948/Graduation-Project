package com.zr.handler;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.xml.bind.Binder;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import com.zr.beans.Card;
import com.zr.beans.KeHu;
import com.zr.beans.Pos;
import com.zr.service.CardService;
import com.zr.service.PosService;

@Controller

public class PosHandler {
	@Autowired
	private PosService pservice;

	public void setPservice(PosService pservice) {
		this.pservice = pservice;
	}

	public PosService getPservice() {
		return pservice;
	}

	private CardService cservice;

	public CardService getCservice() {
		return cservice;
	}

	public void setCservice(CardService cservice) {
		this.cservice = cservice;
	}

	/**
	 * 全查pos机消费记录
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("findAllPosInfo.handler")
	public ModelAndView findAllPosInfo(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		int pageSize = 8;
		int sumPages = 0;
		// 分页
		String flagDiv = request.getParameter("flagDiv");
		int sumRecords = pservice.findAllPosInfoCount();
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
			List<Pos> pos = pservice.findAllPosInfo(map);
			request.getSession().setAttribute("posList", pos);
			mv.addObject("posList", pos);
			mv.setViewName("/jsp/pos/pos-poslist");
			return mv;
		}

		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("start", 0);
		map.put("pageSize", 8);
		List<Pos> pos = pservice.findAllPosInfo(map);
		request.getSession().setAttribute("posList", pos);
		mv.addObject("posList", pos);
		mv.setViewName("/jsp/pos/pos-poslist");
		return mv;
	}

	@RequestMapping("findAllPosInfoByKeHu_name.handler")
	public ModelAndView findAllPosInfoByKeHu_name(Pos pos, HttpServletRequest request) {
		List<Pos> pos1 = pservice.findAllPosInfoByKeHu_name(pos);
		ModelAndView mv = new ModelAndView();
		mv.addObject("posList", pos1);
		mv.setViewName("/jsp/pos/pos-poslist");
		return mv;
	}

	@RequestMapping("find.handler")
	public ModelAndView find(Pos pos,HttpServletRequest request,
			@RequestParam("kehu_name") String kehu_name){
		ModelAndView mv = new ModelAndView();
		KeHu kehu = new KeHu();
		kehu.setKehu_name(kehu_name);
		pos.setKehu(kehu);
		List<Pos> pos1 = pservice.find(pos);
		mv.addObject("pos", pos1);
		mv.setView(new MappingJackson2JsonView());
		return mv;
	}

	
	@RequestMapping("insertPosInfo.handler")
	public ModelAndView insertPosInfo(Pos pos,HttpServletRequest request,@RequestParam(value = "card_number", required = false) Integer card_number){
		pos.setPos_number(card_number);
		ModelAndView mv = new ModelAndView();
		pservice.insertPosInfo(pos);
		mv.setViewName("/index");
		return mv;
	}
}
