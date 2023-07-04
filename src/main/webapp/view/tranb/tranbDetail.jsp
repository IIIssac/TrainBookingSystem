<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%--项目绝对路径--%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>车次信息详情页面</title>
    <!-- 引入css样式和js文件-->
    <meta charset="UTF-8">
    <base href="${ctx}/"/>
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css"/>
    <script type="text/javascript" src="${ctx}/static/layui/layui.js"></script>
</head>
<body>
<div class="layui-container">
    <table class="layui-table">
        <tbody>
        <tr>
            <td style="width:150px;">列车编号</td>
            <td>${tranb.tranbname}</td>
        </tr>
        <tr>
            <td style="width:150px;">起点站</td>
            <td>${stationList[0]}</td>
        </tr>
        <tr>
            <td style="width:150px;">发车时间</td>
            <td>${timeList[0]}</td>
        </tr>
        <tr>
            <td style="width:150px;">终点站</td>
            <td>${stationList[stationList.size()-1]}</td>
        </tr>
        <tr>
            <td style="width:150px;">到达时间</td>
            <td>${timeList[timeList.size()-1]}</td>
        </tr>
        <tr>
            <td style="width:150px;">行车时刻表</td>
            <td>
                <table class="layui-table">
                    <c:forEach items="${stationList}" var="v" varStatus="loop">
                        <tr>
                        <td>${v}</td>
                        <td>${timeList[loop.count-1]}</td>
                        </tr>
                    </c:forEach>
                </table>
            </td>
        </tr>
        </tbody>
    </table>
</div>


</body>
</html>
