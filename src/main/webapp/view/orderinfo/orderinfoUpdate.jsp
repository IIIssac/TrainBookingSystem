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
    <title>订单信息修改页面</title>
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


    <form class="layui-form  layui-form-pane" action="${ctx}/orderinfo/update" method="post" style="margin: 50px auto;">
        
			<div class="layui-form-item">
				<label class="layui-form-label">订单编号</label>
				<div class="layui-input-block">
					<input type="text" name="orderid" readonly  id="orderid" value="${orderinfo.orderid}" lay-verify autocomplete="off"
						   placeholder="请输入订单编号"
						   class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">乘车人编号</label>
				<div class="layui-input-block">
					<input type="text" name="ordercaruserid"   id="ordercaruserid" value="${orderinfo.ordercaruserid}" lay-verify autocomplete="off"
						   placeholder="请输入乘车人编号"
						   class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">下单用户</label>
				<div class="layui-input-block">
					<input type="text" name="orderuser"   id="orderuser" value="${orderinfo.orderuser}" lay-verify autocomplete="off"
						   placeholder="请输入下单用户"
						   class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">下单时间</label>
				<div class="layui-input-block">
					<input type="text" name="orderaddtime"   id="orderaddtime" value="${orderinfo.orderaddtime}" lay-verify autocomplete="off"
						   placeholder="请输入下单时间"
						   class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">订单状态</label>
				<div class="layui-input-block">
					<input type="text" name="orderstate"   id="orderstate" value="${orderinfo.orderstate}" lay-verify autocomplete="off"
						   placeholder="请输入订单状态"
						   class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">列车编号</label>
				<div class="layui-input-block">
					<input type="text" name="ordercarid"   id="ordercarid" value="${orderinfo.ordercarid}" lay-verify autocomplete="off"
						   placeholder="请输入列车编号"
						   class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">座位编号</label>
				<div class="layui-input-block">
					<input type="text" name="ordersiteid"   id="ordersiteid" value="${orderinfo.ordersiteid}" lay-verify autocomplete="off"
						   placeholder="请输入座位编号"
						   class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">订单备注</label>
				<div class="layui-input-block">
					<input type="text" name="orderintro"   id="orderintro" value="${orderinfo.orderintro}" lay-verify autocomplete="off"
						   placeholder="请输入订单备注"
						   class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">更新时间</label>
				<div class="layui-input-block">
					<input type="text" name="orderupdatetime"   id="orderupdatetime" value="${orderinfo.orderupdatetime}" lay-verify autocomplete="off"
						   placeholder="请输入更新时间"
						   class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">订单金额</label>
				<div class="layui-input-block">
					<input type="text" name="ordermoney"   id="ordermoney" value="${orderinfo.ordermoney}" lay-verify autocomplete="off"
						   placeholder="请输入订单金额"
						   class="layui-input">
				</div>
			</div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button type="submit" class="layui-btn" lay-submit="demo1" lay-filter="demo1">立即提交</button>
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
		
		 //监听提交
        form.on('submit(demo1)', function (data) {
            console.log(JSON.stringify(data.field));
            return true;
        });

    });
</script>

</body>
</html>
