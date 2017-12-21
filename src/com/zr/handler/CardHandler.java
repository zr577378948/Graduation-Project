package com.zr.handler;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.zr.beans.Bill;
import com.zr.beans.Card;
import com.zr.beans.KeHu;
import com.zr.beans.Pos;
import com.zr.service.CardService;
import com.zr.service.PosService;

@Controller

public class CardHandler {
	@Autowired
	private CardService cservice;

	public CardService getCservice() {
		return cservice;
	}

	public void setCservice(CardService cservice) {
		this.cservice = cservice;
	}
	@Autowired
	private PosService pservice;
	

	public PosService getPservice() {
		return pservice;
	}

	public void setPservice(PosService pservice) {
		this.pservice = pservice;
	}

	/**
	 * 显示客户基本信息
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("findAllCard.handler")
	public ModelAndView findAllCard(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		int pageSize = 7;
		int sumPages = 0;
		// 分页
		String flagDiv = request.getParameter("flagDiv");
		int sumRecords = cservice.findAllCardCount();
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
			List<Card> cards = cservice.findAllCard(map);
			request.getSession().setAttribute("kehusList", cards);
			mv.addObject("kehusList", cards);
			mv.setViewName("/jsp/card/card-infolist");
			return mv;
		}
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("start", 0);
		map.put("pageSize", 7);
		List<Card> cards = cservice.findAllCard(map);
		request.getSession().setAttribute("kehusList", cards);
		mv.addObject("kehusList", cards);
		mv.setViewName("/jsp/card/card-infolist");
		return mv;
	}

	/**
	 * 禁用信用卡
	 * 
	 * @param card
	 * @param request
	 * @return
	 */
	@RequestMapping("jinyong.handler")
	public ModelAndView jinyong(Card card, HttpServletRequest request,
			@RequestParam(value = "kehucards.card_id", required = false) Integer id) {
		ModelAndView mv = new ModelAndView();
		card.setCard_id(id);
		cservice.jinyong(card);
		/* mv.setViewName("/jsp/user/user-baselist"); */
		mv.setViewName("forward:/findAllKeHu.handler");
		return mv;
	}

	/**
	 * 根据用户名查询信用卡信息
	 * 
	 * @param card
	 * @param request
	 * @return
	 */
	@RequestMapping("findAllCardByKeHu_name1.handler")
	public ModelAndView findAllCardByKeHu_name1(KeHu card, HttpServletRequest request) {
		List<KeHu> cards = cservice.findAllCardByKeHu_name1(card);
		ModelAndView mv = new ModelAndView();
		mv.addObject("kehusList", cards);
		mv.setViewName("/jsp/card/card-infolist");
		return mv;
	}

	/**
	 * 更新信用卡剩余额度
	 * 
	 * @param card
	 * @param request
	 * @param pay_num
	 * @param card_number
	 * @return
	 */
	@RequestMapping("updateCard_remainder.handler")
	public ModelAndView updateCard_remainder(Card card, HttpServletRequest request,
			@RequestParam(value = "pay_num", required = false) Double pay_num,
			@RequestParam(value = "card_number", required = false) Integer card_number) {
		ModelAndView mv = new ModelAndView();
		card.setPay_num(pay_num);
		card.setCard_number(card_number);
		cservice.updateCard_remainder(card);
		mv.setViewName("forward:/insertPosInfo.handler");
		return mv;
	}

	/*
	 * @RequestMapping("findBillDate.handler") public ModelAndView
	 * findBillDate(Bill bill, HttpServletRequest request, HttpServletResponse
	 * response,
	 * 
	 * @RequestParam(value = "card_id", required = false) Integer card_id) {
	 * ModelAndView mv = new ModelAndView(); Card card = new Card();
	 * card.setCard_id(card_id); bill.setCard(card); Bill bill1 =
	 * cservice.findBillDate(bill); System.out.println(bill1); if (bill1 !=
	 * null) { try { response.sendRedirect("jsp/head/index.jsp"); } catch
	 * (IOException e) { // TODO Auto-generated catch block e.printStackTrace();
	 * } } else { mv.setViewName("jsp/head/index"); } System.out.println("kk");
	 * return mv; }
	 */
	
	/**
	 * 还款（更新可用额度和积分）
	 * 
	 * @param bill
	 * @param card_number
	 * @param repay
	 * @return
	 */
	@RequestMapping("huankuan.handler")
	public ModelAndView huankuan(Bill bill, HttpServletResponse response,
			@RequestParam(value = "kehu_id", required = false) Integer kehu_id,
			@RequestParam(value = "card_number", required = false) Integer card_number,
			@RequestParam(value = "repay", required = false) Double repay,
			@RequestParam(value = "pay_time", required = false) String pay_time) {
		ModelAndView mv = new ModelAndView();
		Pos pos = new Pos();
		pos.setPos_number(card_number);
		KeHu kehu = new KeHu();
		kehu.setKehu_id(kehu_id);
		pos.setKehu(kehu);
		pos.setPay_num(repay);
		pos.setPay_time(pay_time);
		pos.setCustom_type("还款");
		pos.setPos_number(1001);
		pservice.insertPosInfo(pos);
		Card card = new Card();
		card.setCard_number(card_number);
		bill.setCard(card);
		bill = cservice.huankuan(bill);
		
		try {
			response.sendRedirect("jsp/head/bill-list.jsp");
		} catch (IOException e) {
			e.printStackTrace();
		}
		mv.setViewName("forward:/findAllCard.handler");
		return mv;
	}

}
