<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>客户申请信息</title>
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
	function findApplyByKeHu_name() {
		var searchname = $("#searchname").val();
		location.href = "${pageContext.request.contextPath}/findApplyByKeHu_name.handler?kehu.kehu_name="
				+ searchname;
	}
	function flush() {
		location.href = "${pageContext.request.contextPath}/findAllApply.handler";
	}
	
	function maxImg() {
		
	}
</script>

<style type="text/css">
img:HOVER {
	transform:scale(2.5);
}
</style>
</head>
<body>
	<c:if test="${empty applysList}" var="ret">
		<%
			request.getRequestDispatcher("/findAllApply.handler").forward(request, response);
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
					<button class="layui-btn mgl-20" onclick="findApplyByKeHu_name()">查询</button>
					<button class="layui-btn mgl-20" onclick="flush()">刷新</button> <!-- <span class="fr"  style="margin-right: 2%;">
					<a class="layui-btn btn-add btn-default" id="btn-adduser">
						<i class="linyer icon-add"></i> 添加用户</a></span> --></li>
			</ul>
		</div>
		
		<c:if test="${!ret }">
			<!-- <table class="table-box table-sort" id="userTable"> -->
			<table class="layui-table table-box" lay-skin="row" >
				<thead>
					<tr>
						<!-- <th><input type="checkbox" class="btn-checkall fly-checkbox"></th> -->
						<th>ID</th>
						<th>用户名</th>
						<!-- 客户申请表是否需要信用卡的相关信息（信用卡类型需要自己选还是从最低级开始） -->
						<th>收入</th>
						<th>公司名称</th>
						<th>工作单位</th>
						<th>申请时间</th>
						<th>信用积分</th>
						<th style="padding: 0px;">信用积分图片</th>
						<th>申请状态</th>
						<th colspan="2" height="50px">操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="applys" items="${applysList}" varStatus="status">
						<tr>
							<!-- <th><input type="checkbox" class="btn-checkall fly-checkbox"></th> -->
							<td height="50px">${status.count}</td>
							<td>${applys.kehu.kehu_name}</td>
							<td>${applys.apply_salary}</td>
							<td>${applys.work_name}</td>
							<td>${applys.workplace}</td>
							<td>${applys.apply_time}</td>
							<td>${applys.pay.zfb_credit}</td>
							<td><img alt="" src="/${applys.pay.zfb_pic}" width="100px" height="70px"></td>
							<td>${applys.apply_status}</td>

							<td><a
								href="${pageContext.request.contextPath}/shenpi.handler?applys.apply_id=${applys.apply_id }"><i
									class="layui-icon" style="font-size: 30px; color: #009688;">&#xe605;</i>
							</a></td>
							<td><a
								href="${pageContext.request.contextPath}/shenpino.handler?applys.apply_id=${applys.apply_id }"><i
									class="layui-icon" style="font-size: 30px; color: #009688;">&#x1006;</i>
							</a></td>
						</tr>
					</c:forEach>
					<tr>
						<td colspan="11" height="50px"><a
							href="${pageContext.request.contextPath}/findAllApply.handler?flagDiv=first">首页</a>&nbsp;&nbsp;
							<a
							href="${pageContext.request.contextPath}/findAllApply.handler?flagDiv=prev">上一页</a>
							&nbsp;&nbsp; 
							<a href="${pageContext.request.contextPath}/findAllApply.handler?flagDiv=next">下一页</a>&nbsp;&nbsp;
							当前第${nowPage}页&nbsp;&nbsp; <!-- 跳转至第？页&nbsp;&nbsp; --> <a
							href="${pageContext.request.contextPath}/findAllApply.handler?flagDiv=last">最后一页</a>&nbsp;&nbsp;
							共${sumPages}页</td>
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