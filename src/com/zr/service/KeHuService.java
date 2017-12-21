package com.zr.service;

import java.util.List;
import java.util.Map;

import com.zr.beans.Apply;
import com.zr.beans.KeHu;

public interface KeHuService {
	 /**
     * 全查客户基本信息
	 * @param user
	 * @return
	 */
	public List<KeHu> findAllKeHu(Map<String, Integer> map);
	/**
	 * 查询总记录数
	 * @return
	 */
	public int queryAllKeHu();
	/**
	 * 根据姓名模糊查询客户基本信息
	 * @return
	 */
	public List<KeHu> findByKeHu_name(KeHu kehu);
	/*public List<KeHu> findByKeHu_name(Map<String, Object> map);*/
	/**
	 * 查询根据姓名查询的客户基本信息的总记录数
	 * @return
	 */
	public int queryAllKeHuByKeHu_nameCount();
	/**
	 * 插入客户基本信息
	 * @param kehu
	 * @return
	 */
	public boolean insertKeHu(KeHu kehu);
	/**
	 * 根据kehu_id查找客户基本信息
	 * @param kehu
	 * @return
	 */
	public KeHu findByKeHu_id(KeHu kehu);
	/**
	 * 更新客户基本信息
	 * @param kehu
	 * @return
	 */
	public boolean updateKeHu(KeHu kehu);
	/**
	 * 全查客户申请信息
	 * @return
	 */
	public List<Apply> findAllApply(Map<String, Integer> map);
	/**
	 * 全查客户申请信息总记录数
	 * @return
	 */
	public int findAllApplyCount();
	/**
	 * 根据名字模糊查询客户申请信息
	 * @param apply
	 * @return
	 */
	public List<Apply> findApplyByKeHu_name(Apply apply);
	/**
	 * 处理申请表（通过）
	 * @return
	 */
	public boolean shenpi(Apply apply);
	/**
	 * 处理申请表（通过）
	 * @return
	 */
	public boolean shenpino(Apply apply);
	
	/**
	 * 查询客户是否存在
	 * @return
	 */
	public KeHu find_kehu_name(KeHu kehu);
}
