<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%--项目绝对路径--%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>订单信息详情页面</title>
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
            <td style="width:150px;">订单编号</td>
            <td>${orderinfo.orderid}</td>
        </tr>
        <tr>
            <td style="width:150px;">乘车人信息</td>
            <td>${caruser.carusername} ${caruser.carusercardid}</td>
        </tr>
        <tr>
            <td style="width:150px;">下单用户</td>
            <td>${orderinfo.orderuser}</td>
        </tr>
        <tr>
            <td style="width:150px;">下单时间</td>
            <td>${orderinfo.orderaddtime}</td>
        </tr>
        <tr>
            <td style="width:150px;">订单状态</td>
            <td>${orderinfo.orderstate}</td>
        </tr>
        <tr>
            <td style="width:150px;">列车信息</td>
            <td>${carinfo.carnum} ${carinfo.carname}</td>
        </tr>
        <tr>
            <td style="width:150px;">座位信息</td>
            <td>${siteinfo.sitecarnum} ${siteinfo.sitename}</td>
        </tr>
        <tr>
            <td style="width:150px;">订单备注</td>
            <td>${orderinfo.orderintro}</td>
        </tr>
        <tr>
            <td style="width:150px;">更新时间</td>
            <td>${orderinfo.orderupdatetime}</td>
        </tr>
        <tr>
            <td style="width:150px;">订单金额</td>
            <td>${orderinfo.ordermoney}</td>
        </tr>
        </tbody>
    </table>
</div>


</body>
</html>
