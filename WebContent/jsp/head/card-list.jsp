<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>无标题文档</title>
<link href="${pageContext.request.contextPath}/css/animate.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/wow.min.js"
	type="text/javascript"></script>
<script>
if (!(/msie [6|7|8|9]/i.test(navigator.userAgent))){
	new WOW().init();
};
</script>
</head>

<body>
<c:if test="${empty kehusList}" var="ret">
		<%
			request.getRequestDispatcher("/findAllCard.handler").forward(request, response);
		%>
	</c:if>
	<nav>
	<div class="top_big">
		<div class="top_left">
			<a href="#"><img
				src="${pageContext.request.contextPath}/images/userimg/logo.png"></a>
			<div class="logo_zi">
				<h2>卡卡卡</h2>
				<p>De-lovely Credit Card</p>
			</div>
			<div class="clear"></div>
		</div>
		<div class="top_right">
			<ul>
                	<li class="active"><a href="index.jsp">首页</a></li>
                	<li><a href="kakaka.jsp">卡卡卡</a></li>
                    <li><a href="service.jsp">服务</a></li>
                    <li><a href="bill-list.jsp">个人中心</a></li>
                   <!--  <li><a href="news.jsp">新闻</a></li> -->
                   <li style="font-size: 12px; margin-right: -100px; margin-top: 4px;">欢迎您登录，<span
					style="color: red;">${kehu_name }</span>|<a href="${pageContext.request.contextPath}/userlogin.jsp" style="display: inline; width: 10px; padding: 0px; margin: 0px; color: #008fd5;">退出登录</a></li>
		
		</ul>
		</div>
	<div class="clear"></div>
	<div>
	</nav>
	<!---------------------nav  end---------------------->


	<%--     <div class="zp_banner">
    	<div class="deng slideInDown wow" data-wow-duration="1s"><img src="${pageContext.request.contextPath}/images/userimg/deng.png"/></div>
        <div class="shou slideInUp wow" data-wow-duration="1"><img src="${pageContext.request.contextPath}/images/userimg/shou.png"></div>
        <div class="zp_banner_p bounceInRight wow" data-wow-duration="1.2s"><p>携手一起去创造工程建设领域的信息化发展的美好明天</p></div>
    </div>
     --%>

	<!----------------zp_banner  end--------------------------------->

	<div class="zp_content_big mb40">
		<div class="zp_job pt25">
			<div class="zp_job_left bounceInLeft wow" data-wow-duration="1.5s">
				<ul>
					<li><a href="bill-list.jsp"><img
							src="${pageContext.request.contextPath}/images/userimg/job0.png" />账单列表</a></li>
					<li><a href="card-list.jsp" style="color: #00a1e9"><img
							src="${pageContext.request.contextPath}/images/userimg/zplc.png" />信用卡表</a></li>
					<li><a href="showscore.jsp"><img
							src="${pageContext.request.contextPath}/images/userimg/rili.png" />积分查看</a></li>
					<li><a href="huankuan.jsp"><img
							src="${pageContext.request.contextPath}/images/userimg/question.png" />还款操作</a></li>
					<div class="clear"></div>
				</ul>
			</div>
			<div class="zp_job_right">
				<h1 class="slideInDown wow" data-wow-duration="1s">信用卡表</h1>
				<div class="lie_name  fadeIn wow" data-wow-duration="2s">
					<ul>
						<li><a href="#" class="selected_lie">所有操作</a></li>
						<li>
							<!-- <a href="#" >技术类</a> -->
						</li>
						<li>
							<!-- <a href="#">市场内</a> -->
						</li>
						<li>
							<!-- <a href="#">其他</a> -->
						</li>
						<div class="clear"></div>
					</ul>
				</div>
