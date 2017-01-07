package com.zbl.news.aop;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;
//@Aspect
@Component("AOP")
public class AOP {
	
//	@Before("method()")
	public void before(){
		System.out.println("before");
	}
	
//	@AfterReturning("execution(* com.zbl.news.service..*.*(..))")
	public void after(){
		System.out.println("after");
	}
//	@Pointcut("execution(* com.zbl.news.service..*.*(..))")
	public void method(){}
	
//	@Around("execution(* com.zbl.news.service..*.*(..))")
//	public void around(ProceedingJoinPoint pjp)throws Throwable{
//		System.out.println("1");
//		pjp.proceed();
//		System.out.println("2");
//	}
}
