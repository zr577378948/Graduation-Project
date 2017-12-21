<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户基本细信息表</title>

</head>
<body>

<form action="${pageContext.request.contextPath}/insertKeHu.handler" method="post">
	<table>
	<tr>
		<td>客户名:</td>
		<td><input type="text" name = "kehu_name">	</td>
	</tr>
	<tr>
		<td>性别:</td>
		<td><input type="text" name="kehu_sex">	</td>
	</tr>
	<tr>
		<td>身份证号:</td>
		<td><input type="text" name="kehu_number">	</td>
	</tr>
	<tr>
		<td>出生日期:</td>
		<td><input type="text" name="kehu_birthday">	</td>
	</tr>
	<tr>
		<td>籍贯:</td>
		<td><input type="text" name="kehu_native">	</td>
	</tr>
	<tr>
		<td>手机号:</td>
		<td><input type="text" name="kehu_phone">	</td>
	</tr>
	<tr>
		<td>家庭住址:</td>
		<td><input type="text" name="kehu_family">	</td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit">	</td>
	</tr>
	
	
	
	</table>
</form>
</body>
</html>