<c:if test="${!ret }">
				<div class="lie_content pl20 mt20">
					<ul>
						<li class=" fadeIn wow" data-wow-duration="2s">
						<i style="width: 50px;">卡id</i> 
						<i style="width: 50px;">卡号</i> 
						<i style="width: 50px;">用户名</i>
						<i style="width: 50px;">类型</i>
						<i style="width: 50px;">额度</i>
						<i style="width: 400px;">创建时间</i>
						<i style="width: 50px;">状态</i>
						<i style="width: 100px;">剩余额度</i>
						<i style="width: 100px;">逾期次数</i>
						</li>
	
						<c:forEach var="kehus" items="${kehusList}" varStatus="status">
						<c:forEach var="kehucards" items="${kehus.cards}" varStatus="status">
						<c:if test="${kehus.kehu_name==kehu_name}">
						<li class=" fadeIn wow" data-wow-duration="2s">
						<i style="width: 50px;">${kehucards.card_id}</i> 
							<i style="width: 50px;">${kehucards.card_number}</i> 
							<i style="width: 50px;">${kehus.kehu_name} </i> 
							<i style="width: 50px;">${kehucards.card_type}</i> 
							<i style="width: 50px;">${kehucards.card_quota}</i> 
							<i  style="width: 400px;">${kehucards.card_time}</i> 
							<i style="width: 50px;">${kehucards.card_status}</i>
							<i style="width: 100px;">${kehucards.card_remainder}</i>
							<i style="width: 100px;">${kehucards.card_overdue}</i>
						</li>
						</c:if>
					</c:forEach>
					</c:forEach>
						<div class="clear"></div>
					</ul>
				</div>
				</c:if>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<!-----------------zp_content_big end--------------------------------->

	<footer class="pt20">
	<div class="footer pb50">
		<div class="footer_left ml50">
			<ul>
				<li class="qq"><a href="#"><img
						src="${pageContext.request.contextPath}/images/userimg/qq.png" /></a>
					<div class="qq_erweima"></div></li>
				<li class="wb"><a href="#"><img
						src="${pageContext.request.contextPath}/images/userimg/wb.png" /></a>
					<div class="wb_erweima"></div></li>
				<li class="wx"><a href="#"><img
						src="${pageContext.request.contextPath}/images/userimg/wx.png" /></a>
					<div class="wx_erweima"></div></li>
			</ul>

		</div>
		<div class="footer_right">
			<ul>
				<li class="footer_li">
					<div>
						<a href="#"><img
							src="${pageContext.request.contextPath}/images/userimg/foot_icon_one.png" />
							| 关于我们</a>
					</div>
					<ul>
						<li><a href="#">了解我们</a></li>
                    <li><a href="#">案例展示</a></li>
                    <li><a href="#">发展历程</a></li>
                    <li><a href="#">我们的观点</a></li>
                    <li><a href="#">联系我们</a></li>
                </ul>                
            </li>
            
            <li class="footer_li">
            	<div><a href="#"><img src="${pageContext.request.contextPath}/images/userimg/foot_icon_two.png"/> | 产品服务</a></div>
            	<ul>
                	<li><a href="#">信用卡管理软件</a></li>
                    <li><a href="#">数据监控平台</a></li>
                    <li><a href="#">信用卡追踪记录</a></li>
                    <li><a href="#">售后服务大师</a></li>
                    <li><a href="#">云数据服务</a></li>
                </ul>                
            </li>
            
            <li class="footer_li">
            	<div><a href="#"><img src="${pageContext.request.contextPath}/images/userimg/foot_icon_three.png"/> | 人员招聘</a></div>
            	<ul>                	
                    <li><a href="#">大堂经理</a></li>
                    <li><a href="#">后台数据开发工程师</a></li>
                    <li><a href="#">信用卡管理工程师</a></li>
                    <li><a href="#">专业客服客服</a></li>
                    <li><a href="#">销售专员</a></li>
					</ul>
				</li>
				<div class="clear"></div>

			</ul>
		</div>
		<div class="clear"></div>
	</div>
	</footer>
	<!--------------------footer end------------------------------->
</body>
</html>
