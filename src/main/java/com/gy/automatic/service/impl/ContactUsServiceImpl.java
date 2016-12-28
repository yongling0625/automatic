package com.gy.automatic.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gy.automatic.mapper.ProblemMapper;
import com.gy.automatic.model.Problem;
import com.gy.automatic.service.ContactUsService;
@Service
public class ContactUsServiceImpl implements ContactUsService {

	@Autowired
	private ProblemMapper problemMapper;
	
	@Override
	public void insert(Problem problem) {
		problemMapper.insertSelective(problem);
	}

}
