<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/16
  Time: 11:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <link rel="stylesheet" href="css/bootstrap.css"/>
</head>
<body>
<div class="container">

    <div class="row" style="margin-top: 170px;">
        <div class="col-md-3 col-md-offset-6">

            <fieldset>
                <legend>登录</legend>
                <div class="form-group has-success has-feedback">
                    <label for="username" class="control-label">用户名：</label>

                    <input type="text" id="username" name="username" class="form-control" placeholder="请输入用户名"/>
                </div>

                <div class="form-group has-warning has-feedback">
                    <label for="pwd" class="control-label">密码：</label>
                    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                    <input type="password" id="pwd" name="pwd" class="form-control" placeholder="请输入密码"/>
                </div>

                <br>
                <div class="row">
                    <input id="login_btn" type="submit" class="btn btn-primary col-md-2 col-md-offset-3" value="登录"/>
                    <input id="zuce_btn" type="submit" value="注册" class="btn btn-warning col-md-2 col-md-offset-1"/>
                </div>


            </fieldset>

        </div>
    </div>

</div>

<script type="text/javascript">
    $("#login_btn").click(function () {
       var user = $("#username").val();
       var pass = $("#pwd").val();
       alert(user+"---"+pass)
        $.post("login.action",{user:user,pass:pass},function(data){
            if (data=="登录成功"){
                window.location="userlist.jsp";
            }else {
                alert("失败")
                return;
            }

        })
    })
</script>

</body>
</html>
