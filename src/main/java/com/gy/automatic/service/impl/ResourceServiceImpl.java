package com.gy.automatic.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gy.automatic.mapper.ResourceMapper;
import com.gy.automatic.model.Resource;
import com.gy.automatic.service.ResourceService;
import com.gy.automatic.vo.Tree;

@Service
public class ResourceServiceImpl implements ResourceService {
	@Autowired
	private ResourceMapper resourceMapper;

	@Override
	public List<Tree> selectResourceList() {
		List<Tree> trees = new ArrayList<Tree>();
		// 超级管理
			List<Resource> resourceFather = resourceMapper.findResourceAllByTypeAndPidNull(0);
			for (Resource resourceOne : resourceFather) {
				Tree treeOne = new Tree();
				treeOne.setId(resourceOne.getId());
				treeOne.setText(resourceOne.getName());
				treeOne.setIconCls(resourceOne.getIcon());
				treeOne.setAttributes(resourceOne.getUrl());
				List<Resource> resourceSon = resourceMapper.findResourceAllByTypeAndPid(0,
						resourceOne.getId());
				if (resourceSon != null) {
					List<Tree> tree = new ArrayList<Tree>();
					for (Resource resourceTwo : resourceSon) {
						Tree treeTwo = new Tree();
						treeTwo.setId(resourceTwo.getId());
						treeTwo.setText(resourceTwo.getName());
						treeTwo.setIconCls(resourceTwo.getIcon());
						treeTwo.setAttributes(resourceTwo.getUrl());
						tree.add(treeTwo);
					}
					treeOne.setChildren(tree);
				} else {
					treeOne.setState("closed");
				}
				trees.add(treeOne);
			}
			return trees;
	}

}
