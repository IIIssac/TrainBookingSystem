<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<head style="background-color: #2b425b">
    <meta charset="utf-8">
    <title>用户登录</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${ctx}/static/layui/style/admin.css" media="all">
    <link rel="stylesheet" href="${ctx}/static/layui/style/login.css" media="all">
    <script src="${ctx}/static/layui/layui.js"></script>
</head>
<body>

<div class="layadmin-user-login layadmin-user-display-show" id="LAY-user-login" style="display: none; background-image: url('${ctx}/uploads/banner20201223.jpg')">
    <div class="layadmin-user-login-main" style="background-image: url('${ctx}/uploads/banner20201223.jpg');margin-top: 150px" >
        <div class="layadmin-user-login-box layadmin-user-login-header">
            <h2>用户登录</h2>
            <p> 火车售票系统</p>
        </div>
        <div class="layadmin-user-login-box layadmin-user-login-body layui-form">
            <div class="layui-form-item">
                <label class="layadmin-user-login-icon layui-icon layui-icon-username"
                       for="LAY-user-login-username"></label>
                <input type="text" name="username" id="LAY-user-login-username" lay-verify="required" placeholder="用户名" value="123"
                       class="layui-input">
            </div>
            <div class="layui-form-item">
                <label class="layadmin-user-login-icon layui-icon layui-icon-password"
                       for="LAY-user-login-password"></label>
                <input type="password" name="password" id="LAY-user-login-password" lay-verify="required" value="123"
                       placeholder="密码" class="layui-input">
            </div>
            <div class="layui-form-item" style="margin-bottom: 20px;">
                <input type="checkbox" name="remember" lay-skin="primary" title="记住密码">
            </div>
            <div class="layui-form-item">
                <button class="layui-btn layui-btn-fluid" lay-submit lay-filter="LAY-user-login-submit">登 录</button>
            </div>
            <div class="layui-trans layui-form-item layadmin-user-login-other">
                <a href="${ctx}/view/register.jsp" class="layadmin-user-jump-change layadmin-link" style="color: #dddddd">注册帐号</a>
            </div>
        </div>
    </div>


</div>


<script>
    layui.config({
        base: '' //静态资源所在路径
    }).extend({}).use(['form'], function () {
        var $ = layui.$
            , setter = layui.setter
            , admin = layui.admin
            , form = layui.form
            , router = layui.router()
            , search = router.search;

        form.render();

        //提交
        form.on('submit(LAY-user-login-submit)', function (obj) {
            var username = $("#LAY-user-login-username").val();
            var password = $("#LAY-user-login-password").val();
            $.post("${ctx}/admininfo/loginSubmit", {
                "username": username,
                "password": password,
            }, function (result) {
                if (result.status == 200) {
                    layer.msg('恭喜你，登录成功', {
                        offset: '15px'
                        , icon: 1
                    }, function () {
                        // TODO:修改/login
                        location.href = "${ctx}/view/index.jsp";
                    });
                } else {
                    layer.alert(result.msg);
                }
            }, "JSON");
        });


    });
</script>
</body>
</html>
