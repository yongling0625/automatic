<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
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
			<div class="col-md-3">
				<div class="panel panel-danger">
					<div class="panel-heading">
						<h3 class="panel-title">产品分类</h3>
					</div>
					<div class="panel-body">
						<ul class="nav nav-pills nav-stacked">
							<li <c:if test="${download_cate == 0 }">class="active" </c:if>><a href="download/0">全部产品</a></li>
							<li <c:if test="${download_cate == 1 }">class="active" </c:if>><a href="download/1">减速机</a></li>
							<li <c:if test="${download_cate == 2 }">class="active" </c:if>><a href="download/2">机械手臂</a></li>
							<li <c:if test="${download_cate == 3 }">class="active" </c:if>><a href="download/3">动力刀塔</a></li>
							<li <c:if test="${download_cate == 4 }">class="active" </c:if>><a href="download/4">齿轮齿条</a></li>
							<li <c:if test="${download_cate == 5 }">class="active" </c:if>><a href="download/5">扭力扳手</a></li>
						</ul>
					</div>
				</div>
				<jsp:include page="/common/contactUs.jsp"></jsp:include>
			</div>
			<c:forEach items="${pdfList}" var="pdf">
				<div class="col-xs-4 col-md-4" style="padding:30px;height:200px;width:170px">
					<a href="${pdf.pdfAddress}"><img class="img-thumbnail img-responsive" style="height:130px;width:100px" alt="${pdf.title}" src="${pdf.pictureAddress}"></a>
					<div class="text-warning text-center" style="height:130px;width:100px"><a href="${pdf.pdfAddress}"><strong> ${pdf.title}</strong></a></div>
				</div>
			</c:forEach>
		</div>
	</div>
	<jsp:include page="/common/footer.jsp"></jsp:include>
</body>
</html>