<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@include file="global.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head href="<%=basePath%>" data='${pageContext.request.contextPath}'>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/system/css/style.css?v=<%=version%>">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/system/css/select.css?v=<%=version%>"  />
    <script type="text/javascript" src="${pageContext.request.contextPath}/system/js/jquery-1.11.1.min.js?v=<%=version%>"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/system/js/globals.js?v=<%=version%>"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/system/js/article_list.js?v=<%=version%>"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/system/js/dhf.js?v=<%=version%>"></script>
</head>

<body>
    <div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="#">基本设置</a></li>
        <li><a href="#">文章列表</a></li>
    </ul>
    </div>
    <div class="formbody">
        <div class="formtitle"><span>文章列表</span></div>
        <div id="usual1" class="usual">
            <ul class="seachform">
                <li><label>标题查询</label><input id="likeName" name="" type="text" class="scinput" /></li>
                <li><label>&nbsp;</label>
                    <input id="search" type="button" class="scbtn" value="查询"/>
                </li>
                <li><label>&nbsp;</label>
                    <input id="add" type="button" class="scbtn" value="新增"
                           onclick="location.href='article_add.jsp'"/>
                </li>
            </ul>
            <table class="tablelist">
                <thead>
                <tr>
                    <th width="20%" style="overflow: hidden">类别</th>
                    <th width="20" style="overflow: hidden">标题</th>
                    <%--<th width="50%" style="overflow: hidden">简介</th>--%>
                    <th width="20%" style="overflow: hidden">发布时间</th>
                    <th width="10%" style="overflow: hidden">操作</th>
                </tr>
                </thead>
                <tbody id="article">
                    <%--<tr>
                        <td>1</td>
                        <td>技术</td>
                        <td>2016-07-01 23:11:24</td>
                        <td>1</td>
                        <td><a href="#" onclick="load_articleClass(1)" class="tablelink">编辑</a>
                            <a href="#" onclick="delete_articleClass(1)" class="tablelink">删除</a>
                        </td>
                    </tr>--%>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
