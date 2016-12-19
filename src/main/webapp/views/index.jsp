<%@page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
<body>
	<jsp:include page="/common/header.jsp"></jsp:include>
	<div id="carousel-example-generic" class="carousel slide container"
		data-ride="carousel" style="background-color: #ffffff;">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#carousel-example-generic" data-slide-to="0"
				class="active"></li>
			<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			<li data-target="#carousel-example-generic" data-slide-to="2"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="static/images/carousel/jiansuji.png">
				<div class="carousel-caption"
					style="margin-left: 400px; margin-bottom: 120px;">
					<h3>伺服马达减速机</h3>
					<p>PⅡ / PⅡR 系列</p>
					<p></p>
					<p>
						<a href="#" class="btn btn-primary" role="button">了解更多</a>
					</p>
				</div>
			</div>
			<div class="item">
				<img src="static/images/carousel/jixieshou.png">
				<div class="carousel-caption"
					style="margin-left: 400px; margin-bottom: 120px;">
					<h3>射出机专用机械手</h3>
					<p>SH-DM 系列 </p>
					<p>3 / 5轴伺服驱动CNC机器人</p>
					<p>
						<a href="#" class="btn btn-primary" role="button">了解更多</a>
					</p>
				</div>
			</div>
			<div class="item">
				<img src="static/images/carousel/donglidaota.png">
				<div class="carousel-caption"
					style="margin-left: 400px; margin-bottom: 120px;">
					<h3>单马达动力刀塔</h3>
					<p>VDI / BMT 動力刀塔</p>
					<p>应用大尺寸超高强度三片式曲齿联轴器 提高定位与重复精度</p>
					<p>
						<a href="#" class="btn btn-primary" role="button">了解更多</a>
					</p>
				</div>
			</div>
			<div class="item">
				<img src="static/images/carousel/chilunchitiao.png">
				<div class="carousel-caption"
					style="margin-left: 400px; margin-bottom: 120px;">
					<h3>齿轮齿条</h3>
					<p>VDI / BMT 動力刀塔</p>
					<p>应用大尺寸超高强度三片式曲齿联轴器 提高定位与重复精度</p>
					<p>
						<a href="#" class="btn btn-primary" role="button">了解更多</a>
					</p>
				</div>
			</div>
		</div>

		<!-- Controls -->
		<a class="left carousel-control" href="#carousel-example-generic"
			role="button" data-slide="prev"> <span
			class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#carousel-example-generic"
			role="button" data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>


	<jsp:include page="/common/footer.jsp"></jsp:include>
</body>
</html>