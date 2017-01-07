package com.zbl.news.freemarker;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.Map;

import javax.servlet.ServletContext;

import org.springframework.web.context.ServletContextAware;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;

import freemarker.template.Configuration;
import freemarker.template.Template;

public class FreeMarker implements Free,ServletContextAware {

	private Configuration configuration;
	private ServletContext servletContext;
	
	@Override
	public void setServletContext(ServletContext arg0) {
		// TODO Auto-generated method stub
		this.servletContext=arg0;
	}
	
	public void setFreeMarkerConfigurer(FreeMarkerConfigurer freeMarkerConfigurer){
		configuration=freeMarkerConfigurer.getConfiguration();
	}
	
	public String get(String path){
		return servletContext.getRealPath(path);
	}

	@Override
	public String ccc(Map<String, Object> data, Integer id) throws Exception {
		// TODO Auto-generated method stub
		String ftl="news.html";
		String out=get("temp/"+id+".html");
		File file=new File(out);
		File f1=file.getParentFile();
		if(!f1.exists()){
			f1.mkdirs();
		}
		Writer w=new OutputStreamWriter(new FileOutputStream(file),"UTF-8");
		Template template=configuration.getTemplate(ftl);
		template.process(data, w);
		w.close();
		return null;
	}

}
