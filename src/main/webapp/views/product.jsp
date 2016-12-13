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
					<c:forEach items="${productList }" var="product">
						<div class="pull-left productDiv">
							<div>
								<img src="${product.imageAddress }" width="200" height="200">
							</div>
							<div class="bg-primary text-center">
     							<c:out value="${product.productName }"></c:out>
   							</div>
						</div>
					</c:forEach>
				</div>
			</div>
	</div>
	<jsp:include page="/common/footer.jsp"></jsp:include>
</body>
</html>