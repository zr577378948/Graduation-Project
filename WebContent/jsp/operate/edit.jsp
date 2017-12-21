<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改员工展示</title>
</head>
<body>
	<!-- 包含头部页面 -->

	<s:form action="/emp_update.action" method="post" theme="simple">
		<!-- 修改操作：需要隐藏域，保存主键值 -->
		<s:hidden name="id" id="id" value="%{id}"></s:hidden>
		<table border="1" align="center" cellpadding="5" cellspacing="0">
			<tr>
				<td>员工姓名</td>
				<td><s:textfield name="empName" id="empName"></s:textfield></td>
			</tr>
			<tr>
				<td>薪水</td>
				<td><s:textfield name="salary" id="salary"></s:textfield></td>
			</tr>

			<tr>
				<td>选择部门</td>
				<td>
					<!-- value=""	默认选择的项的设置 ,设置要显示的对象的主键--> <s:select name="deptId"
						headerKey="-1" headerValue="请选择" list="#request.listDept"
						listKey="id" listValue="name" value="dept.id"></s:select>

				</td>
			</tr>
			<tr>
				<td colspan="2"><s:submit value="修改员工"></s:submit></td>
			</tr>
		</table>
	</s:form>
</body>
</html>