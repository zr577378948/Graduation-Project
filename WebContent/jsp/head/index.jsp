<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>无标题文档</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.index.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jQuery1.7.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/plugin/bootstrap.min.js"></script>
<!---------新闻--------->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/plugin/jquery.flexslider-min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/plugin/index.js"></script>
	<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
<!--------新闻end------------------>

</head>

<body>
		<%
	String kehu_name=(String)request.getSession().getAttribute("kehu_name");
	if(kehu_name==null){
		response.sendRedirect("../../userlogin.jsp");
		/* request.getRequestDispatcher("/userlogin.jsp").forward(request, response); */
	}
%>

	<!-------------nav begin--------------------->
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
	</div>
	<div class="clear"></div>
	<div>
	</nav>
	<!---------------------nav  end---------------------->

	<div id="myCarousel" class="carousel slide">
		<!-- 轮播（Carousel）指标 -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<!-- 轮播（Carousel）项目 -->
		<div class="carousel-inner">
			<div class="item active banner01">
				<div class="banner_p">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/userimg/banner_01.png" /></a>
				</div>
				<div class="item_banner01">
					<h1>信用卡</h1>
					<br />
					<h2>信用卡终于可以线上开通啦</h2>
					<br />
				</div>
			</div>
			<div class="item banner02">
				<div class="banner_p">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/userimg/banner_02.png" /></a>
				</div>
				<div class="item_banner01">
					<h1>信用卡</h1>
					<br />
					<h2>手机app也可以操作信用卡啦</h2>
					<br />
				</div>
			</div>
			<div class="item banner03">
				<div class="banner_p">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/userimg/banner_03.png" /></a>
				</div>
				<div class="item_banner01">
					<h1>
						信用卡</span>
					</h1>
					<br />
					<h2>为您量身定做您的信用卡啦</h2>
					<br />
				</div>
			</div>
		</div>
		<!-- 轮播（Carousel）导航 -->
		<a class="carousel-control left" href="#myCarousel" data-slide="prev"></a>
		<a class="carousel-control right" href="#myCarousel" data-slide="next"></a>
	</div>
	<!-----------------轮播   end------------------->



	<!--新闻资讯开始-->
	<div class="news_information">
		<div class="center oh">
			<div class="left oh">
				<img
					src="${pageContext.request.contextPath}/images/userimg/news_information.png"
					class="fl"> <a href="news.html"
					id="maincontenttop_0_newsLink" class="pr c008"> 新闻动态 <em></em>
				</a>
			</div>
			<div id="maincontenttop_0_newsClass" class="right oh pcOnly">
				<ul>
					<li><a href="#">请注意，每月1~10号为还款日哦！</a></li>

					<li><a href="#">信用卡线上开通试运营阶段顺利进行中。。。</a></li>

					<li class="m_hide"><a href="#">信用卡轻松申请</a></li>

					<li class="m_hide"><a href="#">关于信用卡，您知道吗？</a></li>

					<li class="m_hide"><a href="#">您的信用卡还有这些功能，戳进来看看</a></li>
				</ul>
				<ol ed_h="1" style="height: 33px;">
					<li class="news_p_n news_p visibility_hidden"><img
						src="${pageContext.request.contextPath}/images/userimg/index_lf_l.png"
						class="pa" ed_c="1" style="top: 7.5px; left: 14px;"></li>
					<li class="news_p_n news_n"><img
						src="${pageContext.request.contextPath}/images/userimg/index_lf_r.png"
						class="pa" ed_c="1" style="top: 7.5px; left: 14.5px;"></li>
				</ol>

			</div>
		</div>
	</div>
	<!--新闻资讯结束-->

	<div class="we_big mt20 mb40">
		<div class="we_content">
			<ul>
				<li>
					<div class="we_img">
						<img
							src="${pageContext.request.contextPath}/images/userimg/we_01.png" />
					</div>
					<div class="mt10">
						<span>我们的故事</span>
						<p>我们是全球最具权威的银行，加入我们，保证您的资金拥有多重保护，在任何情况下，只要您需要我们，只需向我们致电即可，我们有专业的团队为您解决您关于信用卡的一切问题。欢迎广大用户致电。</p>
					</div>
				</li>
				<li class="ml15 mr15">
					<div class="we_img">
						<img
							src="${pageContext.request.contextPath}/images/userimg/we_02.png" />
					</div>
					<div class="mt10">
						<span>我们的团队</span>
						<p>我们的团队为百余家客户实现实验检测信息化服务。稳定、业务增长、质量管控、改善运营绩效、并优化检测业务流程。我们从不空谈理论，我们的方法是深入现场、真抓实干。</p>
					</div>
				</li>
				<li>
					<div class="we_img">
						<img
							src="${pageContext.request.contextPath}/images/userimg/we_03.png" />
					</div>
					<div class="mt10">
						<span>我们的理念</span>
						<p>我们银行自成立以来，坚持“勤奋务实、开拓创新”的企业精神，秉承“以人为本、技术领先、精益求精，追求完美”为立基之本。</p>
					</div>
				</li>
				<div class="clear"></div>
			</ul>
		</div>
	</div>
	<!--------------------we_big end------------------------->



	<footer class="pt20">
	<div class="footer pb40">
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
					<div>
						<a href="#"><img
							src="${pageContext.request.contextPath}/images/userimg/foot_icon_two.png" />
							| 产品服务</a>
					</div>
					<ul>
						<li><a href="#">信用卡管理软件</a></li>
						<li><a href="#">数据监控平台</a></li>
						<li><a href="#">信用卡追踪记录</a></li>
						<li><a href="#">售后服务大师</a></li>
						<li><a href="#">云数据服务</a></li>
					</ul>
				</li>

				<li class="footer_li">
					<div>
						<a href="#"><img
							src="${pageContext.request.contextPath}/images/userimg/foot_icon_three.png" />
							| 人员招聘</a>
					</div>
					<ul>
						<li><a href="#">大堂经理</a></li>
						<li><a href="#">后台数据开发工程师</a></li>
						<li><a href="#">信用卡管理工程师</a></li>
						<li><a href="#">专业客服客服</a></li>
						<li><a href="#">销售专员</a></li>
					</ul>
				</li>
			</ul>
		</div>
		<div class="clear"></div>
	</div>
	</footer>
	<!--------------------footer end------------------------------->
<!-- <script type="text/javascript">
		var i = $("#input1").val();
		
		location.href = "${pageContext.request.contextPath}/findBillDate.handler?card_id="
			+ i;
</script>

 -->













</body>
</html>
