package com.zbl.news.mapper;


import java.util.ArrayList;

import com.zbl.news.pojo.AjaxHreview;
import com.zbl.news.pojo.CreateNewsVo;
import com.zbl.news.pojo.HLogin;
import com.zbl.news.model.HUser;
import com.zbl.news.model.News;

public interface Hmapper {
	public HUser hLogin(HLogin hlogin)throws Exception;
	public void createNews(CreateNewsVo createNewsVo)throws Exception;
	public ArrayList<News> hReview(String newstatus)throws Exception;
	public void ajaxHreview(AjaxHreview ajaxHreview)throws Exception;
	public void ajaxDelete(String id)throws Exception;
}
