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
</head>
<body>
	<c:if test="${allTypes.size() == 0 }">
		タイプがありません
	</c:if>
	<c:if test="${allTypes.size() != 0 }">
		<table border="1" bordercolor="black" >
			<tr>
				<th width="200px">タイプID</th>
				<th width="600px">タイプ</th>
			</tr>
			<c:forEach items="${allTypes }" var="clothesType">
				<tr>
					<td>${clothesType.id }</td>
					<td>${clothesType.typename }</td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	<br>
	
	<form action="adminType/addType" method="post">
		タイプ：
		<input type="text" name="typename"/>
		<input  style="width: 40px ;height: 20px;background-color: #8470FF"  type="submit" value="添加"/>
	</form>
</body>
</html>