package com.zbl.news.mapper;

import java.util.ArrayList;

import com.zbl.news.model.*;
import com.zbl.news.pojo.*;

public interface Qmapper {
	public News lookNews(String id)throws Exception;
	public ArrayList<News> newsList(String orderby)throws Exception;
}
