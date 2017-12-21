<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录—信用卡管理系统</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link href="iconfont/style.css" type="text/css" rel="stylesheet">
<style>
	body{color:#fff; font-family:"微软雅黑"; font-size:14px;}
	.wrap1{position:absolute; top:0; right:0; bottom:0; left:0; margin:auto }/*把整个屏幕真正撑开--而且能自己实现居中*/
	.main_content{background:url(images/main_bg.png) repeat; margin-left:auto; margin-right:auto; text-align:left; float:none; border-radius:8px;}
	.form-group{position:relative;}
	.login_btn{display:block; background:#009688; color:#fff; font-size:15px; width:100%; line-height:50px; border-radius:3px; border:none; }
	.login_input{width:100%; border:1px solid #009688; border-radius:3px; line-height:40px; padding:2px 5px 2px 30px; background:none;}
	.icon_font{position:absolute; bottom:15px; left:10px; font-size:18px; color:#009688;}
	.font16{font-size:16px;}
	.mg-t20{margin-top:20px;}
	@media (min-width:200px){.pd-xs-20{padding:20px;}}
	@media (min-width:768px){.pd-sm-50{padding:50px;}}

</style>

</head>

<body style="background:url(images/bg.jpg) no-repeat;">
    
    <div class="container wrap1" style="height:450px;">
            <h2 class="mg-b20 text-center">信用卡审批管理系统</h2><br>
            <div class="col-sm-8 col-md-5 center-auto pd-sm-50 pd-xs-20 main_content">
                <p class="text-center font16">管理员登录</p>
                <form  action="login.handler" method="post">
                    <div class="form-group mg-t20">
                        <i class="icon-user icon_font"></i>
                        <input type="text" name="username" class="login_input" id="Email1" placeholder="&nbsp;请输入用户名" />
                    </div>
                    <div class="form-group mg-t20">
                        <i class="icon-lock icon_font"></i>
                        <input type="password" name="password"  class="login_input" id="Password1" placeholder="&nbsp;请输入密码" />
                    </div>
                    <button style="submit" class="login_btn">登 录</button>
               </form>
        </div><!--row end-->
    </div><!--container end-->
</body>
</html>