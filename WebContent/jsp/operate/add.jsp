<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加员工展示</title>
</head>
<body>
	<!-- 包含头部页面 -->
	<s:form action="/emp_save" method="post" theme="simple">
		<table border="1" align="center" cellpadding="5" cellspacing="0">
			<tr>
				<td>员工姓名</td>
				<td><s:textfield name="empName" id="empName" value=""></s:textfield></td>
			</tr>
			<tr>
				<td>薪水</td>
				<td><s:textfield name="salary" id="salary" value=""></s:textfield></td>
			</tr>

			<tr>
				<td>选择部门</td>
				<td>
					<!-- struts下拉列表标签
					name="deptId"	下拉列表标签的名字，服务器根据名称获取选择的项的实际值value值
					headerKey="-1"	默认选择项的实际的值
					headerValue="	请选择"默认显示下拉列表显示的值
					list="#request.listDept"	下拉列表显示数据的集合
					listKey="id"	集合对象的哪个字段作为下拉列表的实际的值，即value的值
					listValue="name"	集合对象的哪个属性作为下拉列表显示的值
					value=""	默认选择的项的设置
				 --> <s:select name="deptId" headerKey="-1" headerValue="请选择"
						list="#request.listDept" listKey="id" listValue="name" value="-1"></s:select>
					<%-- <select name="deptId">
						<option value="-1">请选择</option> 
						<option value="1">开发部</option> 循环迭代s:iterator value="#request.listDept"
					</select> --%>
				</td>
			</tr>
			<tr>
				<td colspan="2"><s:submit value="添加员工"></s:submit></td>
			</tr>
		</table>
	</s:form>
</body>
</html>