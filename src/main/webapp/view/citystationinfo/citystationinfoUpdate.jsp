<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%--项目绝对路径--%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%--获取当前时间--%>
<jsp:useBean id="now" class="java.util.Date" scope="page"/>
<fmt:formatDate var="nowTime" value="${now}" pattern="yyyy-MM-dd HH:mm:ss" />
<html>
<head>
    <title>用户信息修改页面</title>
    <!-- 引入css样式和js文件-->
    <meta charset="UTF-8">
    <base href="${ctx}/" />
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css"/>
    <script type="text/javascript" src="${ctx}/static/layui/layui.js"></script>
	<script type="text/javascript" src="${ctx}/static/js/common.js"></script>
    <script>
        var ctx='${ctx}/';
    </script>
</head>
<body>
<div class="layui-container">


    <form class="layui-form  layui-form-pane" action="${ctx}/superadmininfo/update" method="post" style="margin: 50px auto;">
			<div class="layui-form-item" hidden="hidden">
				<label class="layui-form-label">用户编号</label>
				<div class="layui-input-block">
					<input type="text" name="superadminid" readonly  id="superadminid" value="${superadmininfo.superadminid}" lay-verify autocomplete="off"
						   placeholder="请输入用户编号"
						   class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">用户用户名</label>
				<div class="layui-input-block">
					<input type="text" name="superadminname"   id="superadminname" value="${superadmininfo.superadminname}" lay-verify autocomplete="off"
						   placeholder="请输入用户用户名"
						   class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">用户密码</label>
				<div class="layui-input-block">
					<input type="text" name="superadminpwd"   id="superadminpwd" value="${superadmininfo.superadminpwd}" lay-verify autocomplete="off"
						   placeholder="请输入用户密码"
						   class="layui-input">
				</div>
			</div>

        <div class="layui-form-item">
            <div class="layui-input-block">
                <button type="submit" class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>

</div>
<script>
    //注意：导航 依赖 element 模块，否则无法进行功能性操作
    //定义layui的变量
    var $;
    var layer;
    var element;
    var form;
    layui.use(['element', 'layer', 'jquery', 'form','laydate','layedit'], function () {
        element = layui.element;
        layer = layui.layer;
        $ = layui.jquery;
        form = layui.form;
		var laydate = layui.laydate;
		var layedit = layui.layedit;

    });
</script>

</body>
</html>