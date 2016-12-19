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
	<div class="container" style="background-image: url('static/images/indexImg/48644d01724a58f29ea3d.jpg');height: 200px;">
		<div class="row">
			<div class="col-md-4 text-center">
				<h4>专业销售各类机械零部件</h4>			
				<h4>高精密机械工业关键性组件</h4>			
				<h4><span class="text-warning">专业为您服务</span></h4>
			</div>
			<div class="col-md-4">
				<h4 class="text-info">
					诚实守信
				</h4>
				<span>诚实守信是公司永恒的主题，互惠互利是合作的基础，优质服务是永恒不变的宗旨</span><br>
				<span class="text-danger">Honest and trustworthy is the eternal theme of the company,
				mutual benefit is the basis for cooperation, quality service is the eternal purpose</span>
			</div>
			<div class="col-md-4">
				<h4 class="text-info">
					科技创新
				</h4>
				<span>以高质高效为目标，以客户满意为宗旨，不断对产品优化改善，推陈出新</span><br>
				<span class="text-danger">
					To high quality and efficiency as the goal, customer satisfaction for the purpose of continuous improvement of product optimization, innovation
				</span>
			</div>
		</div>	
	</div>
	<br>
	<div class="container text-center">
		<hr/>
		<h4>专业特色产品</h4>
		<h5><span class="text-danger">专业特色产品</span></h5>
	</div>
	<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="pull-left productDiv">
						<div>
							<img src="static/images/indexImg/x@at-fl.png" class="img-thumbnail">
							
						</div>
						<div class="text-warning text-center">
    							高精度减速机
  						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="pull-left productDiv">
						<div>
							<img src="static/images/indexImg/x@at-fl.png" class="img-thumbnail">
							
						</div>
						<div class="text-warning text-center">
    							高精度减速机
  						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="pull-left productDiv">
						<div>
							<img src="static/images/indexImg/x@at-fl.png" class="img-thumbnail">
							
						</div>
						<div class="text-warning text-center">
    							高精度减速机
  						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="pull-left productDiv">
						<div>
							<img src="static/images/indexImg/RackandPinion.png" class="img-thumbnail">
							
						</div>
						<div class="text-warning text-center">
    							齿轮齿条
  						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="pull-left productDiv">
						<div>
							<img src="static/images/indexImg/x@at-fl.png" class="img-thumbnail">
							
						</div>
						<div class="text-warning text-center">
    							高精度减速机
  						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="pull-left productDiv">
						<div>
							<img src="static/images/indexImg/x@at-fl.png" class="img-thumbnail">
							
						</div>
						<div class="text-warning text-center">
    							高精度减速机
  						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="pull-left productDiv">
						<div>
							<img src="static/images/indexImg/x@at-fl.png" class="img-thumbnail">
							
						</div>
						<div class="text-warning text-center">
    							高精度减速机
  						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="pull-left productDiv">
						<div>
							<img src="static/images/indexImg/x@at-fl.png" class="img-thumbnail">
							
						</div>
						<div class="text-warning text-center">
    							高精度减速机
  						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="pull-left productDiv">
						<div>
							<img src="static/images/indexImg/x@at-fl.png" class="img-thumbnail">
							
						</div>
						<div class="text-warning text-center">
    							高精度减速机
  						</div>
					</div>
				</div>
			</div>
	</div>
	<div class="container text-center">
  		<button type="button" class="btn btn-primary btn-lg">更多产品 <span class="glyphicon glyphicon-chevron-right"></span></button>
	</div>
	<div class="container text-center">
		<hr/>
		<h4>专业特色产品</h4>
		<h5><span class="text-danger">视频影视资料</span></h5>
	</div>
	<div class="container">
	   <div class="jumbotron">
	   		<div class="row">
	   			<div class="col-md-6 media">
	   				<video width="400" height="300" controls>
					  <source src="static/video/vidou1.mp4" type="video/mp4">
					</video>
	   			</div>	
	   			<div class="col-md-6">
					<div class="row">
						<div class="col-md-6 bg-warning">
	   						<h4>视频标题</h4>
	   						<p>视频简介视频简介视频简介视频简介视频简介视频简介视频简介视频简介视频简介视频简介视频简介</p>
	   					</div>	
						<div class="col-md-6">
	   						<video width="240" height="180" controls>
							  <source src="static/video/vidou1.mp4" type="video/mp4">
							</video>
	   					</div>	
					</div>	   			
					<div class="row">
						<div class="col-md-6">
	   						<video width="240" height="180" controls>
							  <source src="static/video/vidou1.mp4" type="video/mp4">
							</video>
	   					</div>	
						<div class="col-md-6 bg-primary">
	   						<h4>视频标题</h4>
	   						<p>视频简介视频简介视频简介视频简介视频简介视频简介视频简介视频简介视频简介视频简介视频简介</p>
	   					</div>	
					</div>	   			
	   			</div>	
	   		</div>
	   </div>
	</div>
	<jsp:include page="/common/footer.jsp"></jsp:include>
</body>
</html>