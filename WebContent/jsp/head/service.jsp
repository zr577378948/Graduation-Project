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
	<!-------------nav begin--------------------->
	<nav>
    	<div class="top_big">
            <div class="top_left">
                <a href="#"><img src="${pageContext.request.contextPath}/images/userimg/logo.png"></a>
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
        <div>
    </nav>
    <!---------------------nav  end---------------------->
    
    <div class="product_banner">
    	<h1 class="bounceIn wow" data-wow-duration="1s">用最前沿的技术为客户提供稳定高效的技术服务</h1>
        <a href="#" class="bounceIn wow" data-wow-duration="1s">立即前往</a>
    </div>
    
    <!----------------------product_banner  end----------------------------------------->
 
 	<div class="product_big mt30 pb50">
    	<div class="product_content">
        	<div class="product_soft">
            	<div class="product_left fadeInLeft wow" data-wow-delay="0.6s">
                	<img src="${pageContext.request.contextPath}/images/userimg/product_one.png"/>
                </div>
                <div class="product_right wow fadeInRight" data-wow-delay="0.8s">
                	<h2>实验室信息管理软件</h2>
                    <p>在这个竞争激烈的时代，信息化的重要性空前突出；大量的企业开始注重利用信息化手段优化企业管理、增强企业核心竞争力。企业不仅要通过降低成本提高效率来保障企业利润，更需要在信息化建设中结合业务发展不断创新；通过规范管理、知识整合及传递、从提高单一效率到通过协同提高企业整体效率等都是当前企业家重点考虑的问题。而通过网络化的协同信息化系统来改善管理运作是其中之一必要的解决方案。</p>
                    <a href="#">查看更多</a>
                </div>
                <div class="clear"></div>
            </div>          
        </div>
    </div>
 	
    
    <div class="product_big mt30 pb50">
    	<div class="product_content">
        	<div class="product_soft">            	
                <div class="product_right  fadeInLeft wow" data-wow-delay="0.8s"  style="margin-left:inherit; margin-right:160px;">
                	<h2>公路工程数据质量监控管理系统软件</h2>
                    <p>系统包含质量检测管理监控信息平台、人员考勤系统、质量信息数据终端管理软件(TAM、QIE)、压力机和万能试验机数据采集与监控系统、试验室视频监控系统、张拉压机系统 。 系统包含质量检测管理监控信息平台、人员考勤系统、质量信息数据终端管理软件(TAM、QIE)、压力机和万能试验机数据采集与监控系统、试验室视频监控系统、张拉压机系统、混凝土拌合站动态数据</p>
                    <a href="#">查看更多</a>
                </div>
                
                <div class="product_left   wow fadeInRight" data-wow-delay="1.0s">
                	<img src="${pageContext.request.contextPath}/images/userimg/product_two.png"/>
                </div>
                <div class="clear"></div>
            </div>          
        </div>
    </div>
 
 
 <!-----------------product_big end------------------------->
 
 <div class="mt30 introduce_big mb30">
 	<div class="introduce_content">
    	<h2 class="bounceInDown wow" data-wow-duration="3s">技术介绍</h2>
        <p class="bounceInDown wow" data-wow-duration="3s">拓东软件的网络产品支持丰富的数据通信特性，包括数据中心技术、虚拟化技术、以太网交换技术、广域网技术、路由技术、MPLS技术、VPN技术、QoS技术、语音技术和安全技术等。这些技术均集成在H3C公司的核心软件平台——Comware软件平台上。目前，H3C拥有ComwareV5和ComwareV7两大软件平台。</p>
        <div class="introduce mt10 bounceInUp wow" data-wow-duration="3s">
        	<ul>
            	<li>
                	<span><img src="${pageContext.request.contextPath}/images/userimg/TMILS.png"/></span>
                    <a href="#">TLIMS</a>
                </li>
                <li><span><img src="${pageContext.request.contextPath}/images/userimg/TBMS.png"/></span>
                    <a href="#">TBMS</a>
                </li><div class="clear"></div>
            </ul>
        </div>
      </div>
 </div>
 <!--------------------introduce_big  end-------------------------->
 

<footer class="pt20">
	<div class="footer pb40">
    	<div class="footer_left ml50">
        	<ul>
            	<li class="qq">
                	<a href="#"><img src="${pageContext.request.contextPath}/images/userimg/qq.png"/></a>
                     <div class="qq_erweima"></div>
                </li>
                <li class="wb">
                    <a href="#"><img src="${pageContext.request.contextPath}/images/userimg/wb.png"/></a>
                    <div class="wb_erweima"></div>
                </li>
                <li class="wx">
                	<a href="#"><img src="${pageContext.request.contextPath}/images/userimg/wx.png"/></a>
                 	<div class="wx_erweima"></div>
                </li>
            </ul>
           
        </div>
        <div class="footer_right">
        	<ul>
        	<li class="footer_li">
            	<div><a href="#"><img src="${pageContext.request.contextPath}/images/userimg/foot_icon_one.png"/> | 关于我们</a></div>
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
            </ul>
        </div>
    </div>
</footer>   
 <!--------------------footer end------------------------------->   
  
    
</body>
</html>
