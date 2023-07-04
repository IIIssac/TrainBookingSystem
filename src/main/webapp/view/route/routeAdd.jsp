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
    <title>车次信息添加页面</title>
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

    <form class="layui-form  layui-form-pane" action="${ctx}/route/insert" method="post" style="margin: 50px auto;">

        <div class="layui-form-item">
            <label class="layui-form-label">路线号</label>
            <div class="layui-input-block">
                <input type="text" name="routenumber" id="routenumber" value="" lay-verify autocomplete="off"
                       placeholder="请输入路线号"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">路线顺序号</label>
            <div class="layui-input-block">
                <input type="text" name="stationrankid" id="stationrankid" value="" lay-verify autocomplete="off"
                       placeholder="路线顺序号"
                       class="layui-input" required>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">车站名</label>
            <div class="layui-input-block">
                <input type="text" name="stationname" id="stationname" value="" lay-verify autocomplete="off"
                       placeholder="车站名"
                       class="layui-input" required>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">时间</label>
            <div class="layui-input-block">
                <input type="text" name="time" id="time" value="" lay-verify autocomplete="off"
                       placeholder="时间"
                       class="layui-input" required>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">里程</label>
            <div class="layui-input-block">
                <input type="text" name="distance" id="distance" value="" lay-verify autocomplete="off"
                       placeholder="里程"
                       class="layui-input" required>
            </div>
        </div>
<%--        <table class="layui-table" id="table1">--%>
<%--            <tbody>--%>
<%--            <tr class="layui-bg-blue">--%>
<%--                <th>路线顺序号</th>--%>
<%--                <th>火车站名</th>--%>
<%--                <th>到达时间</th>--%>
<%--                <th>距出发站里程数</th>--%>
<%--            </tr>--%>
<%--                <c:forEach var="i" begin="1" end="${param.stationnumber}">--%>
<%--            <tr>--%>
<%--                <td>${i}</td>--%>
<%--                <td><input type="text" name="station${v}" id="station${v}" value="" lay-verify autocomplete="off"--%>
<%--                           placeholder="车站名" class="layui-input" >--%>
<%--                </td>--%>
<%--                <td><input type="text" name="time${v}" id="time${v}" value="" lay-verify autocomplete="off"--%>
<%--                           placeholder=到达时间 class="layui-input" >--%>
<%--                </td>--%>
<%--                <td><input type="text" name="distance${v}" id="distance${v}" value="" lay-verify autocomplete="off"--%>
<%--                           placeholder=距出发站里程数 class="layui-input" >--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--                </c:forEach>--%>
<%--            </tbody>--%>
<%--        </table>--%>
        <div class="layui-form-item" align="center">
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

    // function creatTab(){
    //     var table = document.querySelector('#table1'); // 获取表格元素
    //     var tbody = table.querySelector('tbody'); // 获取表格的 tbody 元素
    //     var number= document.getElementById("stationnumber").value;
    //
    //     var tr1=document.createElement('tr');
    //     tbody.appendChild(tr1);
    //     var td1=document.createElement('td');
    //     var text1=document.createElement('label');
    //     text1.textContent="路线顺序号";
    //     td1.appendChild(text1);
    //     tr1.appendChild(td1);
    //     var td2=document.createElement('td');
    //     var text2=document.createElement('label');
    //     text2.textContent="火车站名";
    //     td2.appendChild(text2);
    //     tr1.appendChild(td2);
    //     var td3=document.createElement('td');
    //     var text3=document.createElement('label');
    //     text3.textContent="到达时间";
    //     td3.appendChild(text3);
    //     tr1.appendChild(td3);
    //     var td4=document.createElement('td');
    //     var text4=document.createElement('label');
    //     text4.textContent="距出发站里程数";
    //     td4.appendChild(text4);
    //     tr1.appendChild(td4);
    //     for(var i=0;i<number;i++){
    //         var tr=document.createElement('tr');
    //         tbody.appendChild(tr);
    //         var td1=document.createElement('td');
    //         var lab=document.createElement('label');
    //         lab.textContent=i+1;
    //         td1.appendChild(lab);
    //         tr.appendChild(td1);
    //         var input1 = document.createElement('input'); // 创建元素
    //         input.id="station"
    //         var td2=document.createElement('td');
    //         td2.appendChild(input1);
    //         tr.appendChild(td2);
    //         var input2 = document.createElement('input'); // 创建元素
    //         input.id="time"
    //         var td3=document.createElement('td');
    //         td3.appendChild(input2);
    //         tr.appendChild(td3);
    //         var input3 = document.createElement('input'); // 创建元素
    //         input.id="distance"
    //         var td4=document.createElement('td');
    //         td4.appendChild(input3);
    //         tr.appendChild(td4);
    //     }
    // }

</script>

</body>
</html>
