package com.gy.automatic.service;

import java.util.List;

import com.gy.automatic.model.ApplicationCase;

public interface ApplicationCaseService {


	List<ApplicationCase> selectAppCaseListByCategoryId(Integer categoryId);

}
