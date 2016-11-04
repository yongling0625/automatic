<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<meta name="renderer" content="webkit" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Document</title>
<link rel="stylesheet" href="static/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="static/base/base.css">
</head>
<body style="background-color: #eeeeee">
	<jsp:include page="/common/header.jsp"></jsp:include>
	<div style="position:relative; ">
		<img class="img-responsive" alt="" src="static/images/homebanner4.jpg">
		<div class="container" style="position:relative; background-color: #ffffff;margin-top: -100px;">
			<div class="row">
				<div class="col-md-2">
					<h1>PRODUCT</h1>
					<ul class="nav nav-pills nav-stacked">
						<li class="active"><a href="product/1">减速机</a></li>
						<li><a href="#">机械手臂</a></li>
						<li><a href="#">动力刀塔</a></li>
						<li><a href="#">齿轮齿条</a></li>
					</ul>
				</div>
				<div class="col-md-10">
					<c:forEach items="${productList }" var="product">
						<div class="pull-left productDiv">
							<img src="${product.imageAddress }" width="200" height="200">
							<h5><c:out value="${product.productName }"></c:out></h5>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/common/footer.jsp"></jsp:include>
</body>
</html>