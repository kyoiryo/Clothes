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
<title></title>
<link href="css/before/daohang.css" rel="stylesheet" type="text/css" />
<link href="css/before/common.css" rel="stylesheet" type="text/css" />
<link href="css/before/style.css" rel="stylesheet" type="text/css" />
<link href="css/admin/common.css" type="text/css" rel="stylesheet">
</head>
  
<body>
	<form:form action="address/addNewAddress" method="post" modelAttribute="address" >
	<div align="center">
			<br>
			
			<br><br>
		<table  width="400px;" border=3 style=" border-collapse: collapse;margin-right: 205px;
		font-size:20px;text-align:center;text-decoration:underline;font-family:华文楷体;font-style: italic;border-color:silver;">
			<tr>
				<td>受け取り人<font color="red">*</font></td>
				<td>
					<form:input path="name" title="受け取り人を入力してください" size="25"/>
				</td>
			</tr>
			<tr>
				<td>電話<font color="red">*</font></td>
				<td>
					<form:input path="tel" title="電話を入力してください" size="25"/>
				</td>
			</tr>
			
			<tr>
				<td>受け取り先<font color="red">*</font></td>
				<td>
				<form:textarea path="address" title="受け取り先を入力してください"  size="25"/>
				</td>
			</tr>	
	<tr>
	<td colspan="2" align="center">
		<input  style="border-color: aqua;width: 50px ;height: 25px;background-color: #00BFFF"  type="submit" value="提交"/>&nbsp
		<input style="border-color: aqua;width: 50px ;height: 25px;background-color: #00BFFF" type="reset" value="修正"/>
	</td>
	</tr>
		</table>
		</div>
	</form:form>
	<br><br><br><br><br><br>
</body>
</html>




