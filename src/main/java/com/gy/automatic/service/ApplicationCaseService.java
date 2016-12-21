package com.gy.automatic.service;

import com.gy.automatic.model.ApplicationCase;

public interface ApplicationCaseService {

	ApplicationCase selectAppCaseByCategoryId(Integer categoryId);

}
