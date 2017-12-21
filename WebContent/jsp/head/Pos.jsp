<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>消费页面</title>
    <!-- <link rel="stylesheet" href="css/login/main.css"> -->
<script type="text/javascript" src="../../js/jquery-2.1.1.min.js"></script>
<style type="text/css">
body{
 background-image: url("../../images/cat.jpg"); }
input {
	line-height: 20px;
	width: 200px;
	/* border-style:ridge */
	border-style:groove;
	/* border-radius:10px; */
	background-color: transparent;
	border-color: #009688;
}
table {
margin-top:90px;
margin-left:30%;
	line-height: 40px;

}
div{
	/* border: 1px solid #009688; */
	width: 50%;
	margin: auto;
	margin-left:500px;
	margin-top:100px;
	height: 500px;
}
</style>
<script type="text/javascript">
	/* function move_kehu_name(kehu_name){
	
			$.post('${pageContext.request.contextPath}/find_kehu_name.handler', {
				kehu_name : kehu_name
			}, function(data) {
				if (data.kehu == null) {
					alert("客户不存在，请重新输入!");
				}else{
					$(".kehu_name").val(data.kehu.kehu_name);
					}
			}, 'json'); 
			}
			
		 function move_kehu_name1(){
			 $.post('${pageContext.request.contextPath}/find_kehu_name.handler', {
					kehu_name : $(".kehu_name").val()
				}, function(data) {
						 if($(".card_number").val()!=data.kehu.cards[0].card_number){
							 alert("客户名与卡号不匹配，请检查后重新输入!");
					} else{
						$(".card_type").val(data.kehu.cards[0].card_type); 
					}
						 
				}, 'json'); 

	}*/

	function move_kehu_name(kehu_name) {
		$.post('${pageContext.request.contextPath}/find.handler', {
			kehu_name : kehu_name
		}, function(data) {
			if (data.pos[0] == null) {
				alert("客户不存在，请重新输入!");
				$(".kehu_name").val(null);
			} else {
				$(".kehu_name").val(data.pos[0].kehu.kehu_name);
				$(".kehu_id").val(data.pos[0].kehu.kehu_id);
			}
		}, 'json');
	}

	function move_card_number() {
		$.post('${pageContext.request.contextPath}/find.handler', {
			kehu_name : $(".kehu_name").val()
		}, function(data) {
			if ($(".card_number").val() != data.pos[0].kehu.cards[0].card_number) {
				alert("客户名与卡号不匹配，请检查后重新输入!");
				$(".card_number").val("");
			} else {
				$(".card_type").val(data.pos[0].kehu.cards[0].card_type);
			}
		}, 'json');
	}

	function paynum() {
		$.post('${pageContext.request.contextPath}/find.handler', {
			kehu_name : $(".kehu_name").val()
		}, function(data) {
			var i = data.pos[0].kehu.cards[0].card_remainder;//剩余额度
			$("#pay").val("您的可透支额度为"+i+"元");
			$(".card_remainder").val(i);
		}, 'json');
	}
	
/**
 * if($("#pay_num").val()>i){
		alert("客户名与卡号不匹配，请检查后重新输入!");
	}
 */
	/* var mydate = new Date();
	mydate.toLocaleTimeString();//获取当前时间
	alert(mydate) */

	function paynum1() {
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
		
		
		 $.post('${pageContext.request.contextPath}/find.handler', {
				kehu_name : $(".kehu_name").val()
			}, function(data) {
				var i = data.pos[0].kehu.cards[0].card_remainder;//剩余额度
				if($("#pay_num").val()>i){
					alert("可透支额度不足，请重新输入!");
					$("#pay_num").val(null);
				}else{
					$(".pay_time").val(clock);
				}
			}, 'json');

	}

	function move_card_password() {
		 $.post('${pageContext.request.contextPath}/find.handler', {
			kehu_name : $(".kehu_name").val()
		}, function(data) {
			if($(".card_password").val()!=data.pos[0].kehu.cards[0].card_password){
				 alert("密码不正确，请检查后重新输入!");
				 $(".card_password").val(null); 
		}/*  else{
			var card_number = $(".card_number").val();
			location.href = "${pageContext.request.contextPath}/updateCard_remainder.handler?card_number="
					+ card_number;
		}  */
		}, 'json');  
	}
	
	function tijiao() {
		if(($(".kehu_name").val()==null||$(".kehu_name").val().length==0)||
				($(".card_number").val()==null||$(".card_number").val().length==0)||
				($(".card_type").val()==null||$(".card_type").val().length==0)||
				($("#pay_num").val()==null||$("#pay_num").val().length==0)||
				($(".pay_time").val()==null||$(".pay_time").val().length==0)||
				($(".card_password").val()==null||$(".card_password").val().length==0)){
			alert("请完善信息后提交！")
			return false;
		}
		 /* var card_number = $(".card_number").val();
		location.href = "${pageContext.request.contextPath}/updateCard_remainder.handler?card_number="
				+ card_number;  */
		return true;
	}
</script>
</head>
<body>
<div>
<h1 style="margin-left: 290px;">信用卡消费页面</h1>
	<form action="${pageContext.request.contextPath}/updateCard_remainder.handler"
		method="post" onsubmit="return tijiao()">
		<table  align="center">
			<tr>
				<td align="right">客户名:&nbsp;&nbsp;&nbsp;</td>
				<td><input type="text" class="kehu_name" 
					onblur="move_kehu_name(this.value)">
					<input type="hidden" class="kehu_id"  name="kehu.kehu_id"
					>
					<!-- 将剩余额度赋值给文本框传入后台操作 -->
					<input type="hidden" class="card_remainder"  name="card_remainder"
					>
					</td>
			</tr>
			<tr>
				<td align="right">卡号:&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td><input type="text" class="card_number" 
					 onblur="move_card_number()" name="card_number">
					 
					 <!-- name="cards[0].card_number" --></td>
			</tr>
			<tr>
				<td  align="right">信用卡类型:&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td><input type="text" class="card_type" >
				</td>
			</tr>
			<tr>
				<td  align="right">消费金额:&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td><input type="text" name="pay_num" id="pay_num" 
					onfocus="paynum()" onblur="paynum1()"><input type="text"
					id="pay" style="border: 0px; color: red;" readonly="readonly"></td>
			</tr>
			<tr>
				<td align="right">消费类型:&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td><select name="custom_type" style="background-color: transparent;
	border:2px solid #339999; height: 27px;">
						<option value="充话费">充话费</option>
						<option value="买单">买单</option>
				</select></td>
			</tr>
			<tr>
				<td align="right">消费日期:&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td><input type="text" name="pay_time" class="pay_time">
				</td>
			</tr>
			<tr>
				<td align="right">请输入密码:&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td><input type="password" 
					class="card_password" onblur="move_card_password()"></td>
			</tr>
			<tr>
				<td colspan="2" align="right" style="position: absolute; margin-left:89px;">&nbsp;&nbsp;&nbsp;&nbsp;<input style="background-color: #009688; border: 0px; height: 30px; border-radius:3px; " type="submit"></td>
			</tr>

		</table>
	</form></div>
</body>
</html>