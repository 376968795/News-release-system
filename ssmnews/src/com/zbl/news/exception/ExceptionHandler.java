package com.zbl.news.exception;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;
@Component
public class ExceptionHandler implements HandlerExceptionResolver {

	@Override
	public ModelAndView resolveException(HttpServletRequest request,
			HttpServletResponse response, Object obj, Exception exc) {
		// TODO Auto-generated method stub
		ModelAndView modelAndView = new ModelAndView();
		exc.printStackTrace();
		MyException me = null;
		if (exc instanceof MyException) {
			me = (MyException) exc;
		} else {
			me = new MyException("未知错误");
		}
		modelAndView.addObject("message", me.getMessage());
		modelAndView.setViewName("error");
		return modelAndView;
	}

}
