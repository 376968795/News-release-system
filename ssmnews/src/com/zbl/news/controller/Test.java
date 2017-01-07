package com.zbl.news.controller;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.danga.MemCached.MemCachedClient;
import com.zbl.news.model.AAA;
//一般用来测试DAO,SERVICE
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:/spring/applicationContext-*.xml"})
public class Test {
	@Autowired
	private MemCachedClient memCachedClient;
	
	@org.junit.Test
	public void testMemcached() throws Exception {
		
		AAA te=new AAA();
		te.setA(1);
		te.setB(2);
		//存数据到Memcached
		memCachedClient.set("haha", te);
    //从Memcached中取数据
		AAA o = (AAA)memCachedClient.get("haha");
		System.out.println(o.getA()+" "+o.getB());
	}

}
