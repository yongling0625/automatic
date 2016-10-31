<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
</head>
<body>
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<div class="carousel-inner">
			<c:if test="${fn:length(carouselImgList) > 0 }">
				<c:forEach var="carouselImg" items="${carouselImgList }">
					<c:choose>
						<c:when test="${carouselImg.pid == 1 }">
							<div class="item active">
								<img src="${carouselImg.src }" alt="First slide">
							</div>
							<div class="carousel-caption">
								<c:out value="${carouselImg.alt }" />
							</div>
						</c:when>
						<c:otherwise>
							<div class="item">
								<img src="${carouselImg.src }" alt="First slide">
							</div>
							<div class="carousel-caption">
								<c:out value="${carouselImg.alt }" />
							</div>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</c:if>
		</div>
	</div>
	<script type="text/javascript" src="static/jQuery/jquery-1.12.4.min.js"></script>
	<script type="text/javascript" src="static/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>