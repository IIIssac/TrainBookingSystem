<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>火车售票系统-用户注册</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${ctx}/static/layui/style/admin.css" media="all">
    <link rel="stylesheet" href="${ctx}/static/layui/style/login.css" media="all">
    <script src="${ctx}/static/layui/layui.js"></script>
    <script type="text/javascript" src="${ctx}/static/js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="${ctx}/static/js/common.js"></script>
    <script>
        var ctx = "${ctx}";  //全局js项目路径
    </script>
</head>
<body>
<div class="layadmin-user-login layadmin-user-display-show" id="LAY-user-login" style="display: none; background-image: url('${ctx}/uploads/banner20201223.jpg')">
    <div class="layadmin-user-login-main" style="background-image: url('${ctx}/uploads/banner20201223.jpg');margin-top: 100px">
        <div class="layadmin-user-login-box layadmin-user-login-header">
            <h2>用户注册</h2>
            <p> 火车售票系统</p>
        </div>
        <div class="layadmin-user-login-box layadmin-user-login-body layui-form" style="margin: 5px">
            <form id="regForm" action="#" onsubmit="return false;">
                <div class="layui-form-item">
                    <label class="layadmin-user-login-icon layui-icon layui-icon-username"
                           for="LAY-user-login-name"></label>
                    <input type="text" name="adminname" id="LAY-user-login-name" lay-verify="required" placeholder="姓名"
                           class="layui-input">
                </div>
                <div class="layui-form-item">
                    <label class="layadmin-user-login-icon layui-icon layui-icon-cellphone"
                           for="LAY-user-login-cellphone"></label>
                    <input type="text" name="adminnumber" id="LAY-user-login-cellphone" lay-verify="phone"
                           placeholder="手机"
                           class="layui-input">
                </div>
                <div class="layui-form-item">
                    <label class="layadmin-user-login-icon layui-icon layui-icon-cellphone"
                           for="LAY-user-login-email"></label>
                    <input type="text" name="adminmail" id="LAY-user-login-email" lay-verify="email" placeholder="邮箱"
                           class="layui-input">
                </div>

                <div class="layui-form-item">
                    <label class="layadmin-user-login-icon layui-icon layui-icon-password"
                           for="LAY-user-login-password"></label>
                    <input type="password" name="adminpwd" id="LAY-user-login-password" lay-verify="pass"
                           placeholder="密码"
                           class="layui-input">
                </div>

                <div class="layui-form-item">
                    <input type="checkbox" name="agreement" lay-skin="primary" title="同意用户协议" checked>
                </div>
                <div class="layui-form-item">
                    <button class="layui-btn layui-btn-fluid" lay-submit lay-filter="LAY-user-reg-submit">注 册</button>
                </div>
                <div class="layui-trans layui-form-item layadmin-user-login-other">
                    <a href="${ctx}/view/login.jsp" class="layadmin-user-jump-change layadmin-link layui-hide-xs">用已有帐号登入</a>
                    <a href="${ctx}/view/login.jsp"
                       class="layadmin-user-jump-change layadmin-link layui-hide-sm layui-show-xs-inline-block">登入</a>
                </div>
            </form>
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
        form.on('submit(LAY-user-reg-submit)', function (obj) {
            //表单数据formData
            var regFrom = obj.field;
            $.post("${ctx}/admininfo/registerSubmit", regFrom, function (result) {
                if (result.status == 200) {
                    layer.msg('恭喜你，注册成功，到登录页面进行登录', {
                        offset: '15px'
                        , icon: 1
                    }, function () {
                        location.href = "./login.jsp";
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
