<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2020/9/3
  Time: 18:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script  type="text/javascript" src="jquery-3.5.1.js"></script>
    <script>

      function a1(){
        $.post({
          url:"${pageContext.request.contextPath}/a",
          data:{'name':$("#name").val()},
          success:function (data) {
            if (data.toString()=='格式正确'){
              $("#userInfo").css("color","green");
            }else {
              $("#userInfo").css("color","red");
            }
            $("#userInfo").html(data);
          }
        });
      }
      function a2(){
        $.post({
          url:"${pageContext.request.contextPath}/a",
          data:{'pwd':$("#pwd").val()},
          success:function (data) {
            if (data.toString()=='格式正确'){
              $("#pwdInfo").css("color","green");
            }else {
              $("#pwdInfo").css("color","red");
            }
            $("#pwdInfo").html(data);
          }
        });
      }

    </script>
  </head>
  <body>
  <div class="container">

    <div class="row clearfix">
      <div class="col-md-12 column">
        <div class="page-header">
          <h1>
            <small>登录页面</small>
          </h1>
        </div>
      </div>
    </div>
    <form action="${pageContext.request.contextPath}/allpeople" method="post">
      用户名：<input type="text"  name="username" id="name" onblur="a1()"><span id="userInfo"></span><br><br><br>
      密码：<input type="text"  name="userpassword" id="pwd" onblur="a2()"><span id="pwdInfo"></span><br><br><br>
      <input type="submit" value="登录">
    </form>

  </div>
  </body>
</html>
