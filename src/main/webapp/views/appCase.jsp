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
				<div class="col-md-12">
				<img class="img-responsive" src="static/images/prodbanner.png">
				</div>
			</div>
		<div class="row">
			<div class="col-md-3">
				<div class="panel panel-danger">
					<div class="panel-heading">
						<h3 class="panel-title">应用案例</h3>
					</div>
					<div class="panel-body">
						<ul class="nav nav-pills nav-stacked">
							<li <c:if test="${appCase_cate == 1 }">class="active" </c:if>><a href="appCase/1">机床行业应用案例</a></li>
							<li <c:if test="${appCase_cate == 2 }">class="active" </c:if>><a href="appCase/2">印刷行业应用案例</a></li>
							<li <c:if test="${appCase_cate == 3 }">class="active" </c:if>><a href="appCase/3">包装行业应用案例</a></li>
							<li <c:if test="${appCase_cate == 4 }">class="active" </c:if>><a href="appCase/4">医疗行业应用案例</a></li>
							<li <c:if test="${appCase_cate == 5 }">class="active" </c:if>><a href="appCase/5">食品行业应用案例</a></li>
							<li <c:if test="${appCase_cate == 6 }">class="active" </c:if>><a href="appCase/6">雕刻行业应用案例</a></li>
							<li <c:if test="${appCase_cate == 7 }">class="active" </c:if>><a href="appCase/7">金属加工行业应用案例</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-md-9">
				<div class="text-danger text-center">
  						<h3><c:out value="${applicationCase.applicationCaseName }"></c:out></h3>
				</div>
					<br>
				<c:forEach items="${images }" var="image">
					<div class="text-center">
						<img src="${image }" width="300" height="300">
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<jsp:include page="/common/footer.jsp"></jsp:include>
</body>
</html>