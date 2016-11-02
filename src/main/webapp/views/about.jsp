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
 </head>
 <body>
<jsp:include page="/common/header.jsp"></jsp:include>
<div class="center-block">
	<img class="img-responsive" alt="" src="static/images/aboutimage.jpg">
</div>


<jsp:include page="/common/footer.jsp"></jsp:include>
 </body>
</html>