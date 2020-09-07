<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2020/9/6
  Time: 14:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加人物</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>添加</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/addpeople" method="post">
       人物名称：<input type="text" name="name"><br><br><br>
        人物年龄：<input type="text" name="age"><br><br><br>
        人物对话：<input type="text" name="say"><br><br><br>
        <input type="submit" value="提交">
    </form>

</div>
</body>
</html>
