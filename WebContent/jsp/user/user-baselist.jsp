<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>客户基本信息</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/index/index.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/js/lib/layui/css/layui.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
<style type="text/css">
a {
	color: red;
}
</style>
<script type="text/javascript">
	function findByKeHu_name() {
		var searchname = $("#searchname").val();
		location.href = "${pageContext.request.contextPath}/findByKeHu_name.handler?kehu_name="
				+ searchname;
	}

	function flush() {
		location.href = "${pageContext.request.contextPath}/findAllKeHu.handler";
	}
</script>
<style type="text/css">
</style>
</head>
<body>
	<c:if test="${empty kehusList}" var="ret">
		<%-- <%
			request.getRequestDispatcher("/findAllKeHu.handler").forward(request, response);
		%> --%>
		<jsp:forward page="/findAllKeHu.handler"></jsp:forward>
	</c:if>
	<div class="tab-body">
		<p class="page-tab">
			<span class="layui-breadcrumb" lay-separator=">"><a href="">首页</a><a><cite>用户列表</cite></a></span>
		</p>
		<div class="handle-box">
			<ul>
				<li class="handle-item"><span class="layui-form-label">输入用户名：</span>
					<div class="layui-input-inline">
						<input type="text" autocomplete="off" placeholder="请输入搜索条件"
							class="layui-input" id="searchname" name="kehu_name">
					</div>
					<button class="layui-btn mgl-20" onclick="findByKeHu_name()">查询</button>
					<button class="layui-btn mgl-20"
						<%--id="refresh"--%>onclick="flush()">刷新</button> <span class="fr"
					style="margin-right: 2%;"> <a
						class="layui-btn btn-add btn-default" id="btn-adduser"
						onclick="add()" href="user-add.jsp"> <i
							class="linyer icon-add"></i> 添加用户
					</a></span></li>
			</ul>
		</div>
		<br>
		
			<!-- <table class="table-box table-sort" id="userTable"> -->
			<table class="layui-table table-box" lay-skin="row">
			<c:if test="${!ret }">
				<thead>
					<tr>
						<th>ID</th>
						<th>用户名</th>
						<th>性别</th>
						<th>手机</th>
						<th>身份证号</th>
						<th>地址</th>
						<th>卡号</th>
						<th>状态</th>
						<th colspan="2" height="50px">操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="kehus" items="${kehusList}" varStatus="status">
						<c:forEach var="kehucards" items="${kehus.cards}">
							<tr>
								<td>${status.count}</td>
								<td>${kehus.kehu_name}</td>
								<td>${kehus.kehu_sex}</td>
								<td>${kehus.kehu_phone}</td>
								<td>${kehus.kehu_number}</td>
								<td>${kehus.kehu_family}</td>
								<td>${kehucards.card_number}</td>
								<td>${kehucards.card_status}</td>
								<td height="50px">
										<a
											href="${pageContext.request.contextPath}/findByKeHu_id.handler?kehu.kehu_id=${kehus.kehu_id }"><i class="layui-icon" style="font-size: 30px; color:#009688;">&#xe642;</i></a>
								</td>
								<td><a
									href="${pageContext.request.contextPath}/jinyong.handler?kehucards.card_id=${kehucards.card_id }"><i class="layui-icon" style="font-size: 30px; color:#009688;">&#xe620;</i> </a></td>
							</tr>
						</c:forEach>
					</c:forEach>

					<tr>
						<td colspan="10" height="50px"><a
							href="${pageContext.request.contextPath}/findAllKeHu.handler?flagDiv=first">首页</a>&nbsp;&nbsp;
							<a
							href="${pageContext.request.contextPath}/findAllKeHu.handler?flagDiv=prev">上一页</a>
							&nbsp;&nbsp; 
							<a href="${pageContext.request.contextPath}/findAllKeHu.handler?flagDiv=next">下一页</a>&nbsp;&nbsp;
							当前第${nowPage}页&nbsp;&nbsp; <!-- 跳转至第？页&nbsp;&nbsp; --> <a
							href="${pageContext.request.contextPath}/findAllKeHu.handler?flagDiv=last">最后一页</a>&nbsp;&nbsp;
							共${sumPages }页</td>
							</tr>
				</tbody>
				</c:if>
			</table>
		<div></div>
	</div>
	<%-- <script src="${pageContext.request.contextPath}/js/lib/layui/layui.js"></script>
	<script src="${pageContext.request.contextPath}/js/define/common.js"></script>
	<script src="${pageContext.request.contextPath}/js/define/user.js"></script> --%>
</body>
</html>