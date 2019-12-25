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
    <title>selectClothes.jsp</title>
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
  		function checkDel(id){
  			if(window.confirm("確認しますか？")){
  				window.location.href = "/Clothes/adminNotice/deleteNotice?id="+id;
  			}
  		}
  </script>
</head>
<body>
	<c:if test="${allNotices.size() == 0 }">
		広告はありません。
	</c:if>
	<c:if test="${allNotices.size() != 0 }">
		<table border="1" bordercolor="black">
			<tr>
				<th width="200px">ID</th>
				<th width="200px">タイトル</th>
				<th width="200px">時間</th>
				<th width="100px">詳しい</th>
				<th width="100px">操作</th>
			</tr>
			<c:forEach items="${allNotices }" var="notice">
				<tr onmousemove="changeColor(this)" onmouseout="changeColor1(this)">
					<td>${notice.id }</td>
					<td>${notice.ntitle }</td>
					<td>${notice.ntime }</td>
					<td><a href="adminNotice/selectANotice?id=${notice.id }" target="_blank">詳しい</a></td>
					<td>
						<a href="javascript:checkDel('${notice.id }')">削除</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>