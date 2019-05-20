<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>修改管理员密码</title>
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
            <div class="crumb-list"><i class="icon-font"></i><a href="index.html">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">修改密码</span></div>
        </div>
        <div class="result-wrap">
            <form method="post">
            <input type="hidden" name="id" value="${adUser.id }">
                <div class="config-items">
                    <div class="config-title">
                        <h1><i class="icon-font">&#xe00a;</i>修改管理员信息</h1>
                    </div>
                    <div class="result-content">
                        <table width="100%" class="insert-tab">
                            <tbody><tr>
                                <th width="15%"><i class="require-red">*</i>账号：</th>
                                <td><input type="text" value="${adUser.userName }" size="50" name="userName" class="common-text"></td>
                            </tr>
                                <tr>
                                    <th><i class="require-red">*</i>新密码：</th>
                                    <td><input type="text" value="" size="50" name="passWord" class="common-text"></td>
                                </tr>
                                <tr>
                                    <th><i class="require-red">*</i>重复新密码：</th>
                                    <td><input type="text" value="" size="50" name="repassWord" class="common-text"></td>
                                </tr>
                                <tr>
                                    <th></th>
                                    <td>
                                        <input type="submit" value="提交" class="btn btn-primary btn6 mr10">
                                        <input type="button" value="返回" onclick="history.go(-1)" class="btn btn6">
                                    </td>
                                </tr>
                            </tbody></table>
                    </div>
                </div>
                
            </form>
        </div>
    </div>
</div>
  </body>
</html>
