<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<jsp:include page="head.jsp"></jsp:include>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<link href="css/before/daohang.css" rel="stylesheet" type="text/css" />
<link href="css/before/common.css" rel="stylesheet" type="text/css" />
<link href="css/before/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
	//表单验证
	function checkForm(){
		var userpass = document.registerForm.userpass.value;
		var reuserpass = document.registerForm.reuserpass.value;
		if(userpass != reuserpass){
			alert("一致しないです！");
			return false;
		}
		document.registerForm.submit();
		return true;
	}
</script>
</head>
<body>
	<div class="clearfix">
		<div class="blank20"></div>
		<div class="box4">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="100%" valign="bottom">
						<h2 align="center">      </h2>
					</td>
				</tr>
			</table>
			<br><br>
		</div>
		<div class="blank10"></div>
		<div class="box4">
			<div class="case_ll clearfix">
				<div class="regist" style="background-color: #FFFFFF">
					<form:form action="user/register" method="post" modelAttribute="buser"  name="registerForm">
						<table style="font-size: 20px; font-style: oblique; font-family: 华文新魏; width="100%" border="0" cellspacing="0" cellpadding="0"
							class="ttbb2">
							<tr>
								<td  width="16%" align="right">
									E-mail：</td>
								<td width="59%"><input type="text" name="useremail"
									id="textfield" class="my_txt_350" value="${buser.useremail}" /></td>
								<td width="25%">${msg }</td>
							</tr>
							<tr>
								<td align="right">&nbsp;</td>
								<td colspan="2" style="font-size: 12px; padding-bottom: 25px;">
									</td>
							</tr>
							<tr>
								<td align="right">暗証：</td>
								<td><input type="password" name="userpass" id="textfield2"
									class="my_txt_350" /></td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td align="right">&nbsp;</td>
								<td colspan="2" style="font-size: 12px; padding-bottom: 25px;">
									</td>
							</tr>
							<tr>
								<td align="right"> 再暗証：</td>
								<td><input type="password" name="reuserpass" id="textfield3"
									class="my_txt_350" /></td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td align="right">&nbsp;</td>
								
							</tr>				
							<tr>
								<td align="right">&nbsp;</td>
								<td colspan="2" class="cl_f30" style="font-size: 12px; padding-bottom: 25px;"></td>
							</tr>
							<tr>
								<td align="right">&nbsp;</td>
								<td height="50"><input type="button" name="button" id="button" onclick="checkForm()" value="登録" class="my_ann1" /></td>
								<td>&nbsp;</td>
							</tr>
						</table>
					</form:form>
					<div class="blank20"></div>
				</div>
			</div>
		</div>
		<div class="blank10"></div>
	</div>
	<br><br><br><br><br><br><br>
</body>
</html>
