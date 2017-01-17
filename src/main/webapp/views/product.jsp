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
<title>产品中心</title>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<meta name="renderer" content="webkit" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="keywords" content="广用,减速机,高精密,精锐,台湾精锐,机械手,注塑机,齿轮,齿条,动力,刀塔,单伺服,扭力扳手,可调式,倍力器,机械手臂,动力刀塔,齿轮箱,APEX,专业自动化,自动化,伺服减速器,行星,行星减速机,低背隙,精密,配件,专业的自动化设备提供商">
<link rel="shortcut icon" href="static/images/favicon.ico" />
<link rel="stylesheet" href="static/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="static/base/base.css">
</head>
<body>
	<jsp:include page="/common/header.jsp"></jsp:include>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
				<img class="img-responsive" src="static/images/prodbanner.png">
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<div class="panel panel-danger">
						<div class="panel-heading">
							<h3 class="panel-title">PRODUCT</h3>
						</div>
						<div class="panel-body">
							<ul class="nav nav-pills nav-stacked">
								<li <c:if test="${product_cate == 1 }">class="active" </c:if>><a href="product/1">减速机</a></li>
								<li <c:if test="${product_cate == 2 }">class="active" </c:if>><a href="product/2">机械手臂</a></li>
								<li <c:if test="${product_cate == 3 }">class="active" </c:if>><a href="product/3">动力刀塔</a></li>
								<li <c:if test="${product_cate == 4 }">class="active" </c:if>><a href="product/4">齿轮齿条</a></li>
								<li <c:if test="${product_cate == 5 }">class="active" </c:if>><a href="product/5">扭力扳手</a></li>
							</ul>
						</div>
					</div>
					<jsp:include page="/common/contactUs.jsp"></jsp:include>
				</div>
				<div class="col-md-9">
					<c:forEach items="${productList }" var="product">
						<div class="pull-left productDiv">
							<a href="product/${product.categoryId }/${product.id}"><img class="img-thumbnail img-responsive" style="width: 200px;height: 200px;" src="${product.imageAddress }"></a>
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
