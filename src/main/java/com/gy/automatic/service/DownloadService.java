package com.gy.automatic.service;

import java.util.List;

import com.gy.automatic.model.PdfInfo;


public interface DownloadService {

	List<PdfInfo> selectDownloadList();

	List<PdfInfo> selectDownloadListByType(String id);

}
