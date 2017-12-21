<%--
  Created by IntelliJ IDEA.
  User: zr
  Date: 2017/10/17
  Time: 13:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <link rel="stylesheet" href="css/index/index.css">
    <link rel="stylesheet" href="js/lib/layui/css/layui.css">
</head>
<body>
<%
String username=(String)request.getSession().getAttribute("username");
if(username==null){
	response.sendRedirect("login.jsp");
	
}
%>
<div class="layui-layout-admin fly-body">
    <div class="layui-header">
        <div class="admin-title dp-ib"><h1 class="fs-24 dp-ib c-fff mgl-20 mgt-10">后台管理</h1></div>
        <div href="#!" class="layui-right user"><a href="#!" class="user-avatar"><img
                src="images/common/user-photo.jpg" alt="" class="layui-circle"><span
                class="c-fff mgl-20">欢迎您：${username}&nbsp;&nbsp;&nbsp;&nbsp;</span></a>
            <ul class="user-nav">
               <!--  <li class="user-nav-item"><a href="#!"><i class="layui-icon">&#xe612;</i> 个人设置</a></li> -->
                <li class="user-nav-item"><a href="login.jsp" id="btn-exit"><i class="layui-icon">&#xe623;</i> 退出</a>
                </li>
            </ul>
        </div>
        
    </div>
    <div style="width:170px!important;" class="layui-side">
        <ul class="layui-nav layui-nav-tree" id="sideNav" lay-filter="sideNav" style="width:170px!important;">
            <li class="layui-nav-item layui-nav-itemed"><a>客户管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;" data-url="jsp/user/user-baselist.jsp"><label>客户基本信息</label></a></dd>
                    <dd><a href="javascript:;" data-url="jsp/user/user-applylist.jsp"><label>客户申请信息</label></a></dd>
                   <!--  <dd><a href="javascript:;" data-url="jsp/user/user-list.jsp"><label>客户支付宝信息</label></a></dd> -->
                </dl>
            </li>
            <li class="layui-nav-item"><a>信用卡管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;" data-url="jsp/card/card-infolist.jsp"><label>信用卡信息</label></a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a>消费管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;" data-url="jsp/pos/pos-poslist.jsp"><label>pos机消费记录</label></a></dd>
                </dl>
            </li>
            <!-- <li class="layui-nav-item"><a>消息管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;" data-url="jsp/user/user-list.jsp"><label>客户消息</label></a></dd>
                </dl>
            </li> -->
        </ul>
    </div>
    <div class="layui-body" style="margin-left: 1.5%;" >
        <div class="layui-tab fly-tab layui-tab-card" lay-filter="page-tab" lay-allowclose="true">
            <ul class="layui-tab-title" id="tabTitle">
                <li class="layui-this" lay-id="0"><label>首页</label></li>
            </ul>
            <div class="layui-tab-content" id="tabContainers" style="padding-top: 5px;">
                <div class="layui-tab-item layui-show" style="background-image: url('${pageContext.request.contextPath}/images/bg.jpg'); height:100%;padding:0px;">
                	<span style="color: white; font-family: fantasy; font-size: 35px; display:block; padding: 250px 0px 0px 320px;">欢 迎 使 用 信 用 卡 审 批 管 理 系 统</span>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="js/lib/layui/layui.js"></script>
<script src="js/define/index.js"></script>
<script src="js/define/common.js"></script>
</body>
</html>