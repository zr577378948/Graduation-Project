<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>pos机消费记录</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/index/index.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/js/lib/layui/css/layui.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script> --%>
<style type="text/css">
a {
	color: red;
}
</style>
<script type="text/javascript">
	function findAllPosInfoByKeHu_name() {
		var searchname = $("#searchname").val();
		location.href = "${pageContext.request.contextPath}/findAllPosInfoByKeHu_name.handler?kehu.kehu_name="
				+ searchname;
	}

	function flush() {
		location.href = "${pageContext.request.contextPath}/findAllPosInfo.handler";
	}
</script>
</head>
<body>
	<c:if test="${empty posList}" var="ret">
		<%
			request.getRequestDispatcher("/findAllPosInfo.handler").forward(request, response);
		%>
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
							class="layui-input" id="searchname" name="kehu.kehu_name">
					</div>
					<button class="layui-btn mgl-20"
						onclick="findAllPosInfoByKeHu_name()">查询</button>
					<button class="layui-btn mgl-20"
						<%--id="refresh"--%>onclick="flush()">刷新</button>
			</ul>
		</div>
		<c:if test="${!ret }">
			<table class="layui-table table-box" lay-skin="row">
				<thead>
					<tr>
						<th>ID</th>
						<th>用户名</th>
						<th>卡号</th>
						<th>消费类型</th>
						<th>消费金额</th>
						<th>消费时间</th>
						<th  height="50px">pos机编号</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="pos" items="${posList}" varStatus="status">
						<c:forEach var="poscards" items="${pos.kehu.cards}">
							<tr>
								<td>${status.count}</td>
								<td>${pos.kehu.kehu_name}</td>
								<td>${poscards.card_number}</td>
								<td>${pos.custom_type}</td>
								<td>-${pos.pay_num}</td>
								<td>${pos.pay_time}</td>
								<td height="50px">${pos.pos_number}</td>
							</tr>
						</c:forEach>
					</c:forEach>
					<tr>
						<td colspan="10" height="50px"><a
							href="${pageContext.request.contextPath}/findAllPosInfo.handler?flagDiv=first">首页</a>&nbsp;&nbsp;
							<a
							href="${pageContext.request.contextPath}/findAllPosInfo.handler?flagDiv=prev">上一页</a>
							&nbsp;&nbsp; 
							<a href="${pageContext.request.contextPath}/findAllPosInfo.handler?flagDiv=next">下一页</a>&nbsp;&nbsp;
							当前第${nowPage}页&nbsp;&nbsp; <!-- 跳转至第？页&nbsp;&nbsp; --> <a
							href="${pageContext.request.contextPath}/findAllPosInfo.handler?flagDiv=last">最后一页</a>&nbsp;&nbsp;
							共${sumPages }页</td>
							</tr>
				</tbody>
			</table>
		</c:if>
	</div>
	<!-- <script src="../../js/lib/layui/layui.js"></script>
	<script src="../../js/define/common.js"></script>
	<script src="../../js/define/user.js"></script> -->
</body>
</html>