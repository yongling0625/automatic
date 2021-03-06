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
<title>广用首页</title>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<meta name="renderer" content="webkit" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="keywords" content="广用,减速机,高精密,精锐,台湾精锐,机械手,注塑机,齿轮,齿条,动力,刀塔,单伺服,扭力扳手,可调式,倍力器,机械手臂,动力刀塔,齿轮箱,APEX,专业自动化,自动化,伺服减速器,行星,行星减速机,低背隙,精密,配件,专业的自动化设备提供商">
<link rel="shortcut icon" href="static/images/favicon.ico" />
<link rel="stylesheet" href="static/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="static/base/base.css">
</head>
<body>
	<jsp:include page="/common/header.jsp"></jsp:include>
	<div id="carousel-example-generic" class="carousel slide container"
		data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#carousel-example-generic" data-slide-to="0"
				class="active"></li>
			<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			<li data-target="#carousel-example-generic" data-slide-to="2"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner">
			<div class="item active">
				<img src="static/images/carousel/jiansuji.png">
				<div class="carousel-caption" style="margin-left: 400px; margin-bottom: 120px;">
					<h3 class="text-info">伺服马达减速机</h3>
					<p class="text-info">PⅡ / PⅡR 系列</p>
					<p>
						<a href="product/1" class="btn btn-primary" role="button">了解更多<span class="glyphicon glyphicon-chevron-right"></span></a>
					</p>
				</div>
			</div>
			<div class="item">
				<img src="static/images/carousel/jixieshou.png">
				<div class="carousel-caption"
					style="margin-right: 400px; margin-bottom: 120px;">
					<h3 class="text-info">射出机专用机械手</h3>
					<p class="text-info">SH-DM 系列 </p>
					<p class="text-info">3 / 5轴伺服驱动CNC机器人</p>
					<p>
						<a href="product/2" class="btn btn-primary" role="button">了解更多<span class="glyphicon glyphicon-chevron-right"></span></a>
					</p>
				</div>
			</div>
			<div class="item">
				<img src="static/images/carousel/donglidaota.png">
				<div class="carousel-caption"
					style="margin-right: 400px; margin-bottom: 120px;">
					<h3 class="text-info">单马达动力刀塔</h3>
					<p class="text-info">VDI / BMT 動力刀塔</p>
					<p class="text-info">应用大尺寸超高强度三片式曲齿联轴器 提高定位与重复精度</p>
					<p>
						<a href="product/3" class="btn btn-primary" role="button">了解更多<span class="glyphicon glyphicon-chevron-right"></span></a>
					</p>
				</div>
			</div>
			<div class="item">
				<img src="static/images/carousel/chilunchitiao.png">
				<div class="carousel-caption"
					style="margin-left: 400px; margin-bottom: 120px;">
					<h3 class="text-info">齿轮齿条</h3>
					<p class="text-info">VDI / BMT 動力刀塔</p>
					<p class="text-info">应用大尺寸超高强度三片式曲齿联轴器 提高定位与重复精度</p>
					<p>
						<a href="product/4" class="btn btn-primary" role="button">了解更多<span class="glyphicon glyphicon-chevron-right"></span></a>
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
	<hr>
	<div class="container" style="background-image: url('static/images/indexImg/chaoyang.jpg');padding: 20px;">
		<div class="row">
			<div class="col-xs-4 col-md-4 text-center">
				<h4>专业销售各类机械零部件</h4>			
				<h4>高精密机械工业关键性组件</h4>			
				<h4><span class="text-danger">Professional for your service</span></h4>
			</div>
			<div class="col-xs-4 col-md-4 text-center">
				<h4 class="text-info">
					诚实守信
				</h4>
				<p>诚实守信是公司永恒的主题，互惠互利是合作的基础，优质服务是永恒不变的宗旨</p>
				<p class="text-info">Honest and trustworthy is the eternal theme of the company,
				mutual benefit is the basis for cooperation, quality service is the eternal purpose</p>
			</div>
			<div class="col-xs-4 col-md-4 text-center">
				<h4 class="text-info">
					科技创新
				</h4>
				<span>以高质高效为目标，以客户满意为宗旨，不断对产品优化改善，推陈出新</span><br>
				<span class="text-info">
					To high quality and efficiency as the goal, customer satisfaction for the purpose of continuous improvement of product optimization, innovation
				</span>
			</div>
		</div>	
	</div>
	<br>
	<div class="container text-center">
		<hr/>
		<h4>专业特色产品</h4>
		<h5><span class="text-danger">Specialty Products</span></h5>
	</div>
	<div class="container">
			<div class="row">
				<div class="col-xs-4 col-md-4">
					<a href="product/1"><img src="static/images/indexImg/x@at-fl.png" class="img-thumbnail img-responsive"></a>
					<div class="text-warning text-center">
   							<strong>高精度减速机</strong>
 					</div>
				</div>
				<div class="col-xs-4 col-md-4">
					<a href="product/2"><img src="static/images/indexImg/donglidaota.png" class="img-thumbnail img-responsive"></a>
					<div class="text-warning text-center">
   							<strong>动力刀塔</strong>
 					</div>
				</div>
				<div class="col-xs-4 col-md-4">
					<a href="product/3"><img src="static/images/indexImg/jixieshou.png" class="img-thumbnail img-responsive"></a>
					<div class="text-warning text-center">
   							<strong>机械手</strong>
 					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-4 col-md-4">
					<a href="product/4"><img src="static/images/indexImg/RackandPinion.png" class="img-thumbnail img-responsive"></a>
					<div class="text-warning text-center">
   						<strong>齿轮齿条</strong>
 					</div>
				</div>
				<div class="col-xs-4 col-md-4 ">
					<img src="static/images/indexImg/x@at-fl.png" class="img-thumbnail img-responsive">
					<div class="text-warning text-center">
   							<strong>高精度减速机</strong>
 						</div>
				</div>
				<div class="col-xs-4 col-md-4">
					<img src="static/images/indexImg/x@at-fl.png" class="img-thumbnail img-responsive">
					<div class="text-warning text-center">
   							<strong>高精度减速机</strong>
 						</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-4 col-md-4">
					<img src="static/images/indexImg/x@at-fl.png" class="img-thumbnail img-responsive">
					<div class="text-warning text-center">
   							<strong>高精度减速机</strong>
 					</div>
				</div>
				<div class="col-xs-4 col-md-4">
					<img src="static/images/indexImg/x@at-fl.png" class="img-thumbnail img-responsive">
					<div class="text-warning text-center">
   							<strong>高精度减速机</strong>
 					</div>
				</div>
				<div class="col-xs-4 col-md-4">
					<img src="static/images/indexImg/x@at-fl.png" class="img-thumbnail img-responsive">
					<div class="text-warning text-center">
   							<strong>高精度减速机</strong>
 					</div>
				</div>
			</div>
	</div>
	<div class="container text-center">
  		<a href="product/1"><button type="button" class="btn btn-primary btn-lg">更多产品 <span class="glyphicon glyphicon-chevron-right"></span></button></a>
	</div>
	<div class="container text-center">
		<hr/>
		<h4>广用视频影视资料</h4>
		<h5><span class="text-danger">Media Center</span></h5>
	</div>
	<div class="container">
	   <div class="jumbotron">
	   		<div class="row">
	   			<div class="col-xs-12 col-md-6 ">
	   				<div class="media">
		   				<video width="100%" height="100%" controls>
						  <source src="static/video/05-SC.MP4" type="video/MP4">
						</video>
	   				</div>
	   			</div>	
	   			<div class="col-xs-12 col-md-6">
					<div class="row">
						<div class=" col-xs-6 col-md-6 bg-warning">
	   						<p>广用产品视频</p>
	   					</div>	
						<div class="col-xs-6 col-md-6">
	   						<video width="100%" height="100%" controls>
							  <source src="static/video/jiansuji.MP4" type="video/MP4">
							</video>
	   					</div>	
					</div>	   			
					<div class="row">
						<div class="col-xs-12 col-md-6">
	   						<video width="100%" height="100%" controls>
							  <source src="static/video/11-SDcrad.MP4" type="video/MP4">
							</video>
	   					</div>	
						<div class="col-xs-12 col-md-6 bg-primary">
	   						<p>广用产品视频</p>
	   					</div>	
					</div>	   			
	   			</div>	
	   		</div>
	   </div>
	</div>
	<jsp:include page="/common/footer.jsp"></jsp:include>
</body>
</html>