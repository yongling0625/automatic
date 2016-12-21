package com.gy.automatic.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gy.automatic.mapper.ApplicationCaseMapper;
import com.gy.automatic.model.ApplicationCase;
import com.gy.automatic.service.ApplicationCaseService;
@Service
public class ApplicationCaseServiceImpl implements ApplicationCaseService {
	@Autowired
	private ApplicationCaseMapper applicationCaseMapper;

	@Override
	public ApplicationCase selectAppCaseByCategoryId(Integer categoryId) {
		ApplicationCase ac = new ApplicationCase();
		ac.setApplicationCaseCategory(categoryId);
		return applicationCaseMapper.selectOne(ac);
	}

}
