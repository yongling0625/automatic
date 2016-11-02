<%@ page language="java" pageEncoding="UTF-8"%>
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
	<div class="center-block">
		<img class="img-responsive" alt="" src="static/images/aboutimage.jpg">
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-warning">企业简介</h1>
				<hr>
				<p>
					北京科恩众和工业控制技术有限公司（简称：科恩电气）成立于1999年9月，是一家集工业自动化控制产品销售、工业自动化控制系统设计、集成、培训、维修等业务于一体，为广大用户提供全方位技术支持和服务的专业公司。通过十几年的发展，公司创立了“KERNTECH”品牌（已经是公司的注册商标）。
				<p>近三十年多年来，工业自动化技术高速发展，促进了全球科技进步、产业提升。现如今，逐步从工业自动化向工业互联网、工业信息化、大数据发展，工业4.0的概念已经在导引新的产业格局。
					自动化、信息化的高速发展，让现代工业企业对人才的要求、需求和渴求同样提升到一个前所未有的高度。</p>
<p>
"战略合作伙伴"的概念由来已久，却常常被现代工业企业所忽视。所谓"术业有专攻"，让专业的人做专业的事，势必事半功倍。"积木组合式"发展模式，可以通过优势资源互补，从而达到战略灵活、发展快速，并且可以大幅度降低企业人力成本、生产成本、管理成本、运营成本以及售后服务成本。</p>
<p>作为一家为客户提供专业化服务的工业自动化控制系统解决方案提供商，KERNTECH秉承"健康、专注、服务、分享"的核心理念，致力于成为您事业上的核心合作伙伴。</p>
<p>通过十几年来的技术积累，公司培养出一批具有高端自动化产品及控制系统设计和应用方面的专业化技术人才，可为客户提供机械自动化（FA）、过程自动化（PA）等领域的自动化控制系统解决方案，按照国家、国际标准进行自动化控制系统设计，为客户提供一揽子技术服务。</p>
				   <p>公司拥有独立的电气成套生产车间，按照国家、国际标准进行电气成套设计和生产，为客户提供高效、高品质的工业自动化控制系统成套服务.
公司倡导每一位员工遵循“送人玫瑰，手留余香”的人生理念，尊重每一个合作方的意愿，在双方或多方合作中努力实现“共赢”、“共发展”。</p>
				   <p>公司愿与广大用户真诚合作，同步提升，共创美好未来！</p>
				   <p>
					<span>广用</span>的核心定位是：</p>
				   <p>♦   服务客户的工业自动化控制系统应用研发中心</p>
				   <p>♦   服务客户的工业自动化控制系统设计中心</p>
				   <p>♦   服务客户的工业自动化控制系统成套制造中心</p>

			
		</div>
	</div>
</div>

<jsp:include page="/common/footer.jsp"></jsp:include>
 </body>
</html>