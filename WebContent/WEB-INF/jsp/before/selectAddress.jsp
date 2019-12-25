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
<link href="css/admin/bootstrap.min.css" rel="stylesheet">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
function gogo(){
	
	var aid = document.getElementsByName("mid");
	
	for(var i = 0; i < aid.length; i++){
		if(aid[i].checked == true){
			window.location.href="/Clothes/cart/orderConfirm?aid=" + aid[i].value;
		}
	}
}
</script>

<script type="text/javascript">
  		function checkDel(id){
  			if(window.confirm("確認しますか？")){
  				window.location.href = "/Clothes/address/deleteAddress?id="+id;
  			}
  		}
  </script>

</head>
  <body>
  <form >
<br><br>
<c:if test="${addresslist.size() == 0 }">
		
	</c:if>
	<c:if test="${addresslist.size() != 0 }">
<table  class="table" style="width: 50%;margin-left: 350px;border: 2px;">
  <thead>
    <tr>
      	<th style="text-align: center;">&nbsp</th>
		<th>受け取り人</th>
		<th>電話</th>
		<th>受け取り先</th>
		<th>操作</th>
	</tr>
  </thead>
  <tbody>
  <c:forEach items="${addresslist }" var="address">
    <tr class="success">
					<td><input type="radio"  value="${address.id }" name="mid"></td>
					<td>${address.name }</td>
					<td>${address.tel }</td>
					<td>${address.address }</td>
					<td><a href="address/toUpdateAddress?id=${address.id }"">修正</a>||
					<a href="javascript:checkDel('${address.id }')">削除</a>
	
    </tr>
    </c:forEach>
  </tbody>
  </c:if>
 			 <tr>
  				
				<td>
					<button  type="button" class="btn btn-success" onclick="gogo()" >提出</button>
				</td>
				<td>
				
					<ul class="nav nav-pills nav-stacked" style="max-width: 260px;">
  <!--   <li class="active">
         <a href="address/toAddNewAddress">
             <span class="badge pull-right"></span> </a> 
        </li> -->
	</ul>
				</td>
			</tr>
	
</table>
	
</form>
		
</body>
<br><br><br><br><br><br>
</html>




