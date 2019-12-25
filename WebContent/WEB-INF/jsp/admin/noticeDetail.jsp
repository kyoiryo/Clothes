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
<link href="css/admin/bootstrap.min.css" rel="stylesheet">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<style type="text/css">
body {
	background-image: url("/Clothes/images/admin/9.jpg");
	background-repeat: no-repeat center fixed;
	background-size: 100%;
}
</style>
</head>
<body>
<h2 align="center" style="margin-top: 55px;">詳しい</h2>
<ul class="nav nav-pills nav-stacked" style="max-width: 400px;text-align: center;margin-top: 80px;margin-left: 450px;">
    <li class="active">
       <a > タイトル： <span class="badge pull-right"></span>${notice.ntitle }</a>
        </li>
    <li>
    	<a > 内容： <span class="badge pull-right"></span>${notice.ncontent }</a>
    </li>
    <li>
        <a>
            時間：<span class="badge pull-right"></span>${notice.ntime }</p>
     </a>
    </li>
</ul>	
</body>
</html>