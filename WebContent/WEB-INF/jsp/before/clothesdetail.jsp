<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:include page="head.jsp"></jsp:include>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<title></title>
<link href="css/before/daohang.css" rel="stylesheet" type="text/css" />
<link href="css/before/common.css" rel="stylesheet" type="text/css" />
<link href="css/before/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
	function goCart() {
		document.putcartform.submit();
	}
</script>
</head>
<body>
	<form action="cart/putCart" name="putcartform" method="post">
		<div class="blank"></div>
		<div class="block clearfix">
			<br><br>
			<div class="blank"></div>
			<div id="clothesInfo" style="margin-left: 300px;">
				<div class="imgInfo">
					<input type="hidden" name="id"
						value="${clothes.id }"/><img
						src="logos/${clothes.clothespicture}"
						width="230px" height="230px" />
				</div>
			</div>
			<br>
			<div class="clothes_desc" style="margin-left: 300px;font-family: 宋体;font-weight:100; font-size:20px;font-style: oblique;">
				<div class="bt">
					${clothes.clothesname }
				</div>
				<div class="clothes_show">
					<ul>
						<li><span>価格:</span> <strong class="yj">${clothes.clothesoprice }円</strong></li>
						<li><span>割引:</span><strong
							class="xj">${clothes.clothesrprice }円</strong>
						</li>
						<li><span>タイプ:</span> ${clothes.typename }</li>
						<li><span>数:</span><input type="text" name="shoppingnum" 
							class="good_txt" value="1" /> ${clothes.clothesstore }</li>
					</ul>
				</div>
				<br>
				<button type="submit" class="btn btn-danger" style="width: 150px;" onclick="go()">
						カートに入れる</button>
			</div>
			</div>  
	</form>
</body>
</html>
