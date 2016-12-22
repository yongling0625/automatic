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
			<div class="container">
				<img class="img-responsive" alt="" src="static/images/hezuo.jpg">
			</div>
			<div class="container">
               <h1 class="text-warning">联系我们</h1>
                 <div class="">
                   <p>北京科恩众和工业控制技术有限公司欢迎广大客户与我们保持良好的沟通，用您的热忱和关爱，帮助我们不断追求卓越的品质，促进我们到达成功的彼岸。同时，北京科恩众和工业控制技术有限公司也竭诚为广大客户提供最优质的服务。KERNTECH，与您同行！</p>
                 </div>
	        <div align="center">
		        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=273858601&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:273858601:42" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
				<jsp:include page="/common/contactUs.jsp"></jsp:include>
			</div>
            <h4 class="text-right text-success">KERNTECH&nbsp;——&nbsp;核心技术，然自内心！</h4>
       	 </div>
		<jsp:include page="/common/footer.jsp"></jsp:include>
	</body>
</html>