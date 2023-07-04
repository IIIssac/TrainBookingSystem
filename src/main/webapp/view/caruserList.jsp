<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>我的乘车人信息</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${ctx}/static/layui/style/admin.css" media="all">
    <link rel="stylesheet" href="${ctx}/static/layui/style/template.css" media="all">
    <link rel="shortcut icon" href="${ctx}/static/favicon.png" type="image/x-icon"/>
    <link rel="icon" href="${ctx}/static/favicon.png" type="image/gif">
    <script src="${ctx}/static/layui/layui.js"></script>
</head>
<body>
<!--导航条 start-->
<jsp:include page="head.jsp"/>

<!--导航条 end-->


<div class="layui-container layadmin-cmdlist-fluid">
    <div class="layui-row layui-col-space30" style="margin-top: 50px;">

        <table class="layui-table">
            <tbody>
            <tr class="layui-bg-cyan">
                <th>姓名</th>
                <th>电话</th>
                <th>身份证</th>
                <th>操作</th>
            </tr>


            <c:forEach items="${caruserList}" var="v">
                <tr>
                    <td>${v.carusername}</td>
                    <td>${v.caruserphone}</td>
                    <td>${v.carusercardid}</td>
                    <td style="width: 180px;">
                        <a href="${ctx}/caruser/Delete?id=${v.caruserid}"
                           class="layui-btn layui-btn-danger layui-btn-sm">删除</a>
                        <button path="${ctx}/caruser/Detail?id=${v.caruserid}"
                                class="layui-btn layui-btn-sm showDetail">详情
                        </button>
                    </td>
                </tr>
            </c:forEach>


            </tbody>
        </table>

    </div>
</div>
<script>
    //注意：导航 依赖 element 模块，否则无法进行功能性操作
    //定义layui的变量
    var $;
    var layer;
    var element;
    var form;
    layui.use(['element', 'layer', 'jquery', 'form'], function () {
        element = layui.element;
        layer = layui.layer;
        $ = layui.jquery;
        form = layui.form;
        //绑定详情点击事件
        $(".showDetail").click(function () {
            var path = $(this).attr("path");
            layer.open({
                offset: '100px', //设置弹出窗口的位置 上边距100px
                type: 2,  //弹出类型
                skin: 'layui-layer-molv', //样式类名
                title: '乘车人信息详情查看',
                anim: 2,    //弹出窗口使用的动画
                area: ['800px', '620px'],  //设置弹出窗口的大小 宽度,高度
                shadeClose: true, //开启遮罩关闭
                content: path  //加载内容路径
            });
        })
    });
</script>

</body>
</html>
