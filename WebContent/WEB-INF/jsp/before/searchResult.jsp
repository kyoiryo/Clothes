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
</head>
<body>
	<div class="blank"></div>
	<div class="block clearfix">
		<div class="blank"></div>
		<div>
			<div class="nFlowBox">
				<table width="99%" align="right" border="0" cellpadding="5" 
					cellspacing="1" bgcolor="#dddddd">
					<tr align="center">
						<th>ID</th>
						<th>名称</th>
						<th>写真</th>
						<th>価格</th>
						<th>もっと見る</th>
					</tr>
					<tr>
						<td colspan="5" height="15px"
							style="border: 0 none; background: #FFF"></td>
					</tr>
					<c:forEach items="${searchlist }" var="mf">
						<tr>
							<td bgcolor="#ffffff" align="left">${mf.id }</td>
							<td bgcolor="#ffffff" align="left">${mf.clothesname }</td>
							<td align="left" bgcolor="#ffffff" height="60px"><img
								style="width: 50px; height: 50px;"
								src="logos/${mf.clothespicture }" border="0" title="${mf.clothesname }" />
							</td>
							<td align="left" bgcolor="#ffffff">${mf.clothesrprice }</td>
							<td align="left" bgcolor="#ffffff"><a
								style="text-decoration: none;" class="f6"
								href="clothesDetail?id=${mf.id}">もっと見る</a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
