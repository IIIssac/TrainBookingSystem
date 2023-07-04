<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<ul class="layui-nav layui-bg-cyan" lay-filter="" style="margin-bottom: 0px;text-align: center;">
    <li class="layui-nav-item"><a href="${ctx}/index">火车售票系统</a></li>
    <li class="layui-nav-item"><a href="${ctx}/index">首页</a></li>
    <c:if test="${sessionScope.loginAdmininfo==null}">
        <li class="layui-nav-item"><a href="${ctx}/view/login.jsp">马上登陆</a></li>
        <li class="layui-nav-item"><a href="${ctx}/view/register.jsp">点我注册</a></li>
    </c:if>
    <c:if test="${sessionScope.loginAdmininfo!=null}">
        <%--//Todo: 修改--%>
        <li class="layui-nav-item"><a href="${ctx}/caruser/Add">添加乘车人</a></li>
        <li class="layui-nav-item"><a href="${ctx}/caruser/List">管理乘车人</a></li>
        <li class="layui-nav-item"><a href="${ctx}/indexOrderList">我的订单</a></li>
        <li class="layui-nav-item"><a href="${ctx}/admininfoCenter" style="color: #dddddd">个人中心</a></li>>
        <li class="layui-nav-item"><a href="${ctx}/admininfo/loginOut" style="color: #dddddd">退出登录</a></li>
    </c:if>
</ul>
