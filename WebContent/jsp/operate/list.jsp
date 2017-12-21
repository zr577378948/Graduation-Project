<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>员工列表展示</title>
</head>
<body>
<div align="center">
<!-- 包含头部页面 -->
		<s:a href="emp_viewAdd">添加员工</s:a>
</div>
<!-- 模糊查询 -->


	<table border="1" align="center" width="80%" cellpadding="5"
		cellspacing="0">
		<tr>
			<td>序号</td>
			<td>员工编号</td>
			<td>员工姓名</td>
			<td>薪水</td>
			<td>操作</td>
		</tr>
		<s:if test="#request.listEmp!=null">
			<s:iterator var="emp" value="#request.listEmp" status="st">
				<tr>
					<td><s:property value="#st.count" /></td>
					<td><s:property value="#emp.id" /></td>
					<td><s:property value="#emp.empName" /></td>
					<td><s:property value="#emp.salary" /></td>
					<td>
					<s:a href="emp_viewUpdate?id=%{#emp.id}">修改</s:a> 
					
					<s:a href="emp_delete?id=%{#emp.id}">删除</s:a>
					</td>
				</tr>
			</s:iterator>
		</s:if>
		<s:else>
			<tr>
				<td colspan="5">对不起，没有你要找的数据，请先录入</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</s:else>
	</table>
</body>
</html>