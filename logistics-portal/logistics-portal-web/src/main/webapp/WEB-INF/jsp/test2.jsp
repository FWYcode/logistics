﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title></title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib/layui/css/layui.css"/>
</head>
<body>
<fieldset class="layui-elem-field" style="margin: 20px;">
    <legend>省市联动</legend>
    <div class="layui-field-box">
        <form class="layui-form layui-form-pane" action="javascript:;">
            <div class="layui-form-item">
                <label class="layui-form-label">选择地区</label>
                <div class="layui-input-inline">
                    <select name="P1" lay-filter="province">
                        <option></option>
                    </select>
                </div>
                <div class="layui-input-inline">
                    <select name="C1" lay-filter="city">
                        <option></option>
                    </select>
                </div>
                <div class="layui-input-inline">
                    <select name="A1" lay-filter="area">
                        <option></option>
                    </select>
                </div>
            </div>
        </form>
    </div>
</fieldset>
<fieldset class="layui-elem-field" style="margin: 20px;">
    <legend>选择结果</legend>
    <div class="layui-field-box">
        <form class="layui-form" action="javascript:;">
            <div class="layui-form-item">
                <label class="layui-form-label">您选择了：</label>
                <label class="layui-form-label pca-label-province"></label>
                <label class="layui-form-label pca-label-city"></label>
                <label class="layui-form-label pca-label-area"></label>
            </div>
        </form>
    </div>
</fieldset>
<script src="${pageContext.request.contextPath}/static/js/jquery-1.11.1.js" type="text/javascript"
        charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/lib/layui/layui.all.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/static/js/addr2.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
    pca.init('select[name=P1]', 'select[name=C1]', 'select[name=A1]', '北京', '北京', '朝阳区');
</script>
</body>
</html>