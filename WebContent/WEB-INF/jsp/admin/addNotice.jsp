<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<title>addNotice.jsp</title>
<link href="css/admin/common.css" type="text/css" rel="stylesheet">
</head>    
<body>
	<form:form action="adminNotice/addNotice" method="post" modelAttribute="notice" >
			<br>
			<div style="margin-left: 340px;">
				<caption style="border-collapse: collapse; border-left: 500px;">
					<font color="black" style=" background-color:" size=5 face=华文楷体>添加公告</font>
				</caption>
			</div>
			
			<br><br>
		<table align="center" width="400px;" border=3 style=" border-collapse: collapse;margin-left: 180px;
		font-size:20px;text-align:center;text-decoration:underline;font-family:华文楷体;font-style: italic;border-color:silver;">
			<tr>
				<td>标题</td>
				<td>
					<form:input path="ntitle" title="请输入名称" size="25"/>
				</td>
			</tr>
			<tr>
				<td>内容</td>
				<td>
				<form:textarea path="ncontent" title="请输入内容"  size="25"/>
				</td>
			</tr>	
	<tr>
	<td colspan="2" align="center">
		<input  style="width: 50px ;height: 25px;background-color: #00BFFF"  type="submit" value="提交"/>
		<input style="width: 50px ;height: 25px;background-color: #00BFFF" type="reset" value="重置"/>
	</td>
	</tr>
		</table>
	</form:form>
</body>
</html>
