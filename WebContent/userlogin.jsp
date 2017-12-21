<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" title="" rel="stylesheet" />
<link title="orange" href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" type="text/css"/>

</head>
<body>
  
  <div style="height:1px;"></div>
  <div class="login">
     <header>
	    <h1>登录</h1>
	 </header>
	 <div class="sr">
	    <form action="userlogin.handler" method="post">
		    <div class="name">
				<label>
				<i class="sublist-icon glyphicon glyphicon-user"></i>
				</label>
				<input type="text"  placeholder="这里输入登录名" name="kehu_number" class="name_inp">
			</div>
			 <div class="name">
				<label>
				<i class="sublist-icon glyphicon glyphicon-pencil"></i>
				</label>
				<input type="password"  placeholder="这里输入登录密码" name="password" class="name_inp">
			</div>
			<button class="dl">登录</button>
		</form>
	 </div>
  </div>
</body>
</html>



