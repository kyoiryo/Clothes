<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<title>main</title>
<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
}

body {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	margin: 50px auto;
	height: auto;
	width: 1000px;
	border: 2px solid #00EEEE;
	background-color:white;
	/* background-image: url(images/admin/8.jpg); #D1EEEE*/
}

#header {
	height: 90px;
	width: 1000px;
	background-image: url(images/admin/99.jpg);
	margin: 0px 0px 2px 0px;
}

#header h1 {
	text-align: center;
	font-family: 宋体;
	color: #000000;
	font-size: 30px；
}

#navigator {
	height: 25px;
	width: 1000px;
	font-size: 14px;
	background-image: url(images/admin/999.jpg);
}
#navigator ul {
	list-style-type: none;
}
#navigator li {
	float: left;
	padding: 0px 10px 0px 40px;
	position: relative;
}
#navigator li a {
	color: #000000;
	text-decoration: none;
	padding-top: 4px;
	display: block;
	width: 98px;
	height: 22px;
	text-align: center;
	background-color: PaleGreen;
	margin-left: 2px;
}
#navigator li a:hover {
	background-color: #006633;
	color: #FFFFFF;
}
#navigator ul li ul {
   visibility: hidden;
   position: absolute;
}

#navigator ul li:hover ul,
#navigator ul a:hover ul{
   visibility: visible;
}

#content {
	height: auto;
	width: 980px;
	padding: 15px;
}

#content iframe {
	height: 300px;
	width: 1000px;
	margin-left: 59px;
}
#footer {
	height: 30px;
	width: 980px;
	line-height: 2em;
	text-align: center;
	background-color:#87CEEB;
	padding: 10px;
	font-family: 楷体;
	font-size:15px;
}
</style>
 <script type="text/javascript">
  //创建一个日期对象
  function show(){
  var d=new Date();
  //获取年份
  //var nian=d.getYear();//2016  //16
var nian=d.getFullYear();//2016
  //获取月
  var yue=d.getMonth()+1;//6   july 7月   0-11
  //获取星期几
  var xq=d.getDay();//5    0-6    0:星期天
  //获取几号
  var dd=d.getDate();//1    1-31
  //获取小时
  var h=d.getHours();// 16下午4点     24小时制
  //获取分钟
  var m=d.getMinutes();//31分
  //获取描述
  var s=d.getSeconds();//50秒
  document.getElementById("time").innerHTML = nian + "年"+ yue + "月" +dd+"日   "+" "+h+":"+m+":"+s; 
  }
  setInterval("show()",1000);
  </script>
</head>
<body onload="time()">
	<div id="header"> 
		<br>
		<p id="time" style="font-size: 15px;"><script type="text/javascript"> show();</script>
		<br>
		<h1>${auser.adminname}ようこそ</h1>
	</div>
	
	<div id="navigator">
		<ul>
			<li><a>商品管理</a>
				<ul> 
					<li><a href="adminClothes/toAddClothes" target="center">商品添加</a></li>
					<li><a href="adminClothes/selectClothes?act=deleteSelect" target="center">商品削除</a></li>
					<li><a href="adminClothes/selectClothes?act=updateSelect" target="center">商品変更</a></li>
					<li><a href="adminClothes/selectClothes" target="center">商品展示</a></li>
				</ul>
			</li>
			<li><a>タイプ管理</a>
				<ul>
					<li><a href="adminType/toAddType" target="center">タイプ添加</a></li>
					<li><a href="adminType/toDeleteType" target="center">タイプ削除</a></li>
				</ul>
			</li>
		<!--		-->
			<li><a>広告管理</a>
				<ul>
					<li><a href="adminNotice/toAddNotice" target="center">広告添加</a></li>
					<li><a href="adminNotice/deleteNoticeSelect" target="center">広告削除</a></li>
				</ul>
			</li>
			<li><a href="exit">ログアウト</a></li>
		</ul>
		
	</div>
	<div id="content">
		<iframe src="adminClothes/selectClothes"  name="center" frameborder="0"></iframe>
	</div>
	<div id="footer"></div>
</body>
</html>


