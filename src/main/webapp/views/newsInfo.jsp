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
<title>新闻资讯</title>
<link rel="shortcut icon" href="static/images/favicon.ico" />
<link rel="stylesheet" href="static/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="static/base/base.css">
</head>
<body>
	<jsp:include page="/common/header.jsp"></jsp:include>
	<div class="container minHeight" style="background-color: #ffffff;height: 600px;">
		<div class="row">
			<div class="col-md-12">
			<img class="img-responsive" src="static/images/news_banner.jpg">
			</div>
		</div>
		<div class="row">
			<div class="col-md-3">
				<div class="panel panel-danger">
					<div class="panel-heading">
						<h3 class="panel-title">NEWS</h3>
					</div>
					<div class="panel-body"><a href="news">企业公告</a></div>
				</div>
				<jsp:include page="/common/contactUs.jsp"></jsp:include>
			</div>
			<div class="col-md-9">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="text-center"><h3><c:out value="${news.title }"></c:out></h3></div>
						<hr>
						<div class="text-center">发布时间：<fmt:formatDate value="${news.createTime}" pattern="yyyy/MM/dd  HH:mm:ss" /></div>
						<br>
						<br>
						<div><p><c:out value="${news.content }"></c:out></p></div>
					</div>
				</div>

			</div>
		</div>
	</div>
	<jsp:include page="/common/footer.jsp"></jsp:include>
</body>
</html>