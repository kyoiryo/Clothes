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
<title>login</title>
<style type="text/css">
body {
	background-image: url("//Clothes/images/admin/8.jpg");
	background-repeat: no-repeat center fixed;
	background-size: 50%;
}
</style>
</head>
<body>
	<br />
	<br />
	<br />
	<br />
	<br />
	<div class="container" align="center">
		<div class="navbar-header " align="center">
			<a class="navbar-brand "
				style="font-size: 40px; font-style: oblique; font-family: 华文新魏; margin-left: 390px; color: black">
				ようこそへ</a><img src="" width="50" />
		</div>
	</div>
	<br />
	<br />
	<br />
	<div class="col-sm-6 col-sm-offset-3">
		<form class="form-horizontal" action="admin/login"
			modelAttribute="auser" method="post">
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label"> 
					<i style="font-size: 23px; font-style: oblique; font-family: 华文新魏; class="sublist-icon glyphicon glyphicon-user" >
					ユーザ</i>
				</label>
				<div class="col-sm-8">
					<input type="text" class="form-control" name="adminname"
						placeholder="ユーザを入力してください" style="background-color: silver;">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword3" class="col-sm-2 control-label">
					<i style="font-size: 25px; font-style: oblique; font-family: 华文新魏; class="sublist-icon glyphicon glyphicon-user" >
					暗&nbsp&nbsp&nbsp&nbsp証</i>
				</label>
				<div class="col-sm-8">
					<input type="password" class="form-control" name="adminpass"
						placeholder="暗証を入力してください" style="background-color: silver;">
				</div>
			</div>
<br />
	<br />
	<br />

			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-danger" style="width: 85px;">
						ログイン</button>&nbsp&nbsp&nbsp&nbsp
					<button type="reset" class="btn btn-warning" style="width: 85px;">
						キャンセル</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>