<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>火车售票系统-个人信息</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${ctx}/static/layui/style/admin.css" media="all">
    <link rel="stylesheet" href="${ctx}/static/layui/style/template.css" media="all">
    <script src="${ctx}/static/layui/layui.js"></script>
    <script type="text/javascript" src="${ctx}/static/js/common.js"></script>
    <script>
        var ctx = "${ctx}";  //全局js项目路径
    </script>
</head>
<body>

<jsp:include page="head.jsp"/>


<div class="layui-container layadmin-cmdlist-fluid">
    <div class="layui-row layui-col-space30">
        <div class="layui-col-md12" style="border: 0px solid red;height: 500px;margin-top: 15px;">
            <form class="layui-form layui-form-pane" action="" style="width:80%;margin:0 auto;margin-top: 2%;"
                  id="saveUserinfoForm"
                  onsubmit="return false;">
                <input type="hidden" value="${admininfo.adminname}" name="id">

                <div class="layui-form-item ">
                    <label class="layui-form-label">电话</label>
                    <div class="layui-input-block">
                        <input type="text" id="phone" name="phone" lay-verify="required"
                               placeholder="请输入电话"
                               value="${admininfo.adminnumber}" class="layui-input"/>
                    </div>
                </div>
                <div class="layui-form-item ">
                    <label class="layui-form-label">邮箱</label>
                    <div class="layui-input-block">
                        <input type="text" id="email" name="email" lay-verify="required"
                               placeholder="请输入邮箱"
                               value="${admininfo.adminmail}" class="layui-input"/>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-form-item">
                        <div class="layui-input-block">
                            <button class="layui-btn" lay-submit="" lay-filter="saveUserinfo">立即保存</button>
                            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <div class="layui-col-md12 layui-col-sm12">
            <div id="demo0"></div>
        </div>
    </div>
</div>
<script>
    var $;
    var $form;
    var form;
    layui.config({
        base: "js/"
    }).use(['form', 'layer', 'jquery', 'laypage', 'table', 'laytpl', 'laydate', 'upload'], function () {
        var form = layui.form, table = layui.table;
        layer = parent.layer === undefined ? layui.layer : parent.layer,
            laypage = layui.laypage, laydate = layui.laydate, upload = layui.upload,
            $ = layui.jquery;
        nowTime = new Date().valueOf();
        //表单提交
        form.on("submit(saveUserinfo)", function (data) {
            //弹出loading
            var index = top.layer.msg('数据提交中，请稍候', {icon: 16, time: false, shade: 0.8});
            var msg;
            var subURL = ctx + "/pc/updateUserinfo"; //修改提交地址
            $.ajax({
                type: "post",
                url: subURL,
                data: data.field,
                dataType: "json",
                success: function (d) {
                    if (d.code == 0) {
                        msg = d.msg;
                        // 重置表单 saveUserinfoForm是表单的id
                        //$("#saveUserinfoForm")[0].reset();
                        //layui.form.render();
                        layer.msg(msg, {time: 1500, icon: 1}, function () {
                            var url = ctx + "/pc/userinfoCenter"; //返回列表页面
                            window.location.href = url;
                        });
                    } else {
                        msg = d.msg;
                        layer.alert(msg);
                    }
                }
            });
            return false;
        })

    });
</script>

</body>
</html>
