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
    <title>selectGoods.jsp</title>
	<link href="css/admin/common.css" type="text/css" rel="stylesheet">
	<style type="text/css">
		table{
			text-align: center;
			border-collapse: collapse;
		}
		.bgcolor{
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
	<script type="text/javascript">
  		function confirmDelete(){
  			var n = document.deleteForm.ids.length;
  			var count = 0;//统计没有选中的个数
  			for(var i = 0; i < n; i++){
  				if(!document.deleteForm.ids[i].checked){
  					count++;
  				}else{
  					break;
  				}
  			}
  			if(n > 1){
  				if(count == n){
  					alert("请选择被删除的商品！");
  	  				count = 0;
  	  				return false;
  				}
  			}else{
  	  			if(!document.deleteForm.ids.checked){
  	  					alert("请选择被删除的商品！");
  	  					return false;
  	  			}
  			}	
  		
  			if(window.confirm("really?")){
  				document.deleteForm.submit();
  				return true;
  			}
  			return false;
  		}
  		function checkDel(id){
  			if(window.confirm("是否删除该商品？")){
  				window.location.href = "/Clothes/adminClothes/deleteAClothes?id="+id;
  			}
  		}
  </script>
</head>
<body>
	<c:if test="${allClothes.size() == 0 }">
		商品はありません。
	</c:if>
	<c:if test="${allClothes.size() != 0 }">
		<form action="adminClothes/deleteClothes" name="deleteForm">
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
					<td><input type="checkbox" name="ids" value="${clothes.id }"/>${clothes.id }</td>
					<td>${clothes.clothesname }</td>
					<td>${clothes.clothesrprice }</td>
					<td>${clothes.clothesstore }</td>
					<td><a href="adminClothes/selectAClothes?id=${clothes.id }" target="_blank">詳しい</a></td>
					<td>
						<a href="javascript:checkDel('${clothes.id }')">削除</a>
					</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="6">
					<input type="button" value="削除" onclick="confirmDelete()">
				</td>
			</tr>
			<tr>
				<td colspan="6" align="right">
					&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;
					<c:url var="url_pre" value="adminClothes/selectClothes">
						<c:param name="pageCur" value="${pageCur - 1 }"/>
						<c:param name="act" value="deleteSelect"/>
					</c:url>
					<c:url var="url_next" value="adminClothes/selectClothes">
						<c:param name="pageCur" value="${pageCur + 1 }"/>
						<c:param name="act" value="deleteSelect"/>
					</c:url>
					<!-- 第一页没有上一页 -->
					<c:if test="${pageCur != 1 }">
						<a href="${url_pre}">前へ</a>&nbsp;&nbsp;&nbsp;&nbsp;
					</c:if>
					<!-- 最后一页，没有下一页 -->
					<c:if test="${pageCur != totalPage && totalPage != 0}">
						<a href="${url_next}">次へ</a>
					</c:if>
				</td>
			</tr> 
			<tr>
				<td colspan="6">${msg }</td>
			</tr>
		</table>
		</form>
	</c:if>
</body>
</html>