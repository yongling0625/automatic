<%@ page language="java" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
	  <meta name="renderer" content="webkit"/>
	  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	  <title>Document</title>
	<link rel="stylesheet" href="static/bootstrap/css/bootstrap.css">
	<link rel="stylesheet" href="static/base/base.css">
	</head>
	<body>
		<jsp:include page="/common/header.jsp"></jsp:include>
	<div  align="center">
		<table>
			<tr>
				<td>
					<jsp:include page="/common/contactUs.jsp"></jsp:include>
				</td>
				<td>
					<img class="img-responsive" alt="" src="static/images/partner.jpg">
				</td>
			</tr>
		</table>
	</div>
		<jsp:include page="/common/footer.jsp"></jsp:include>
	</body>
</html>
