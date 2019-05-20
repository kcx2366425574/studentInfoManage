<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>学生管理</title>
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
                        <li><a href="${pageContext.request.contextPath}/manage/addStudent.html"><i class="icon-font">&#xe008;</i>新增学生</a></li>
                        <li><a href="${pageContext.request.contextPath}/manage/studentList.html"><i class="icon-font">&#xe005;</i>学生管理</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
     <div class="main-wrap">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="index.html">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">学生管理</span></div>
        </div>
        
        <div class="result-wrap">
            <form name="myform" id="myform" method="post">
                <div class="result-title">
                    <div class="result-list">
                        <a href="addStudent.html"><i class="icon-font"></i>新增学生</a>
                    </div>
                </div>
                <div class="result-content">
                    <table class="result-tab" width="100%">
                        <tr>
                           
                            <th>ID</th>
                            <th>姓名</th>
                            <th>密码</th>
                            <th>绩点成绩</th>
                            <th>性别</th>
                            <th>年龄</th>
                            <th>专业</th>
                            <th>班级</th>
                            <th>操作</th>
                        </tr>
                         <c:forEach var="stu" items="${studentList }" varStatus="status">
                        <tr>
                            <td>${stu.id }</td>
                            <td>${stu.name }</td>
                            <td>${stu.pwd }</td>
                            <td>${stu.gpascores }</td>
                            <td>${stu.sex }</td>
                            <td>${stu.age }</td>
                            <td>${stu.pro }</td>
                            <td>${stu.stuclass }</td>
                            <td>
                                <a class="link-update" href="${pageContext.request.contextPath}/manage/updateStu.html?stuId=${stu.id }">修改</a>
                                <a class="link-del" href="${pageContext.request.contextPath}/manage/delStu.html?stuId=${stu.id }" onclick="return confirm('您确定要删除该学生吗？');">删除</a>
                            </td>
                        </tr>
                        </c:forEach>
                    </table>
                    <div class="list-page">当前页：第${pages.pageIndex }页    总共：${pages.totalPageCount }页  
                    <c:if test="${pages.pageIndex>1 }">
							<a style="color:#333;" class="btn btn-primary" href="${pageContext.request.contextPath}/manage/studentList.html?pageIndex=1">首页</a>
							<a style="color:#333;" class="btn btn-primary" href="${pageContext.request.contextPath}/manage/studentList.html?pageIndex=${pages.pageIndex-1 }">上一页</a>
						</c:if>
						<c:if test="${pages.pageIndex<pages.totalPageCount }">
							<a style="color:#333;" class="btn btn-primary" href="${pageContext.request.contextPath}/manage/studentList.html?pageIndex=${pages.pageIndex+1 }">下一页</a>
							<a style="color:#333;" class="btn btn-primary" href="${pageContext.request.contextPath}/manage/studentList.html?pageIndex=${pages.totalPageCount}">最后一页</a>
						</c:if>
                      </div>
                </div>
            </form>
        </div>
    </div>


</div>
  
  
  
  
    <table>
    
    </table>
    <div class="dataTables_info" id="datatable-responsive_info">当前页：第${pages.pageIndex }页<br/>
						&nbsp;&nbsp;总共：${pages.totalPageCount }页</div>
						
						<c:if test="${pages.pageIndex>1 }">
							<li><a href="${pageContext.request.contextPath}/manage/studentList.html?pageIndex=1">首页</a>
							</li>
							<li class="paginate_button active"><a href="${pageContext.request.contextPath}/manage/studentList.html?pageIndex=${pages.pageIndex-1 }"
								tabindex="0">上一页</a>
							</li>
						</c:if>
						<c:if test="${pages.pageIndex<pages.totalPageCount }">
							<li><a href="${pageContext.request.contextPath}/manage/studentList.html?pageIndex=${pages.pageIndex+1 }"
								>下一页</a>
							</li>
							<li><a
								href="${pageContext.request.contextPath}/manage/studentList.html?pageIndex=${pages.totalPageCount}">最后一页</a>
							</li>
						</c:if>
  </body>
</html>
