<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加客户基本信息</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index/index.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/js/lib/layui/css/layui.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script> --%>
<style type="text/css">
body{
 background-image: url("${pageContext.request.contextPath}/images/bg.jpg"); }
input {
	line-height: 32px;
	color:white;
	padding-left:10px;
	margin:10px;
	width: 250px;
	/* border-style:ridge */
	border-style:groove;
	/* border-radius:10px; */
	background-color: transparent;
	border-color: white;
}
div {
	width: 400px;
	margin: auto;
	margin-top: 5%;
}
font {
	font-size: 20px; color: white;
}
</style>
</head>
<body>
	<div>
		<form action="${pageContext.request.contextPath}/insertKeHu.handler" method="post">
			<table style="line-height: 40px;">
				<tr>
					<td align="right"><font>用户名:&nbsp;&nbsp;</font></td>
					<td><input type="text" name="kehu_name"></td>
				</tr>
				<tr>
					<td align="right"><font>性别:&nbsp;&nbsp;</font></td>
					<td><input type="text" name="kehu_sex"></td>
				</tr>
				<tr>
					<td align="right"><font>身份证号:&nbsp;&nbsp;</font></td>
					<td><input type="text" name="kehu_number"></td>
				</tr>

				<!-- <tr>
					<td align="right">生日:</td>
					<td><input type="text" name="kehu_birthday"></td>
				</tr> -->
				<tr>
					<td align="right"><font>国籍:&nbsp;&nbsp;</font></td>
					<td><input type="text" name="kehu_native"></td>
				</tr>
				<tr>
					<td align="right"><font>手机号:&nbsp;&nbsp;</font></td>
					<td><input type="text" name="kehu_phone"></td>
				</tr>

				<tr>
					<td align="right"><font>家庭住址:&nbsp;&nbsp;</font></td>
					<td><input type="text" name="kehu_family"></td>
				</tr>
				<tr>
					<td colspan="2" align="right"><input value="提   交" style="background-color: white; font-size:20px; border: 0px; height: 35px; border-radius:3px; color: black; " type="submit"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>