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
	<div class="container" style="background-color: #ffffff">
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
				    <li>
					   <c:if test="${product_cate == 1 }"><a href="product/1">减速机</a></c:if>
						<c:if test="${product_cate == 2 }"><a href="product/2">机械手臂</a></c:if>
						<c:if test="${product_cate == 3 }"><a href="product/3">动力刀塔</a></c:if>
						<c:if test="${product_cate == 4 }"><a href="product/4">齿轮齿条</a></c:if>
				    </li>
				    <li class="active"><c:out value="${product.productName }"></c:out></li>
				</ol>
				<div class="text-danger text-center">
  						<h3><c:out value="${product.productName }"></c:out></h3>
					</div>
					<br>
				<div class="text-center">
					<img src="${product.imageAddress }" width="300" height="300">
				</div>
				<div class="panel-group" id="accordion">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion" 
								   href="#collapseOne">
									概要
								</a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse">
							<div class="panel-body">
								輸出額定力矩<br>
								T2N : 14 Nm - 2000 Nm<br>
								Ratios:<br>
								單節 :4 / 5 / 7 / 10<br>
								雙節 :20 / 25 / 35 / 40 / 50 / 70 /<br>
								100 / 16 / 21 / 31 / 61 /91 <br>
								低背隙<br>
								單節 : ≤1 arcmin / ≤3 arcmin / ≤5 arcmin <br>
								雙節 : ≤3 arcmin / ≤5 arcmin / ≤7 arcmin <br>
								高效率<br>
								單節 : ≧ 97%<br>
								雙節 : ≧ 94%<br>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/common/footer.jsp"></jsp:include>
</body>
</html>