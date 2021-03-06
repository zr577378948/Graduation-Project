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
<script type="text/javascript" src="../../js/jquery-2.1.1.min.js"></script>
<script>
if (!(/msie [6|7|8|9]/i.test(navigator.userAgent))){
	new WOW().init();
};

</script>
</head>

<body>
<c:if test="${empty posList}" var="ret">
		<%
			request.getRequestDispatcher("/findAllPosInfo.handler").forward(request, response);
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
                    <!-- <li><a href="news.jsp">新闻</a></li> -->
                   <li style="font-size: 12px; margin-right: -100px; margin-top: 4px;">欢迎您登录，<span
					style="color: red;">${kehu_name }</span>|<a href="${pageContext.request.contextPath}/userlogin.jsp" style="display: inline; width: 10px; padding: 0px; margin: 0px; color: #008fd5;">退出登录</a></li>
		
		</ul>
		</div>
	<div class="clear"></div>
	</nav>
	<!---------------------nav  end---------------------->

	<div class="zp_content_big mb40">
		<div class="zp_job pt25">
			<div class="zp_job_left bounceInLeft wow" data-wow-duration="1.5s">
				<ul>
					<li><a href="bill-list.jsp"><img
							src="${pageContext.request.contextPath}/images/userimg/job0.png" />账单列表</a></li>
					<li><a href="card-list.jsp"><img
							src="${pageContext.request.contextPath}/images/userimg/zplc.png" />信用卡表</a></li>
					<li><a href="showscore.jsp"><img
							src="${pageContext.request.contextPath}/images/userimg/rili.png" />积分查看</a></li>
					<li><a href="huankuan.jsp" style="color: #00a1e9"><img
							src="${pageContext.request.contextPath}/images/userimg/question.png" />还款操作</a></li>
					<div class="clear"></div>
				</ul>
			</div>
			<div class="zp_job_right">
				<h1 class="slideInDown wow" data-wow-duration="1s">还款操作</h1>
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
					<%-- <ul>
						<li class=" fadeIn wow" data-wow-duration="2s">
						<i>用户名</i>
						<i>卡号</i> 
						<i>消费类型</i> 
						<i>消费金额</i>
						<i  style="width: 200px;">消费时间</i>
						<i>pos机编号</i></li>
	
						<c:forEach var="pos" items="${posList}" varStatus="status">
						<c:forEach var="poscards" items="${pos.kehu.cards}">
						<c:if test="${pos.kehu.kehu_name==kehu_name}">
						<li class=" fadeIn wow" data-wow-duration="2s">
							<i>${pos.kehu.kehu_name}</i> 
							<i>${poscards.card_number}</i> 
							<i>${pos.custom_type}</i> 
							<i>${pos.pay_num}</i> 
							<i  style="width: 200px;">${pos.pay_time}</i> 
							<i>${pos.pos_number}</i>
						</li>
						</c:if>
					</c:forEach>
					</c:forEach>
					<li>页面正在建设中......</li>
					</ul> --%>
					<form action="${pageContext.request.contextPath}/huankuan.handler" method="post">
					<table style="line-height: 23px;">
						<tr>
						<br>
						<td align="right">卡号：</td>
						<td><input type="hidden" name="kehu_id" id="kehu_id" value="${kehu_id }">
						<input type="hidden" name="kehu_name" id="name" value="${kehu_name }">
						<input type="text" readonly="readonly" name="card_number" id="card_number" style="border:1px solid;"></td>
						</tr>
						<tr>
						<td align="right">应还金额：</td>
						<td><input type="text" id="card_money" name="repay" readonly="readonly" style="border:1px solid;"></td>
						</tr>
						<tr>
						<td align="right">还款日期：</td>
						<td><input type="text" id="money_date" name="pay_time" style="border:1px solid;"></td>
						</tr>
						<tr id="showsubmit">
						<td colspan="2" align="right"><input type="submit"  value="确认还款" style="border:1px solid #008fd5; background-color: #008fd5; color: white; font-weight: bold; width: 155.6px;"></td>
						</tr>
					</table>
					</form>
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
	<script type="text/javascript">
	var name = $("#name").val();
	
	$.post('${pageContext.request.contextPath}/find.handler',{
	kehu_name:name
	},function(data){
		$("#card_number").val(data.pos[0].kehu.cards[0].card_number);
	}
	);
	
	
	$.post('${pageContext.request.contextPath}/find.handler',{
		kehu_name:name
	},function(data){
		var i = data.pos[0].kehu.cards[0].card_quota - data.pos[0].kehu.cards[0].card_remainder;//还款金额
		$("#card_money").val(i);
		if(i==0){
			$("#showsubmit").hide();
		}
	});
	
	var now = new Date();

	var year = now.getFullYear(); //年  
	var month = now.getMonth() + 1; //月  
	var day = now.getDate(); //日  

	var hh = now.getHours(); //时  
	var mm = now.getMinutes(); //分  
	var ss = now.getSeconds(); //秒  

	var clock = year + "-";

	if (month < 10)
		clock += "0";

	clock += month + "-";

	if (day < 10)
		clock += "0";

	clock += day + " ";

	if (hh < 10)
		clock += "0";

	clock += hh + ":";
	if (mm < 10)
		clock += '0';
	clock += mm + ":";

	if (ss < 10)
		clock += '0';
	clock += ss;
	$("#money_date").val(clock);
	</script>
</body>
</html>
