<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <c:if test="${empty usersList}" var="ret">
<%-- <%response.sendRedirect("queryAllUsers.handler"); %> --%>
<%request.getRequestDispatcher("queryAllUsers.handler").forward(request, response); %>
</c:if>
<c:if test="${!ret }">
   <table border="1">
   	<tr>
   		<td>编号</td>
   		<td>姓名</td>
   		<td>密码</td>
   		<td colspan="2" align="center">操作</td>
   	</tr>
   	<c:forEach var="users" items="${usersList}" varStatus="status">
   		<tr>
   		<td>${status.count}</td>
   		<td>${users.username}</td>
   		<td>${users.password}</td>
   		<td><a href="deleteUser.handler?id=${users.id}">删除</a></td>
   		<td><a href="findUserById.handler?id=${users.id}">编辑</a></td>
   	</tr>
   	</c:forEach>
   </table>
   
</c:if>
</body>
</html>