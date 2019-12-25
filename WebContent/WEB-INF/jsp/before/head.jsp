<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link href="css/admin/bootstrap.min.css" rel="stylesheet">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	function clearValue(){
		document.myForm.mykey.value = "";
	}
</script>
</head>
	<body class="bg-danger" style="background-color:#FFFFFF ">
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container-fluid" style="background-color: #ADD8E6">
    <div class="navbar-header">
      <a></a>
       <a class="navbar-brand">
       </a>
    </div>
    <div>
          <ul class="nav navbar-nav">
            <li></li>
        </ul>
    </div>
    <div class="container-fluid"> 
        <div class="navbar-header"> 
      
        </div> 
        <ul class="nav navbar-nav navbar-right" style="font-family: cursive;font-size: large;">
            <li><a href="toRegister">登録</a></li>
           <c:if test="${bruser!= null}">	 <li><a href="user/exit">ログアウト</a></li>	</c:if> 
       <li><a href="cart/selectCart"> カート</a></li>
        </ul> 
    </div> 
    </div>
</nav>
	
	
	
	
	

   <!-- *************************************************************** -->
  
   <div id="carousel-example-generic" class="carousel slide" 
   data-ride="carousel" >
  <!-- Indicators -->
  <ol class="carousel-indicators"> 
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"><br></li> 
    </ol><br><ol class="carousel-indicators"> 
    <li data-target="#carousel-example-generic" data-slide-to="2">&nbsp;</li> 
   </ol>

  
  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="images/before/a3.jpg" alt="1">
      <div class="carousel-caption">
        ...
      </div>
    </div>
    <div class="item" >
      <img src="images/before/a1.jpg" alt="2">
      <div class="carousel-caption">
        ...
      </div>
    </div>
     <div class="item">
      <img src="images/before/a3.jpg" alt="3">
      <div class="carousel-caption">
        ...
      </div>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
   </div>
   
<!-- ************************************************8 -->
<div class="navbar navbar-default navbar-inverse" role="navigation" style="background-color:#ADD8E6;border: thin">
<ul class="nav navbar-nav" style="margin-left: 50px;">
 
</ul>
<div class="navbar-header" >
<a href="before?id=0" class="navbar-brand">ホームページ</a>
</div>
<ul class="nav navbar-nav" style="font-family:宋体;font-size: 18px;">
<c:forEach items="${clothesType}" var="g">
	<li><a href="before?id=${g.id }">
	${g.typename }</a>
	</li>
</c:forEach>
</ul>
<form action="search" name="myForm" method="post" class="navbar-form navbar-right" rol="search" 
style="margin-right: 50px;">
<div class="form-group" >
<input type="text" class="form-control" value="検索内容を入力する"  
style="width:180px;" name="mykey" onfocus="clearValue()"/>

<span style="color:white;"></span>

</div>
<button type="submit" class="btn btn-default">検索</button>
</form>
</div>
<div><hr color="#AEEEEE" size="200" style="margin-top: -20px;">
	 <hr color="#AEEEEE" size="200">
</div>

	</body>
</html>