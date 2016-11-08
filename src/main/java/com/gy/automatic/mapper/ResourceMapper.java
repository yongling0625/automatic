package com.gy.automatic.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.gy.automatic.model.Resource;

import tk.mybatis.mapper.common.Mapper;

public interface ResourceMapper extends Mapper<Resource> {

	List<Resource> findResourceAllByTypeAndPidNull(int i);

	List<Resource> findResourceAllByTypeAndPid(@Param("resourceType")int resourceType, @Param("pid")Long pid);


}