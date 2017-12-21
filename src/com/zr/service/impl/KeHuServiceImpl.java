package com.zr.service.impl;

import java.util.List;
import java.util.Map;

import com.zr.beans.Apply;
import com.zr.beans.KeHu;
import com.zr.dao.KeHuDao;
import com.zr.service.KeHuService;

public class KeHuServiceImpl implements KeHuService{

	private KeHuDao kdao;
	
	public KeHuDao getKdao() {
		return kdao;
	}

	public void setKdao(KeHuDao kdao) {
		this.kdao = kdao;
	}

	@Override
	public List<KeHu> findAllKeHu(Map<String, Integer> map) {
		return kdao.findAllKeHu(map);
	}


	@Override
	public List<Apply> findAllApply(Map<String, Integer> map) {
		return kdao.findAllApply(map);
	}

	@Override
	public boolean insertKeHu(KeHu kehu) {
		return kdao.insertKeHu(kehu);
	}

	@Override
	public boolean updateKeHu(KeHu kehu) {
		return kdao.updateKeHu(kehu);
	}

	@Override
	public KeHu findByKeHu_id(KeHu kehu) {
		return kdao.findByKeHu_id(kehu);
	}

	@Override
	public List<Apply> findApplyByKeHu_name(Apply apply) {
		return kdao.findApplyByKeHu_name(apply);
	}

	@Override
	public boolean shenpi(Apply apply) {
		return kdao.shenpi(apply);
	}

	@Override
	public boolean shenpino(Apply apply) {
		return kdao.shenpino(apply);
	}


	@Override
	public int queryAllKeHuByKeHu_nameCount() {
		return kdao.queryAllKeHuByKeHu_nameCount();
	}

	@Override
	public int queryAllKeHu() {
		return kdao.queryAllKeHu();
	}
/*
	@Override
	public List<KeHu> findByKeHu_name(Map<String, Object> map) {
		return kdao.findByKeHu_name(map);
	}*/

	@Override
	public int findAllApplyCount() {
		return kdao.findAllApplyCount();
	}

	@Override
	public KeHu find_kehu_name(KeHu kehu) {
		return kdao.find_kehu_name(kehu);
	}

	@Override
	public List<KeHu> findByKeHu_name(KeHu kehu) {
		return kdao.findByKeHu_name(kehu);
	}

}
