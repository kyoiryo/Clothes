<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
<title>修正</title>
<link href="css/before/daohang.css" rel="stylesheet" type="text/css" />
<link href="css/before/common.css" rel="stylesheet" type="text/css" />
<link href="css/before/style.css" rel="stylesheet" type="text/css" />

</head>
  <body>
  <form:form action="address/updateAddress" method="post" modelAttribute="address" >
		<table border=1 style="border-collapse: collapse">
			<caption>
				<font size=4 face=华文新魏>修正</font>
				<form:hidden path="id"/>
			</caption>
			<tr>
				<td>受け取り人<font color="red">*</font></td>
				<td>
					<form:input path="name"/>
				</td>
			</tr>
			<tr>
				<td>電話<font color="red">*</font></td>
				<td>
					<form:input path="tel"/>
				</td>
			</tr>
			<tr>
				<td>受け取り先</td>
				<td>
					<form:input path="address"/>
				</td>
			</tr>
			<tr>
				<td align="center">
					<input type="submit" value="修改"/>
				</td>
				<td align="left">
					<input type="reset" value="重置"/>
				</td>
			</tr>
		</table>

	</form:form>
</body>
</html>




