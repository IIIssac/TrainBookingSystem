<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>火车售票系统-首页</title>
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${ctx}/static/layui/style/admin.css" media="all">
    <link rel="stylesheet" href="${ctx}/static/layui/style/template.css" media="all">
    <script src="${ctx}/static/layui/layui.js"></script>
</head>

<body>
<jsp:include page="head.jsp"/>

<fieldset class="layui-elem-field layui-field-title site-title" style="text-align: center;margin: 10px">
</fieldset>

<div class="layui-container" style="padding-top: 10px;">
    <form class="layui-form" action="${ctx}/index" method="post" style="text-align: center">
        <div class="layui-form-item">
            <div class="layui-inline" style="text-align: left;">
                <div class="layui-input-inline">
                    <input type="text" class="layui-input dateIcon" name="startName" id="startName"
                           value="${startName}"
                           placeholder="请输入出发站点"
                           style="width: 240px;">
                </div>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input dateIcon" name="endName" id="endName"
                           value="${endName}"
                           placeholder="请输入目的站点"
                           style="width: 240px;">
                </div>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input dateIcon" name="senddate" id="senddate"
                           value="${senddate}"
                           placeholder="请输入出发日期"
                           style="width: 240px;">
                </div>

                <div class="layui-input-inline" >
                    <button id="search" type="submit" class="layui-btn layui-btn-radius layui-btn-primary" style="color: #2F4056"  ><i
                            class="layui-icon layui-icon-search" style="color: #2F4056" ></i> 搜索
                    </button>
                </div>
            </div>
        </div>
    </form>

    <fieldset class="layui-elem-field layui-field-title site-title" style="text-align: center;margin: 10px">
        <legend><a name="compatibility">车次详情</a></legend>
    </fieldset>
    <div class="layui-row layui-col-space20" style="margin: 20px">
        <table class="layui-table">
            <tbody>
            <tr class="layui-bg-cyan">
                <th>车次</th>
                <th>出发站</th>
                <th>发车时间</th>
                <th>到达站</th>
                <th>到达时间</th>
                <th>发车日期</th>
                <th>特等座票价</th>
                <th>一等座票价</th>
                <th>二等座票价</th>
                <th>操作</th>
                </tr>
                <c:forEach items="${tranbList}" var="v" varStatus="loop">
                        <tr>
                        <td>${v.tranbname}</td>
                        <td>${startName}</td>
                        <td>${startroute[loop.count-1].time}</td>
                        <td>${endName}</td>
                        <td>${endroute[loop.count-1].time}</td>
                        <td>${senddate}</td>
                        <td>
                            <c:choose>
                                <c:when test="${tranbseatList[loop.count - 1].businessclass == 0 }">
                                    <fmt:formatNumber var="buspri" value="${(endroute[loop.count-1].distance-startroute[loop.count-1].distance)*1}" pattern="#"/>
                                    ${buspri}
                                    <c:if test="${sessionScope.loginAdmininfo!=null}">
                                        <a href="${ctx}/indexseat?id=${v.tranbid}&seattb=${tranbseatList[loop.count - 1].seattb}&money=${buspri}&seatclass=bus&startid=${startroute[loop.count - 1].stationrankid}&endid=${endroute[loop.count - 1].stationrankid}" class="layui-btn layui-btn-normal layui-btn-sm">订座</a>
                                    </c:if>
                                    <c:if test="${sessionScope.loginAdmininfo==null}">
                                        <a href="${ctx}/view/login.jsp" class="layui-btn layui-btn-normal layui-btn-sm">登陆订座</a>
                                    </c:if>
                                </c:when>
                                <c:otherwise>
                                    无
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td>
                            <c:choose>
                                <c:when test="${tranbseatList[loop.count - 1].firstclass == 0}">
                                    <fmt:formatNumber var="firpri" value="${(endroute[loop.count-1].distance-startroute[loop.count-1].distance)*0.74}" pattern="#"/>
                                    ${firpri}
                                    <c:if test="${sessionScope.loginAdmininfo!=null}">
                                        <a href="${ctx}/indexseat?id=${v.tranbid}&seattb=${tranbseatList[loop.count - 1].seattb}&money=${firpri}&seatclass=fir&startid=${startroute[loop.count - 1].stationrankid}&endid=${endroute[loop.count - 1].stationrankid}" class="layui-btn layui-btn-normal layui-btn-sm">订座</a>
                                    </c:if>
                                    <c:if test="${sessionScope.loginAdmininfo==null}">
                                        <a href="${ctx}/view/login.jsp" class="layui-btn layui-btn-normal layui-btn-sm">登陆订座</a>
                                    </c:if>
                                </c:when>
                                <c:otherwise>
                                    无
                                </c:otherwise>
                            </c:choose>
                        </td>
                       <td>
                            <c:choose>
                                <c:when test="${tranbseatList[loop.count - 1].secondclass == 0}">
                                    <fmt:formatNumber var="secpri" value="${(endroute[loop.count-1].distance-startroute[loop.count-1].distance)*0.45}" pattern="#"/>
                                    ${secpri}
                                    <c:if test="${sessionScope.loginAdmininfo!=null}">
                                        <a href="${ctx}/indexseat?id=${v.tranbid}&seattb=${tranbseatList[loop.count - 1].seattb}&money=${secpri}&seatclass=sec&startid=${startroute[loop.count - 1].stationrankid}&endid=${endroute[loop.count - 1].stationrankid}" class="layui-btn layui-btn-normal layui-btn-sm">订座</a>
                                    </c:if>
                                    <c:if test="${sessionScope.loginAdmininfo==null}">
                                        <a href="${ctx}/view/login.jsp" class="layui-btn layui-btn-normal layui-btn-sm">登陆订座</a>
                                    </c:if>
                                </c:when>
                                <c:otherwise>
                                    无
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td style="width: 130px;">
                            <button path="${ctx}/tranb/detail?id=${v.tranbid}"
                                    class="layui-btn layui-btn-sm showDetail">详情
                            </button>
                        </td>
                    </tr>
            </c:forEach>

            </tbody>
        </table>
    </div>
</div>
<div style="height: 50px;"></div>

<style>
    body .demo-class .layui-layer-title{background: #2F4056; color: #ffffff; border: none;}
</style>
<script>
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
        $(".showDetail").click(function () {
            var path = $(this).attr("path");
            layer.open({
                type: 2,
                skin: 'demo-class' ,
                title: '信息详情页面',
                anim: 2,
                area: ['800px', '500px'],
                shadeClose: true,
                content: path,
            });
        });
        laydate.render({
            elem: '#senddate'
            , type: 'date'
        });
    });
</script>

</body>
</html>

