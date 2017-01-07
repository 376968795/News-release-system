package com.zbl.news.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zbl.news.mapper.*;
import com.zbl.news.model.*;
import com.zbl.news.pojo.*;
import com.zbl.news.service.HService;

@Service
public class HServiceImpl implements HService {

	@Autowired
	private Hmapper hmapper;

	@Override
	public HUser hLogin(HLogin hlogin) throws Exception {
		HUser hUser = hmapper.hLogin(hlogin);
		return hUser;
	}

	@Override
	public void createNews(CreateNewsVo createNewsVo) throws Exception {
		// TODO Auto-generated method stub
		hmapper.createNews(createNewsVo);
	}

	@Override
	public ArrayList<News> hReview(String newstatus) throws Exception {
		// TODO Auto-generated method stub
		ArrayList<News> list = hmapper.hReview(newstatus);
		for (News news : list) {
			if (news.getTitle().length() > 12) {
				news.setTitle(news.getTitle().substring(0, 12));
			}
		}
		return list;
	}

	@Override
	public void ajaxHreview(AjaxHreview ajaxhreview)
			throws Exception {
		// TODO Auto-generated method stub
		hmapper.ajaxHreview(ajaxhreview);
	}

	@Override
	public void ajaxDelete(String id) throws Exception {
		// TODO Auto-generated method stub
		hmapper.ajaxDelete(id);
	}

}
