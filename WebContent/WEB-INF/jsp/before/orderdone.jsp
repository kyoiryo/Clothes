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
		<script type="text/javascript">
			function gogo(){
				document.payForm.submit();
			}
		</script>
  </head>
  <body>
  	<div class="blank"></div>
	<div class="block clearfix">
	<div class="blank"></div>
	<div class="nFlowBox">
    <h2 style="text-align:center; height:30px; line-height:30px;">お買い物いただきありがとうございます！
         	 <font style="color:red" size='5'>${ordersn}</font></h2><br/>
      <center>
      <form action="order/pay" method="post" name="payForm">
            	<input type="hidden" name="ordersn" value="${ordersn}"/>
            	<input type="image" src="images/before/Chinapay_logo.jpg" onclick="gogo()"/>
      </form>
      </center>
    </div>
    </div>
  </body>
</html>
