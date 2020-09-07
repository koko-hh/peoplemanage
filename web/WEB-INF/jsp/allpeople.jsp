<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>人物信息列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>人物信息表</small>
                </h1>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/toAddpeople">新增人物</a>
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/allpeople2">返回主页</a>
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/logout">退出</a>
            <form  class="form-inline" action="${pageContext.request.contextPath}/queryPeople" method="post" style="float: right">
                <input type="text" name="name" class="form-control" placeholder="请输入需要查询的人物名称">
                <input type="submit" value="查询" class="btn btn-primary">
                <span style="color: red">${error}</span>
            </form>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>人物编号</th>
                    <th>人物姓名</th>
                    <th>人物年龄</th>
                    <th>人物对话</th>
                    <th>操作</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach var="people" items="${requestScope.get('list')}">
                    <tr>
                        <td>${people.getId()}</td>
                        <td>${people.getName()}</td>
                        <td>${people.getAge()}</td>
                        <td>${people.getSay()}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/toUpdatePeople?id=${people.getId()}">更改</a> |
                            <a href="${pageContext.request.contextPath}/dele/${people.getId()}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
