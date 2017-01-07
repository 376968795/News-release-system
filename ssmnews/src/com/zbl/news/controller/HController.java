package com.zbl.news.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.mail.Multipart;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientHandlerException;
import com.sun.jersey.api.client.UniformInterfaceException;
import com.sun.jersey.api.client.WebResource;
import com.sun.mail.handlers.multipart_mixed;
import com.zbl.news.freemarker.FreeMarker;
import com.zbl.news.model.HUser;
import com.zbl.news.model.News;
import com.zbl.news.pojo.AjaxHreview;
import com.zbl.news.pojo.CreateNewsVo;
import com.zbl.news.pojo.HLogin;
import com.zbl.news.service.HService;
import com.zbl.news.service.QService;

@Controller
public class HController {
	private Log log=LogFactory.getLog(HController.class);
	@Autowired
	private HService hservice;
	@Autowired
	private QService qservice;
	@Autowired
	private FreeMarker free;
	
	@RequestMapping("/redirect")
	public String redirect(Model model,String page,String action){
		model.addAttribute("action", action);
		return page;
	}
	
	@RequestMapping("/tohlogin")
	public String tohlogin(Model model,String action) throws Exception{
		if(action!=null){
			model.addAttribute("action", "false");
		}
		return "Hlogin";
	}
	
	@RequestMapping("/hlogin")
	public String hlogin(HttpSession session,HLogin hlogin) throws Exception{
		HUser huser=hservice.hLogin(hlogin);
		if(huser==null){
			return "redirect:tohlogin.action?action=false";
		}else{
			session.setAttribute("huser", huser);
			return "redirect:redirect.action?page=Hleft";
		}
	}
	
	@RequestMapping("/hcreatenews")
	public String hcreatenews(CreateNewsVo createNewsVo)throws Exception{
		hservice.createNews(createNewsVo);
		return "redirect:redirect.action?page=HcreateNews&action=1";
	}
	
	@RequestMapping("/hreview")
	public String hreview(Model model,String newstatus)throws Exception{
		ArrayList<News> list=hservice.hReview(newstatus);
		model.addAttribute("list", list);
		model.addAttribute("status", newstatus);
		return "Hreview";
	}
	
	@RequestMapping("/checknews")
	public String checknews(Model model,String id)throws Exception{
		News news=qservice.lookNews(id);
		model.addAttribute("news", news);
		return "singleNews";
	}
	
	@RequestMapping("/ajaxhreview")
	public void ajaxhreview(AjaxHreview ajaxhreview,HttpServletRequest request)throws Exception{
		hservice.ajaxHreview(ajaxhreview);
		News news=qservice.lookNews(ajaxhreview.getId());
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("news",news);
		map.put("path", request.getContextPath());
		free.ccc(map, Integer.parseInt(ajaxhreview.getId()));
	}
	
	@RequestMapping("/ajaxdelete")
	public void ajaxdelete(String newsid,HttpServletResponse response)throws Exception{
		hservice.ajaxDelete(newsid);
		response.getWriter().println(true);
		response.getWriter().flush();
	}
	
	@RequestMapping("/ajpicture")
	@ResponseBody
	public String ajpicture(MultipartFile picFile) throws Exception{
		
		String orgname=picFile.getOriginalFilename();
		String newname=UUID.randomUUID().toString()+orgname.substring(orgname.lastIndexOf("."));
		String url="";
		Client client=new Client();
		WebResource webResource=client.resource(url);
		webResource.put(String.class,picFile.getBytes());
		
		
//		String orgname=picFile.getOriginalFilename();
//		String newname=UUID.randomUUID().toString()+orgname.substring(orgname.lastIndexOf("."));
//		String url="http://localhost:8070/Picture/"+newname;
//		Client client=new Client();
//		WebResource webResource=client.resource(url);
//		webResource.put(String.class, picFile.getBytes());
			
		
//		String orgname=picFile.getOriginalFilename();
//		String newname=UUID.randomUUID().toString()+orgname.substring(orgname.lastIndexOf("."));
//		String url="http://localhost:8070/Picture/"+newname;
//		Client client=new Client();
//		WebResource webResource=client.resource(url);
//		webResource.put(String.class, picFile.getBytes());
			
		
//		System.out.println("111");
//		String orgname=picFile.getOriginalFilename();
//		String newname=UUID.randomUUID().toString()+orgname.substring(orgname.lastIndexOf("."));
//		String url="http://localhost:8070/Picture/"+newname;
//		Client client=new Client();
//		WebResource webResource=client.resource(url);
//		webResource.put(String.class, picFile.getBytes());	
		return url;
	}
	
}
