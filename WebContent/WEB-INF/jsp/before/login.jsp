<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>  
<jsp:include page="head.jsp"></jsp:include>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title></title>
	<link href="css/before/daohang.css" rel="stylesheet" type="text/css" />
	<link href="css/before/common.css" rel="stylesheet" type="text/css" />
	<link href="css/before/style.css" rel="stylesheet" type="text/css" />
	<style type="text/css">
	table{
		text-align: center;
	}
	.textSize{
		width: 200px;
		height: 20px;
	}
	</style>
	<script type="text/javascript">
	//确定按钮
	function gogo(){
		document.loginform.submit();
	}
	//取消按钮
	function cancel(){
		document.loginform.action="";
	}
	</script>
  </head>
  <body>
  
  <div class="col-sm-6 col-sm-offset-3">
		<form class="form-horizontal" action="user/login"
			modelAttribute="buser" method="post" name = "loginform">
			<h2 align="center">User Login</h2><br>
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label"> 
					<i style="font-size: 20px; font-style: oblique; font-family: 华文新魏; class="sublist-icon glyphicon glyphicon-user" >
					E-Mail</i>
				</label>
				<div class="col-sm-8">
					<input type="text" class="form-control" name="useremail" value="${buser.useremail }"
						placeholder="E-Mailを入力してください">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword3" class="col-sm-2 control-label">
					<i style="font-size: 20px; font-style: oblique; font-family: 华文新魏; class="sublist-icon glyphicon glyphicon-user" >
					暗&nbsp&nbsp&nbsp&nbsp証</i>
				</label>
				<div class="col-sm-8">
					<input type="password" class="form-control" name="userpass"
						placeholder="暗証を入力してください">
				</div>
			</div>
			<div class="form-group" style="margin-left: 110px;">
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-danger" style="width: 80px;" onclick="gogo()">
						ログイン</button>
					<button type="reset" class="btn btn-warning" style="width: 80px;" onclick="cancel()">
						キャンセル</button>
				</div>
			</div>
		</form>
	</div>
  
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
  </body>
</html>
