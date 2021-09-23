package com.ywhy.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ywhy.dao.AdminDAO;
import com.ywhy.vo.AdminVO;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDAO adminDao;

	@Override
	public void insertAdmin(AdminVO a) {
		this.adminDao.insertAdmin(a);
	}
}
