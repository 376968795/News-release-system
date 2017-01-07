package com.zbl.news.aop;

import java.io.StringWriter;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.annotate.JsonSerialize.Inclusion;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.danga.MemCached.MemCachedClient;

@Component
public class AOPInterceptor {
	
	@Autowired
	private MemCachedClient memCachedClient;
	
	public String getCacheKey(ProceedingJoinPoint jp) throws Exception{
		StringBuilder key = new StringBuilder();
		
		String packageName = jp.getTarget().getClass().getName();
		String methodName = jp.getSignature().getName();
		Object[] args = jp.getArgs();
		//序列化
		ObjectMapper om = new ObjectMapper();
		om.setSerializationInclusion(Inclusion.NON_NULL);                    
		//创建字符串流
		StringWriter str = new StringWriter();
		for(Object arg : args){
			om.writeValue(str,arg);
		}
		
		key.append(packageName)
		   .append(".")
		   .append(methodName)
		   .append(".")
		   .append(str.toString());
		
		return key.toString();
	}
	//查询时切面方法
	public Object doAround(ProceedingJoinPoint jp) throws Throwable{
		System.out.println("进入了doAround");
		//第一件事:连接memcached服务器
		if(memCachedClient.stats().isEmpty()){
			System.out.println("memcached服务器没有开启或无法连接!");
			return jp.proceed();
		}
		//第二件事:存储时的Key值  如何生成
			//Key
			//1:要求不能出现重复
			//2:要有规则,在不存储的情况下,可以随时把我们存储起来的数据找出来
		String cacheKey = getCacheKey(jp);
		//查看memcached服务器中有没有缓存的数据
		if(null == memCachedClient.get(cacheKey)){
			
			Object proceed = jp.proceed();
			
			memCachedClient.set(cacheKey, proceed, 360000);
			
		}
		
		return memCachedClient.get(cacheKey);
	}
	
	//更改时切面方法
	public void doAfter(JoinPoint jp){
		
		String name = jp.getTarget().getClass().getName();
		//cn.itcast.core.service.order.OrderServiceImpl   
		//add*  update* delete*  
		//get*
		//获取memcached中的所有Key
		List<String> keys = Memcached.getAllKeys(memCachedClient);
		
//		 Iterator it = keys.iterator();  
//	        while(it.hasNext()){  
//	            System.out.println(it.next());  
//	        }
//		//Map 遍历所有key 
//		Set<Entry<String, Object>> entrySet = keys.;
//		for(Entry<String, Object> entry : entrySet){
//			String key = entry.getKey();
//			if(it.next().startsWith(name)){
//				memCachedClient.delete(key);
//			}
		
		
	}
}
