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
<body>
	<jsp:include page="/common/header.jsp"></jsp:include>
		<div class="container">
			<div class="row">
				<div class="col-md-2">
					<h1>PRODUCT</h1>
					<ul class="nav nav-pills nav-stacked">
						<li <c:if test="${product_cate == 1 }">class="active" </c:if>><a href="product/1">减速机</a></li>
						<li <c:if test="${product_cate == 2 }">class="active" </c:if>><a href="product/2">机械手臂</a></li>
						<li <c:if test="${product_cate == 3 }">class="active" </c:if>><a href="product/3">动力刀塔</a></li>
						<li <c:if test="${product_cate == 4 }">class="active" </c:if>><a href="product/4">齿轮齿条</a></li>
					</ul>
				</div>
				<div class="col-md-10">
					<ol class="breadcrumb">
					    <li><a href="index">首页</a></li>
					    <li class="active">
						   <c:if test="${product_cate == 1 }"><a href="product/1">减速机</a></c:if>
							<c:if test="${product_cate == 2 }"><a href="product/2">机械手臂</a></c:if>
							<c:if test="${product_cate == 3 }"><a href="product/3">动力刀塔</a></c:if>
							<c:if test="${product_cate == 4 }"><a href="product/4">齿轮齿条</a></c:if>
					    </li>
					</ol>
					<c:forEach items="${productList }" var="product">
						<div class="pull-left productDiv">
							<a href="product/${product.categoryId }/${product.id}"><img class="img-thumbnail img-responsive" src="${product.imageAddress }" width="200" height="200"></a>
							<div class="bg-primary text-center">
     							<strong><c:out value="${product.productName }"></c:out></strong>
   							</div>
						</div>
					</c:forEach>
				</div>
			</div>
	</div>
	<jsp:include page="/common/footer.jsp"></jsp:include>
</body>
</html>
