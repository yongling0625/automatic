package com.gy.automatic.mapper;

import java.util.List;

import com.gy.automatic.model.PdfInfo;
import tk.mybatis.mapper.common.Mapper;

public interface PdfInfoMapper extends Mapper<PdfInfo> {

	List<PdfInfo> selectDownloadListByType(String id);
}