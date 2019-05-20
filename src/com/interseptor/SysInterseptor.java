package com.interseptor;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.entity.Manage;
import com.tools.Constants;

//mvc拦截器，防止不良登录
public class SysInterseptor extends HandlerInterceptorAdapter {
	@Override
	public boolean preHandle(HttpServletRequest request,
	    HttpServletResponse response, Object handler) throws Exception {
		Manage adUser=(Manage) request.getSession().getAttribute(Constants.USERSESSION);
        if(adUser==null)
        {
        	response.sendRedirect(request.getContextPath()+"/index.html");
        	return false;
        }
	    return true;
		}
}
