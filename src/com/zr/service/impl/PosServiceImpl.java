package com.zr.service.impl;

import java.util.List;
import java.util.Map;

import com.zr.beans.Pos;
import com.zr.dao.PosDao;
import com.zr.service.PosService;

public class PosServiceImpl implements PosService{

	private PosDao pdao;
	
	public void setPdao(PosDao pdao) {
		this.pdao = pdao;
	}
	public PosDao getPdao() {
		return pdao;
	}
	
	@Override
	public List<Pos> findAllPosInfo(Map<String, Integer> map) {
		return pdao.findAllPosInfo(map);
	}
	@Override
	public List<Pos> findAllPosInfoByKeHu_name(Pos pos) {
		return pdao.findAllPosInfoByKeHu_name(pos);
	}
	@Override
	public int findAllPosInfoCount() {
		return pdao.findAllPosInfoCount();
	}
	@Override
	public List<Pos> find(Pos pos) {
		return pdao.find(pos);
	}
	@Override
	public boolean insertPosInfo(Pos pos) {
		System.out.println("posService"+pos);
		return pdao.insertPosInfo(pos);
	}

}
