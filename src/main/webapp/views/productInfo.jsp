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
<title>产品详情</title>
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
	<div class="container" style="background-color: #ffffff">
		<div class="row">
				<div class="col-md-12">
				<img class="img-responsive" src="static/images/prodbanner.png">
				</div>
			</div>
		<div class="row">
			<div class="col-md-2">
				<h1>PRODUCT</h1>
				<ul class="nav nav-pills nav-stacked">
					<li <c:if test="${product_cate == 1 }">class="active" </c:if>><a href="product/1">减速机</a></li>
					<li <c:if test="${product_cate == 2 }">class="active" </c:if>><a href="product/2">机械手臂</a></li>
					<li <c:if test="${product_cate == 3 }">class="active" </c:if>><a href="product/3">动力刀塔</a></li>
					<li <c:if test="${product_cate == 4 }">class="active" </c:if>><a href="product/4">齿轮齿条</a></li>
					<li <c:if test="${product_cate == 5 }">class="active" </c:if>><a href="product/5">扭力扳手</a></li>
				</ul>
			</div>
			<div class="col-md-10">
				<div class="text-danger text-center">
  						<h3><c:out value="${product.productName }"></c:out></h3>
					</div>
					<br>
				<div class="text-center">
					<img src="${product.imageAddress }" width="300" height="300">
				</div>
				<br>
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
								<c:out value="${product.overview }"></c:out>
							</div>
						</div>
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion" 
								   href="#collapseTwo">
									核心参数
								</a>
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse">
							<div class="panel-body">
								<c:out value="${product.coreParameter }"></c:out>
							</div>
						</div>
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion" 
								   href="#collapseThree">
									详情参数
								</a>
							</h4>
						</div>
						<div id="collapseThree" class="panel-collapse collapse">
							<div class="panel-body">
								<a href="download/${product_cate }">详情请下载完整PDF</a>
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