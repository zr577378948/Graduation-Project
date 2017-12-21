<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>pos机消费记录管理信息</title>
<link rel="stylesheet" href="../../css/index/index.css">
<link rel="stylesheet" href="../../js/lib/layui/css/layui.css">
</head>
<body>
<c:if test="${empty applysList}" var="ret">
<%request.getRequestDispatcher("/findAllApply.handler").forward(request, response); %>
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
							class="layui-input">
					</div>
					<button class="layui-btn mgl-20">查询</button>
					<button class="layui-btn mgl-20" id="refresh">刷新</button>
					<span class="fr"  style="margin-right: 2%;">
					<a class="layui-btn btn-add btn-default" id="btn-adduser">
						<i class="linyer icon-add"></i> 添加用户</a></span></li>
			</ul>
		</div>
		<c:if test="${!ret }">
		<table class="table-box table-sort" id="userTable">
			<thead>
				<tr>
					<th><input type="checkbox" class="btn-checkall fly-checkbox"></th>
					<th>ID</th>
					<th>用户名</th>
					<!-- 客户申请表是否需要信用卡的相关信息（信用卡类型需要自己选还是从最低级开始） -->
					<th>收入</th>
					<th>公司名称</th>
					<th>工作单位</th>
					<th>申请时间</th>
					<th>信用积分</th>
					<th>信用积分图片</th>
					<th>申请状态</th><!-- 通过或者拒绝 -->
					<th>操作</th>
				</tr>
			</thead>
			<tbody></tbody>
			<tfoot>
			<c:forEach var="applys" items="${applysList}" varStatus="status">
				<tr>
					<th><input type="checkbox" class="btn-checkall fly-checkbox"></th>
					<th>${status.count}</th>
					<th>${applys.kehu.kehu_name}</th>
					<th>${applys.apply_salary} </th>
					<th>${applys.work_name}</th>
					<th>${applys.workplace}</th>
					<th>${applys.apply_time}</th>
					<th>${applys.pay.zfb_credit}</th>
					<th>${applys.pay.zfb_pic}</th>
					<th>${applys.apply_status}</th>
					
					<th>删除</th>
				</tr>
				</c:forEach>
			</tfoot>
		</table>
		</c:if>
	</div>
	<!-- <script src="../../js/lib/layui/layui.js"></script>
	<script src="../../js/define/common.js"></script>
	<script src="../../js/define/user.js"></script> -->
</body>
</html>