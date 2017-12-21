package com.zr.service;

import java.util.List;
import java.util.Map;

import com.zr.beans.Pos;

public interface PosService {
	/**
	 * ȫ��Pos��������Ϣ
	 * @return
	 */
	public List<Pos> findAllPosInfo(Map<String, Integer> map);
	/**
	 * ȫ��Pos��������Ϣ�ܼ�¼��
	 * @return
	 */
	public int findAllPosInfoCount();
	
	/**
	 * �����û�����ѯPos��������Ϣ
	 * @return
	 */
	public List<Pos> findAllPosInfoByKeHu_name(Pos pos);
	/**
	 * ƥ������ҳ���
	 * @return
	 */
	public List<Pos> find(Pos pos);
	
	/**
	 * ����������Ϣ
	 * @param pos
	 * @return
	 */
	public boolean insertPosInfo(Pos pos);
	
}
