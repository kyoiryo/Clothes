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
	function  goOrderConfirm(){
		window.location.href="/Clothes/cart/orderConfirm?aid=0";
	}
	function godelete(){
		if(window.confirm("確認しますか")){
			window.location.href="/Clothes/cart/clear";
			return true;
		}
		return false;
	}
	function deleteAclothes(gno){
		if(window.confirm("確認しますか")){
			window.location.href="/Clothes/cart/deleteAclothes?id=" + gno;
			return true;
		}
		return false;
	}
</script>
</head>
<body>
	<div class="blank"></div>
	<div class="block clearfix">
		
		<br>
		<br>
		<div class="blank"></div>
		<div>
			<div class="nFlowBox">
				<table  width="99%" align="center" border="0" cellpadding="5"
					cellspacing="1" bgcolor="#dddddd">
					<tr style="text-align: center;">
						<th>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
						&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
						情報</th>
						<th>価格</th>
						<th>数</th>
						<th>明細</th>
						<th>操作</th>
					</tr>
					<tr>
						<td colspan="5" height="15px"
							style="border: 0 none; background: #FFF"></td>
					</tr> 
					<c:forEach var="ce" items="${cartlist}"> 
						<tr style="text-align: center;">
							<td bgcolor="#ffffff" align="left" style="text-align: center;"><a href="clothesDetail?id=${ce.id}"> <img
									style="width: 100px; height: 100px;"
									src="logos/${ce.clothespicture}" border="0"
									title="${ce.clothesname}" />
							</a><br/><a style="text-decoration: none;" href="clothesDetail?id=${ce.id}" class="f6">${ce.clothesname}</a></td>
							<td bgcolor="#ffffff" width="20%" align="left"><span>${ce.clothesrprice}</span></td>
							<td align="left" bgcolor="#ffffff" width="115px"
								valign="middle"><input type="text" name="clothes_number"
								value="${ce.shoppingnum}" size="4"
								class="inputBg"
								style="text-align: center; width: 20%; color: #999999" /></td>
							<td align="left" bgcolor="#ffffff" width="20%">￥&nbsp;<span>${ce.smallsum}</span>&nbsp;
							</td>
							<td align="left" bgcolor="#ffffff" width="20%"><a
								style="text-decoration: none;" href="javaScript:deleteAclothes('${ce.id}')"
								class="f6" title="削除">削除
							</a></td>
						</tr>
						
					</c:forEach>
					<tr>
						<td align="right" bgcolor="#ffffff" colspan="4" height="41px;"
							style="border-left: 0 none;">合計${total}円</td>
						<td align="center" bgcolor="#ffffff"><input type="button"
							value="clear" onclick="godelete()" class="bnt_blue_1" id="bnt11" />
						</td>
					</tr>
					<tr>
						<td bgcolor="#ffffff" colspan="4" align="right"
							style="padding: 5px; padding-left: 2px; border-right: 0 none">
							<a href="before">再び買う</a>
						</td>
						<td bgcolor="#ffffff" align="center"
							style="border-left: 0 none; padding: 5px; padding-right: 2px;">
							<a style="cursor: pointer;" href="javascript:goOrderConfirm()">
								清算</a>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<br>
		<br><br>
		<br><br>
		<br><br>
		<br>
</body>
</html>
