<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>信用卡信息</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index/index.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/js/lib/layui/css/layui.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
<style type="text/css">
a {
	color: red;
}
</style>
<script type="text/javascript">
	function findAllCardByKeHu_name(){
		var searchname=$("#searchname").val();
		location.href="${pageContext.request.contextPath}/findAllCardByKeHu_name1.handler?kehu_name="+searchname;
	}
	
	function flush(){
		location.href="${pageContext.request.contextPath}/findAllCard.handler";
	}
</script>
</head>
<body>
<c:if test="${empty kehusList}" var="ret">
<%request.getRequestDispatcher("/findAllCard.handler").forward(request, response); %>
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
					<button class="layui-btn mgl-20" onclick="findAllCardByKeHu_name()">查询</button>
					<button class="layui-btn mgl-20" id="refresh" onclick="flush()">刷新</button>
					<span class="fr"  style="margin-right: 2%;">
					<a class="layui-btn btn-add btn-default" id="btn-adduser">
						<i class="linyer icon-add"></i> 添加信用卡</a></span></li>
			</ul>
		</div>
		<c:if test="${!ret }">
		<table class="layui-table table-box" lay-skin="row">
			<thead>
				<tr>
					<!-- <th><input type="checkbox" class="btn-checkall fly-checkbox"></th> -->
					<th>ID</th>
					<th>卡号</th>
					<th>用户名</th>
					<th>信用卡类型</th>
					<th>信用卡额度</th>
					<th>信用卡创建时间</th>
					<th>信用卡状态</th>
					<th>信用卡初始密码</th>
					<th>信用卡剩余额度</th>
					<th>信用卡信用积分</th>
					<th height="50px">信用卡逾期次数</th>
					<!-- <th colspan="2">操作</th> -->
				</tr>
			</thead>
			<tbody>
			<c:forEach var="kehus" items="${kehusList}" varStatus="status">
			<c:forEach var="kehucards" items="${kehus.cards}">
				<tr>
					<td>${status.count}</td>
					<td>${kehucards.card_number}</td>
					<td>${kehus.kehu_name} </td>
					<td>${kehucards.card_type}</td>
					<td>${kehucards.card_quota}</td>
					<td>${kehucards.card_time}</td>
					<td>${kehucards.card_status}</td>
					<td>${kehucards.card_password}</td>
					<td>${kehucards.card_remainder}</td>
					<td>${kehucards.card_integral}</td>
					<td  height="50px">${kehucards.card_overdue}</td>
					<!-- <th>修改</th>
					<th>禁用</th> -->
				</tr>
				</c:forEach>
				</c:forEach>
				<tr>
						<td colspan="10" height="50px"><a
							href="${pageContext.request.contextPath}/findAllCard.handler?flagDiv=first">首页</a>&nbsp;&nbsp;
							<a
							href="${pageContext.request.contextPath}/findAllCard.handler?flagDiv=prev">上一页</a>
							&nbsp;&nbsp; 
							<a href="${pageContext.request.contextPath}/findAllCard.handler?flagDiv=next">下一页</a>&nbsp;&nbsp;
							当前第${nowPage}页&nbsp;&nbsp; <!-- 跳转至第？页&nbsp;&nbsp; --> <a
							href="${pageContext.request.contextPath}/findAllCard.handler?flagDiv=last">最后一页</a>&nbsp;&nbsp;
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