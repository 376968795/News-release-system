package com.zbl.news.service;

import java.util.ArrayList;

import com.zbl.news.model.*;
import com.zbl.news.pojo.*;

public interface QService {
	public News lookNews(String id)throws Exception;
	public ArrayList<News> newsList(String orderby)throws Exception;
}
