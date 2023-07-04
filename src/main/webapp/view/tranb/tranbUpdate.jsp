<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%--项目绝对路径--%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%--获取当前时间--%>
<jsp:useBean id="now" class="java.util.Date" scope="page"/>
<fmt:formatDate var="nowTime" value="${now}" pattern="yyyy-MM-dd HH:mm:ss"/>
<html>
<head>
    <title>车次信息修改页面</title>
    <!-- 引入css样式和js文件-->
    <meta charset="UTF-8">
    <base href="${ctx}/"/>
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css"/>
    <script type="text/javascript" src="${ctx}/static/layui/layui.js"></script>
    <script type="text/javascript" src="${ctx}/static/js/common.js"></script>
    <script>
        var ctx = '${ctx}/';
    </script>
</head>
<body>
<div class="layui-container">


    <form class="layui-form  layui-form-pane" action="${ctx}/carinfo/update" method="post" style="margin: 50px auto;">

        <div class="layui-form-item">
            <label class="layui-form-label">列车id</label>
            <div class="layui-input-block">
                <input type="text" name="carid" readonly id="carid" value="${carinfo.carid}" lay-verify
                       autocomplete="off"
                       placeholder="请输入列车id"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">列车编号</label>
            <div class="layui-input-block">
                <input type="text" name="carnum" id="carnum" value="${carinfo.carnum}" lay-verify autocomplete="off"
                       placeholder="请输入列车编号"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">列车名称</label>
            <div class="layui-input-block">
                <input type="text" name="carname" id="carname" value="${carinfo.carname}" lay-verify autocomplete="off"
                       placeholder="请输入列车名称"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">起点站</label>
            <div class="layui-input-block">
                <input type="text" name="startname" id="startname" value="${carinfo.startname}" lay-verify
                       autocomplete="off"
                       placeholder="请输入起点站"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">终点站</label>
            <div class="layui-input-block">
                <input type="text" name="endname" id="endname" value="${carinfo.endname}" lay-verify autocomplete="off"
                       placeholder="请输入终点站"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">发车时间</label>
            <div class="layui-input-block">
                <input type="text" name="starttime" id="starttime" value="${carinfo.starttime}" lay-verify
                       autocomplete="off"
                       placeholder="请输入发车时间"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">到达时间</label>
            <div class="layui-input-block">
                <input type="text" name="endtime" id="endtime" value="${carinfo.endtime}" lay-verify autocomplete="off"
                       placeholder="请输入到达时间"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">发车日期</label>
            <div class="layui-input-block">
                <input type="text" name="senddate" id="senddate" value="${carinfo.senddate}" lay-verify
                       autocomplete="off"
                       placeholder="请输入发车日期"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">列车费用</label>
            <div class="layui-input-block">
                <input type="text" name="remarker" id="remarker" value="${carinfo.remarker}" lay-verify
                       autocomplete="off"
                       placeholder="请输入列车费用"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">途径站点</label>
            <div class="layui-input-block">
                <input type="text" name="intro" id="intro" value="${carinfo.intro}" lay-verify autocomplete="off"
                       placeholder="请输入途径站点"
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
    layui.use(['element', 'layer', 'jquery', 'form', 'laydate', 'layedit'], function () {
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


        //时间选择器
        laydate.render({
            elem: '#senddate'
            , type: 'date'
        });

        //时间选择器
        laydate.render({
            elem: '#endtime'
            , type: 'time'
        });

        //时间选择器
        laydate.render({
            elem: '#starttime'
            , type: 'time'
        });


    });
</script>

</body>
</html>
