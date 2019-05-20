<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>管理员后台首页</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/main.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/libs/modernizr.min.js"></script>

  </head>
  
  <body>
    <div class="topbar-wrap white">
    <div class="topbar-inner clearfix">
        <div class="topbar-logo-wrap clearfix">
            <h1 class="topbar-logo none"><a href="/" class="navbar-brand">后台管理</a></h1>
            <ul class="navbar-list clearfix">
                <li><a class="on" href="index.html">后台管理中心</a></li>
            </ul>
        </div>
        <div class="top-info-wrap">
            <ul class="top-info-list clearfix">
                <li><a href="#">管理员： ${adUser.userName}</a></li>
                <li><a href="${pageContext.request.contextPath}/manage/updatePwd.html">修改密码</a></li>
                <li><a href="${pageContext.request.contextPath}/index.html">退出</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="container clearfix">
    <div class="sidebar-wrap">
        <div class="sidebar-title">
            <h1>菜单</h1>
        </div>
        <div class="sidebar-content">
            <ul class="sidebar-list">
                <li>
                    <a href="#"><i class="icon-font">&#xe003;</i>系统管理</a>
                    <ul class="sub-menu">
                       <li><a href="addStudent.html"><i class="icon-font">&#xe008;</i>新增学生</a></li>
                        <li><a href="studentList.html"><i class="icon-font">&#xe005;</i>学生管理</a></li>
                        
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <div class="main-wrap">
        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font">&#xe06b;</i><span>欢迎使用学生管理系统</span></div>
        </div>
    </div>
</div>
  </body>
</html>
