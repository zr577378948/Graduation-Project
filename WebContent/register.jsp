<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form:form action="registerBefore.handler" method="post" modelAttribute="user">
        <input type="text" name="username"/><form:errors path="username"></form:errors><br/>
        <input type="password" name="password"/><form:errors path="password"></form:errors><br/>
        <input type="submit" value="注册" />
</form:form>
</body>
</html>