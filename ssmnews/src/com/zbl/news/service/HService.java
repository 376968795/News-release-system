package com.zbl.news.service;

import java.util.ArrayList;
import com.zbl.news.model.HUser;
import com.zbl.news.model.*;
import com.zbl.news.pojo.*;
import com.zbl.news.pojo.HLogin;;

public interface HService {
	public ArrayList<News> hReview(String newstatus)throws Exception;
	public HUser hLogin(HLogin hlogin)throws Exception;
	public void createNews(CreateNewsVo createNewsVo)throws Exception;
	public void ajaxHreview(AjaxHreview ajaxhreview)throws Exception;
	public void ajaxDelete(String id)throws Exception;
}
