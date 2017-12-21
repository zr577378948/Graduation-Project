package com.zr.service;

import java.util.List;
import java.util.Map;

import com.zr.beans.Apply;
import com.zr.beans.KeHu;

public interface KeHuService {
	 /**
     * ȫ��ͻ�������Ϣ
	 * @param user
	 * @return
	 */
	public List<KeHu> findAllKeHu(Map<String, Integer> map);
	/**
	 * ��ѯ�ܼ�¼��
	 * @return
	 */
	public int queryAllKeHu();
	/**
	 * ��������ģ����ѯ�ͻ�������Ϣ
	 * @return
	 */
	public List<KeHu> findByKeHu_name(KeHu kehu);
	/*public List<KeHu> findByKeHu_name(Map<String, Object> map);*/
	/**
	 * ��ѯ����������ѯ�Ŀͻ�������Ϣ���ܼ�¼��
	 * @return
	 */
	public int queryAllKeHuByKeHu_nameCount();
	/**
	 * ����ͻ�������Ϣ
	 * @param kehu
	 * @return
	 */
	public boolean insertKeHu(KeHu kehu);
	/**
	 * ����kehu_id���ҿͻ�������Ϣ
	 * @param kehu
	 * @return
	 */
	public KeHu findByKeHu_id(KeHu kehu);
	/**
	 * ���¿ͻ�������Ϣ
	 * @param kehu
	 * @return
	 */
	public boolean updateKeHu(KeHu kehu);
	/**
	 * ȫ��ͻ�������Ϣ
	 * @return
	 */
	public List<Apply> findAllApply(Map<String, Integer> map);
	/**
	 * ȫ��ͻ�������Ϣ�ܼ�¼��
	 * @return
	 */
	public int findAllApplyCount();
	/**
	 * ��������ģ����ѯ�ͻ�������Ϣ
	 * @param apply
	 * @return
	 */
	public List<Apply> findApplyByKeHu_name(Apply apply);
	/**
	 * ���������ͨ����
	 * @return
	 */
	public boolean shenpi(Apply apply);
	/**
	 * ���������ͨ����
	 * @return
	 */
	public boolean shenpino(Apply apply);
	
	/**
	 * ��ѯ�ͻ��Ƿ����
	 * @return
	 */
	public KeHu find_kehu_name(KeHu kehu);
}
