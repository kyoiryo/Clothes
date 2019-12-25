<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<title>updateAclothes.jsp</title>
<link href="css/admin/common.css" type="text/css" rel="stylesheet">
</head>    
<body>
	<form:form action="adminClothes/addClothes?updateAct=update" method="post" modelAttribute="clothes" enctype="multipart/form-data">
		<br>
			
			<div style="margin-left: 340px;">
				<caption style="border-collapse: collapse; border-left: 500px;">
					<font color="black" style=" background-color:" size=5 face=华文楷体>商品修正</font>
				</caption>
			</div>
			
			<br><br>
			
		<table align="center" width="400px;" border=3 style=" border-collapse: collapse;margin-left: 205px;
		font-size:20px;text-align:center;text-decoration:underline;font-family:华文楷体;font-style: italic;border-color:silver;">
			<caption>
				<form:hidden path="id"/>
			</caption>
			<tr>
				<td>名称<font color="red">*</font></td>
				<td>
					<form:input path="clothesname" title="新しい名称" size="25"/>
				</td>
			</tr>
			<tr>
				<td>原価<font color="red">*</font></td>
				<td>
					<form:input path="clothesoprice" title="新しい原価"  size="25"/>
				</td>
			</tr>
			<tr>
				<td>割引</td>
				<td>
					<form:input path="clothesrprice" title="新しい割引" size="25"/>
				</td>
			</tr>
			<tr>
				<td>数</td>
				<td>
					<form:input path="clothesstore" title="新しい数" size="25"/>
				</td>
			</tr>
			<tr>
				<td>写真</td>
				<td>
					<input type="file" name="logoImage" title="新しい写真" size="25"/>
					<br>
					<c:if test="${clothes.clothespicture != ''}">
						<img alt="" width="50" height="50"
						src="logos/${clothes.clothespicture}"/>
					</c:if>	
				</td>
			</tr>
			<tr>
				<td>类型</td>
				<td>
					<form:select path="clothestype_id">
         				<form:options items="${clothesType }" itemLabel="typename" itemValue="id"/>
   					</form:select>
				</td>
			</tr>
			<tr>
	<td colspan="2" align="center">
		<input  style="width: 50px ;height: 25px;background-color: #00BFFF"  type="submit" value="提出"/>
		<input style="width: 50px ;height: 25px;background-color: #00BFFF" type="reset" value="修正"/>
	</td>
	</tr>
		</table>
	</form:form>
	${msg }
</body>
</html>
