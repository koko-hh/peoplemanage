<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改信息</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改信息</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/updatePeople" method="post">
        <input type="hidden" name="Id" value="${people.getId()}"/>
        人物名称：<input type="text" name="name" value="${people.getName()}"/>
        人物年龄：<input type="text" name="age" value="${people.getAge()}"/>
        人物语音：<input type="text" name="say" value="${people.getSay()}"/>
        <input type="submit" value="提交"/>
    </form>

</div>
