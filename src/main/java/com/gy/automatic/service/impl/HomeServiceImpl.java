package com.gy.automatic.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gy.automatic.mapper.CarouselImgMapper;
import com.gy.automatic.model.CarouselImg;
import com.gy.automatic.service.HomeService;
@Service
public class HomeServiceImpl implements HomeService {
	@Autowired
	private CarouselImgMapper carouselImgMapper;

	@Override
	public List<CarouselImg> selectCarouselPic() {
		return carouselImgMapper.selectAll();
	}
	
	
	
}
