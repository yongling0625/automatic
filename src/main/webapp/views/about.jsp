<%@ page language="java" pageEncoding="UTF-8"%>
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
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-warning">企业简介</h1>
				<hr>
				<p>廊坊市广用自动化设备有限公司专业服务于自动化领域，从事自动化产品的技术支持和销售。公司本着为用户提供理想服务的原则，建立了优秀的销售队伍、完善的服务体系，为国内众多用户提供了优质的产品和良好的服务。</p>
				<p>近三十年多年来，工业自动化技术高速发展，促进了全球科技进步、产业提升。现如今，逐步从工业自动化向工业互联网、工业信息化、大数据发展，工业4.0的概念已经在导引新的产业格局。
					自动化、信息化的高速发展，让现代工业企业对人才的要求、需求和渴求同样提升到一个前所未有的高度。</p>
				<p>公司服务的领域涵盖了航空航天、机器人、数控机床、专用机械、仪器仪表等众多行业，并与业内众多知名厂家及科研机构、大专院校建立了长期、稳定的良好合作关系。</p>
				<p>公司主营产品：CNC车铣复合、高精密减速机、齿轮齿条、单伺服动力刀塔、多功能机械手、扭力扳手等</p>
			</div>
		</div>
	</div>

	<jsp:include page="/common/footer.jsp"></jsp:include>
</body>
</html>