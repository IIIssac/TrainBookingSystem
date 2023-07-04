<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<c:if test="${sessionScope.loginAdmin==null}">
    <script>
        alert("登录以后才可以访问");
        location.href = "${ctx}/view/superadmin/login.jsp";
    </script>
</c:if>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>火车售票系统</title>
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css" media="all">
    <script src="${ctx}/static/layui/layui.js"></script>
    <script src="${ctx}/static/js/jquery-1.9.1.min.js"></script>
    <%--设置ico图标--%>
    <link rel="shortcut icon" href="${ctx}/static/favicon.png" type="image/x-icon"/>
    <link rel="icon" href="${ctx}/static/favicon.png" type="image/gif">
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header layui-bg-cyan">
        <div class="layui-logo" style="width: 250px;">火车票系统</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left" style="margin-left: 100px;">
            <li class="layui-nav-item">
                <a href="javascript:;">城市车站管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="${ctx}/city/add" target="tqmContent">添加城市车站</a></dd>
                    <dd><a href="${ctx}/city/list" target="tqmContent">城市车站列表</a></dd>
                </dl>
            </li>

            <li class="layui-nav-item">
                <a href="javascript:;">车次信息管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="${ctx}/tranb/add" target="tqmContent">添加车次信息</a></dd>
                    <dd><a href="${ctx}/tranb/list" target="tqmContent">车次信息列表</a></dd>
                </dl>
            </li>

            <li class="layui-nav-item">
                <a href="javascript:;">路线信息管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="${ctx}/route/add" target="tqmContent">添加路线信息</a></dd>
                    <dd><a href="${ctx}/route/list" target="tqmContent">路线信息列表</a></dd>
                </dl>
            </li>

            <li class="layui-nav-item">
                <a href="javascript:;">订单信息管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="${ctx}/orderinfo/list" target="tqmContent">订单信息列表</a></dd>
                </dl>
            </li>

        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    ${sessionScope.loginAdmin.superadminname}
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="${ctx}/superadmininfo/edit?id=${sessionScope.loginAdmin.superadminid}"
                           target="tqmContent">修改密码</a></dd>
                    <dd><a href="${ctx}/superadmininfo/loginOut">退出登录</a>
                    </dd>
                </dl>
            </li>
        </ul>
    </div>


    <div class="layui-body" style="left: 0px;width: 100%;">
        <!-- 内容主体区域 -->
        <!-- 内容主体区域 -->
        <div style="padding: 0px;height: 100%;width: 100%;">
            <iframe src="${ctx}/city/list" name="tqmContent"
                    style="border: 0px solid blue;height: 100%;width: 100%;scrolling:auto;">
            </iframe>
        </div>
    </div>

</div>

<script>
    //JavaScript代码区域
    layui.use(['element', 'form'], function () {
        var element = layui.element;
        var form = layui.form;

    });
</script>
</body>
</html>
