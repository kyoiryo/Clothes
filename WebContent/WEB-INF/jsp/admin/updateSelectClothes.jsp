<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
  <base href="<%=basePath%>">
    <title>updateSelectClothes.jsp</title>
	<link href="css/admin/common.css" type="text/css" rel="stylesheet">
	<style type="text/css">
		table{
			text-align: center;
			border-collapse: collapse;
		}
		.bgcolor{
		  	 background-color: #F08080; 
		  	background-color: #F08080;
		}
	</style>
	<script type="text/javascript">
		function changeColor(obj){
			obj.className = "bgcolor";
		}
		function changeColor1(obj){
			obj.className = "";
		}
	</script>
</head>
<body>
	<c:if test="${allClothes.size() == 0 }">
		商品がありません。
	</c:if>
	<c:if test="${allClothes.size() != 0 }">
		<table border="1" bordercolor="black">
			<tr>
				<th width="100px">ID</th>
				<th width="200px">名称</th>
				<th width="200px">価格</th>
				<th width="100px">数</th>
				<th width="100px">詳しい</th>
				<th width="100px">操作</th>
			</tr>
			<c:forEach items="${allClothes }" var="clothes">
				<tr onmousemove="changeColor(this)" onmouseout="changeColor1(this)">
					<td>${clothes.id }</td>
					<td>${clothes.clothesname }</td>
					<td>${clothes.clothesrprice }</td>
					<td>${clothes.clothesstore }</td>
					<td><a href="adminClothes/selectAClothes?id=${clothes.id }" target="_blank">詳しい</a></td>
					<td><a href="adminClothes/selectAClothes?id=${clothes.id }&act=updateAclothes" target="center" >変更</a></td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="6" align="right">
					&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;
					<c:url var="url_pre" value="adminClothes/selectClothes">
						<c:param name="pageCur" value="${pageCur - 1 }"/>
						<c:param name="act" value="updateSelect"/>
					</c:url>
					<c:url var="url_next" value="adminClothes/selectClothes">
						<c:param name="pageCur" value="${pageCur + 1 }"/>
						<c:param name="act" value="updateSelect"/>
					</c:url>
					
					<c:if test="${pageCur != 1 }">
						<a href="${url_pre}">前へ</a>&nbsp;&nbsp;&nbsp;&nbsp;
					</c:if>

					<c:if test="${pageCur != totalPage && totalPage != 0}">
						<a href="${url_next}">次へ</a>
					</c:if>
				</td>
			</tr> 
		</table>
	</c:if>
</body>
</html>