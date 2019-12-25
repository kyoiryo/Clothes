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
		function openNotice(url){
			window.open (url, 'お知らせ', 'height=400, width=400, top=100, left=100, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=n o, status=no');
		}
</script>
</head>
<body>
	<div class="blank"></div>
	<div class="block clearfix">
		<div class="AreaR">
			<div class="AreaR">
				<!--最新商品列表-->
				<div class="blank5"></div>
				<div class="box">
					<div class="box_color ared">
						<div class="title_bt">
							<span><a href="more">もっと見る</a></span>
						</div>
						<div class="itemgood_nr clearfix">
							<ul>
								<c:forEach items="${clothes }" var="sg">
									<li>
										<div>
											<p class="pic">
												<a href="clothesDetail?id=${sg.id }">
												<img src="logos/${sg.clothespicture}" /></a>
											</p>
											<p class="wz">
												<strong><a href="clothesDetail?id=${sg.id }">${sg.clothesname }</a></strong>
												<em>価格:<span>￥${sg.clothesrprice}</span></em>
											</p>
										</div>
									</li>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
