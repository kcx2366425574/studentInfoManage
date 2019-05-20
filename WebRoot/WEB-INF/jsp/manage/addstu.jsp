<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>添加学生信息</title>
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
            <div class="crumb-list"><i class="icon-font"></i><a href="index.html">首页</a><span class="crumb-step">&gt;</span><a class="crumb-name" href="/index.html">学生管理</a><span class="crumb-step">&gt;</span><span>新增学生</span></div>
        </div>
        <div class="result-wrap">
            <div class="result-content">
                <form method="post">
                    <table class="insert-tab" width="100%">
                        <tbody>
                            <tr>
                                <th><i class="require-red">*</i>姓名：</th>
                                <td>
                                    <input class="common-text required" id="title" name="name" size="20" value="" type="text">
                                </td>
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>密码：</th>
                                <td><input class="common-text" name="pwd" size="20" value="" type="text"></td>
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>绩点成绩：</th>
                                <td><input class="common-text" name="gpascores" size="10" value="" type="text"></td>
                            </tr>
                            <tr>
                            <th width="120"><i class="require-red">*</i>性别：</th>
                            <td>
                                <select name="sex"  class="required">
                                   <option value="男">男</option>
							       <option value="女">女</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                                <th><i class="require-red">*</i>年龄：</th>
                                <td><input class="common-text" name="age" size="10" value="" type="text"></td>
                            </tr>
                         <tr>
                            <th width="120"><i class="require-red">*</i>专业：</th>
                            <td>
                                <select name="pro"  class="required">
                                   <option value="计算机专业">计算机专业</option>
							        <option value="其他专业">其他专业</option>
                                </select>
                            </td>
                        </tr>
                            <tr>
                            <th width="120"><i class="require-red">*</i>班级：</th>
                            <td>
                                <select name="stuclass"  class="required">
                                   <option value="1601">1601班</option>
							        <option value="1602">1602班</option>
							        <option value="1603">1603班</option>
                                </select>
                            </td>
                        </tr>
                            <tr>
                                <th></th>
                                <td>
                                    <input class="btn btn-primary btn6 mr10" value="提交" type="submit">
                                    <input class="btn btn6" onclick="history.go(-1)" value="返回" type="button">
                                </td>
                            </tr>
                        </tbody></table>
                </form>
            </div>
        </div>
</div>
  </body>
</html>
