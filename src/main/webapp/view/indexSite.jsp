<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>座位列表查询页面</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${ctx}/static/layui/style/admin.css" media="all">
    <link rel="stylesheet" href="${ctx}/static/layui/style/template.css" media="all">
    <script src="${ctx}/static/layui/layui.js"></script>
</head>
<body>
<!--导航条 start-->
<jsp:include page="head.jsp"/>

<!--导航条 end-->


<div class="layui-container">

    <table class="layui-table" >
        <tr class="layui-bg-cyan" id="table">
            <th>车次</th>
            <th>选座</th>
        </tr>
        <tr>
            <td>${seattb}
            <c:if test="${seatclass.equals('bus')}">特等座</c:if>
            <c:if test="${seatclass.equals('fir')}">一等座</c:if>
            <c:if test="${seatclass.equals('sec')}">二等座</c:if>
            </td>
            <td>
                <table id="seatTable" class="layui-table" lay-size="lg">
                    <tbody>
                    </tbody>
                </table>
            </td>
        </tr>
        <tr>
        <td colspan="2" align="center">点击座位图标后购票，红色为不可选座位</td>
        </tr>
    </table>
        <div class="button-group">
            <c:if test="${sessionScope.loginAdmininfo!=null}">
                <a id="buy" class="layui-btn layui-btn-normal layui-btn-sm" style="display: none">购票</a>
            </c:if>
            <c:if test="${sessionScope.loginAdmininfo==null}">
                <a href="${ctx}/view/login.jsp" class="layui-btn layui-btn-normal layui-btn-sm">登陆以后才可以购票</a>
            </c:if>

            <button path="${ctx}/siteinfo/detail?id=${v.siteid}"
                    class="layui-btn layui-btn layui-btn-sm showDetail" style="display: none"
            >详情
            </button>
        </div>



</div>
<style>
    .buttonclass1 {
        cursor: not-allowed;
        border-width: 1px;
        background-color: red;
        color: black;
        font-size: 20px;
    }

    .buttonclass0 {
        border-width: 1px;
        background-color: white;
        color: black;
        font-size: 20px;
    }

    .buttonclass2 {
        border-width: 1px;
        background-color: blue;
        color: white;
        font-size: 20px;
    }

    .button-group {
        gap: 40px;
        display: flex;
        justify-content: center;
        margin: 10px; /* 修改数值以改变间距大小 */
    }

    #seatTable td{
        border: none;
    }

    body .demo-class .layui-layer-title{background: #2F4056; color: #ffffff; border: none;}
</style>
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
                skin: 'demo-class', //样式类名
                title: '坐席信息详情查看',
                anim: 2,    //弹出窗口使用的动画
                area: ['800px', '620px'],  //设置弹出窗口的大小 宽度,高度
                shadeClose: true, //开启遮罩关闭
                content: path  //加载内容路径
            });
        })
    });
    var clickbutton;
    var buttons=[];
    var buslist=${seatlist};
    var table = document.querySelector('#seatTable'); // 获取表格元素
    var tbody = table.querySelector('tbody'); // 获取表格的 tbody 元素
    for(var i=0;i<6;i++){
        var tr=document.createElement('tr');
        tbody.appendChild(tr);
        for(var j=0;j<5;j++){
            var button = document.createElement('button'); // 创建按钮元素
            buttons.push(button);
            button.innerText = String.fromCharCode(65+j); // 设置按钮文本
            if(buslist[i*5+j]==0)
                button.classList.add('buttonclass0');
            else
                button.classList.add('buttonclass1');
            button.setAttribute('type', 'button'); // 添加 type 属性
            var td=document.createElement('td');
            td.appendChild(button);
            tr.appendChild(td);
        }
    }
    var buyLink = document.getElementById("buy");
    buttons.forEach(function(button,index) {
        button.addEventListener('click', function() {
            if(button.className=='buttonclass2'){
                clickbutton=null;
                buyLink.href=null;
                buyLink.style.display="none";
                buttons.forEach(function(btn) {
                    if (btn !== button) {
                        btn.disabled = false;
                    }
                    if(btn ==button){
                        btn.classList.remove('buttonclass2');
                        btn.classList.add('buttonclass0');
                    }
                });
            }
            else if(button.className=='buttonclass0'){
                clickbutton=index+1;
                buyLink.style.display="inline-block";
                buyLink.href = "${ctx}/indexOrderinfoAdd?seatnumber="+clickbutton+"&tranid=${tranbid}&money=${money}&seatclass=${seatclass}&startid=${startid}&endid=${endid}&seattb=${seattb}";
                buttons.forEach(function(btn) {
                    if (btn !== button) {
                        btn.disabled = true;
                    }
                    if(btn ==button){
                        btn.classList.remove('buttonclass0');
                        btn.classList.add('buttonclass2');
                    }
                });
            }
        });
    });
</script>
</body>
</html>
