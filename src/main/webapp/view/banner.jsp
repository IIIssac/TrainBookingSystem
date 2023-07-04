<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<div class="layui-carousel" id="test1" style="margin-bottom: 120px;height: 500px;">
    <div carousel-item style="height: 350px">
        <div style="background-image: url('${ctx}/uploads/banner20201223.jpg');background-size:100% 100%; "></div>
        <div style="background-image: url('${ctx}/uploads/banner10.jpg');background-size:100% 100%; "></div>
        <div style="background-image: url('${ctx}/uploads/banner12.jpg');background-size:100% 100%; "></div>
        <div style="background-image: url('${ctx}/uploads/banner0619.jpg');background-size:100% 100%; "></div>
    </div>
</div>

<script>
    layui.use('carousel', function () {
        var carousel = layui.carousel;
        //建造实例
        carousel.render({
            elem: '#test1'
            , width: '100%'
            , arrow: 'always'
        });
    });
</script>
