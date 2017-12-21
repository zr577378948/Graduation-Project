package com.zr.service;

import java.util.List;
import java.util.Map;

import com.zr.beans.Pos;

public interface PosService {
	/**
	 * 全查Pos机消费信息
	 * @return
	 */
	public List<Pos> findAllPosInfo(Map<String, Integer> map);
	/**
	 * 全查Pos机消费信息总记录数
	 * @return
	 */
	public int findAllPosInfoCount();
	
	/**
	 * 根据用户名查询Pos机消费信息
	 * @return
	 */
	public List<Pos> findAllPosInfoByKeHu_name(Pos pos);
	/**
	 * 匹配消费页面表单
	 * @return
	 */
	public List<Pos> find(Pos pos);
	
	/**
	 * 插入消费信息
	 * @param pos
	 * @return
	 */
	public boolean insertPosInfo(Pos pos);
	
}
