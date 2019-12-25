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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
  		function checkDel(id){
  			if(window.confirm("削除確認ですか？")){
  				window.location.href = "/Clothes/adminType/deleteType?id="+id;
  			}
  		}
  </script>
</head>
<body>
	<c:if test="${allTypes.size() == 0 }">
		タイプがありません。
	</c:if>
	<c:if test="${allTypes.size() != 0 }">
		<table border="1" bordercolor="black" >
			<tr>
				<th width="200px">タイプID</th>
				<th width="300px">タイプ</th>
				<th width="300px">操作</th>
			</tr>
			<c:forEach items="${allTypes }" var="clothesType">
				<tr>
					<td>${clothesType.id }</td>
					<td>${clothesType.typename }</td>
					<td><a href="javascript:checkDel('${clothesType.id }')">削除</a></td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="3"></td>
			</tr>
		</table>
	</c:if>
</body>
</html>