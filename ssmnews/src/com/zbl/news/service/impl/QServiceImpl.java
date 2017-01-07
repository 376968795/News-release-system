package com.zbl.news.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zbl.news.mapper.Qmapper;
import com.zbl.news.model.News;
import com.zbl.news.service.QService;

@Service
public class QServiceImpl implements QService {

	@Autowired
	private Qmapper qmapper;
	
	@Override
	public News lookNews(String id) throws Exception {
		News news=qmapper.lookNews(id);
		return news;
	}

	@Override
	public ArrayList<News> newsList(String orderby) throws Exception {
		// TODO Auto-generated method stub
		ArrayList<News> list=qmapper.newsList(orderby);
		return list;
	}

}
