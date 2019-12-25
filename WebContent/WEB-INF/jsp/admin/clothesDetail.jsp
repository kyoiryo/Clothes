<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<link href="css/admin/bootstrap.min.css" rel="stylesheet">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> </title>
<style type="text/css">
body {
	background-repeat: no-repeat center fixed;
	background-size: 100%;
}
#d1{
      	height:  50px; 
        text-align:center;
        font-size:20px; padding-left: 50px; 
        padding-top: 10px;
        margin-left:200px;
        width: 700px;
        font-family: 华文楷体;
        color: black;
        font-size: 25px;
     }
</style>
</head>
<body>
	<br />
	<br />
	
		  <div class="container">
     <div class="text-white" id="d1" > 
           詳しい
     </div>
      <hr/>
       </div>
	<table class="table" style="margin-left: 350px;width: 40%;text-align: center;" >
  <tbody>
    <tr class="warning">
      <th>名称</th>
      <td>${clothes.clothesname }</td>
      <tr class="warning">
      <th>原価</th>
      <td>${clothes.clothesoprice }円</td>
      <tr class="warning">
      <th>割引</th>
      <td>${clothes.clothesrprice }円</td>
      <tr class="warning">
      <th>数</th>
      <td>${clothes.clothesstore }</td>
      <tr class="warning">
      <th>写真</th>
      <td><c:if test="${clothes.clothespicture != '' }">
					<img alt="" width="250" height="250"
					src="logos/${clothes.clothespicture}"/>
				</c:if></td>
		<tr class="warning">
      <th>タイプ</th>
      <td>${clothes.typename }</td>
  </tbody>
</table>
	
</body>
</html>