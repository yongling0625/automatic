package com.gy.automatic.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gy.automatic.mapper.PdfInfoMapper;
import com.gy.automatic.model.PdfInfo;
import com.gy.automatic.service.DownloadService;

@Service
public class DownloadServiceImpl implements DownloadService {

	@Autowired
	private PdfInfoMapper pdfInfoMapper;

	@Override
	public List<PdfInfo> selectDownloadList() {
		return pdfInfoMapper.selectAll();
	}

	@Override
	public List<PdfInfo> selectDownloadListByType(String type) {
		return pdfInfoMapper.selectDownloadListByType(type);
	}
}
