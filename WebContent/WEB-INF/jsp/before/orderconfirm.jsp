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
	function submitorder(total,id){
		if(window.confirm("確認しますか")){
			window.location.href="/Clothes/order/orderSubmit?amount=" + total+"&id="+id;
			return true;
		}
		return false;
	}
</script> 
</head>
  <body>
	<div class="blank"></div>
	<div class="block clearfix">
	<div class="blank"></div>
			<div class="nFlowBox">  <br>
   <form action="" method="post">
   <div style="font-family: 宋体;font-size: 18px;"> ${address.name}&nbsp&nbsp
    ${address.tel}&nbsp&nbsp
   ${address.address }&nbsp&nbsp <a href="address/selectAddress">address</a></div>
  <br><br>
    <h6 align="left"></h6>
             <table width="100%" align="center" border="0" cellpadding="5" cellspacing="1" bgcolor="#dddddd">
            <tr>
              <th bgcolor="#ffffff">名称</th>
              <th bgcolor="#ffffff">価格</th>
              <th bgcolor="#ffffff">数</th>
              <th bgcolor="#ffffff">明細</th>
            </tr> 
           <c:forEach var="ce" items="${cartlist}"> 
            <tr>
              <td bgcolor="#ffffff" align="left">
                  	${ce.clothesname}
              </td>
              <td align="left" bgcolor="#ffffff">${ce.clothesrprice}</td>
              <td align="left" bgcolor="#ffffff">
                ${ce.shoppingnum}
              </td>
              <td align="left" bgcolor="#ffffff">￥&nbsp;${ce.smallsum}&nbsp;元 </td>
            </tr>
       	  </c:forEach>
       	  	<tr>
       	  		<td bgcolor="#ffffff" colspan="4" align="right">
       	 			<font class="pricetype" size="5" color="red">￥&nbsp;${total}&nbsp;円</font>  	
              </td>
          </tr>   	
        </table>   
        <div align="center" style="margin:8px auto;">
       		<button type="reset" class="btn btn-warning" style="width: 80px;" onclick="submitorder(${total}, ${address.id} )">
			提出</button>
    	</div> 
    	<input type="hidden" name="clothesamount" value="20"/>
    </form>
</div>
</div>
  <br> <br>  <br>  <br> <br>  <br>  <br> <br>  <br>  <br>
</body>
</html>




