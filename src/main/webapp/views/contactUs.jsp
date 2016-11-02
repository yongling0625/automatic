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
			<div >
				<img class="img-responsive" alt="" src="static/images/hezuo.jpg">
			</div>
			<div class="">
               <div class="">联系我们
               </div>
               <div class="">
                    <div class="">
                        <p>北京科恩众和工业控制技术有限公司欢迎广大客户与我们保持良好的沟通，用您的热忱和关爱，帮助我们不断追求卓越的品质，促进我们到达成功的彼岸。同时，北京科恩众和工业控制技术有限公司也竭诚为广大客户提供最优质的服务。<span class="kerzifspx">KERNTECH</span>，与您同行！</p>
                    </div>
					<div class="">客户服务热线：400-867-5758</div>
                    <div class="" style="height:300px;">
                       <div class="">
                          <div class="">北京科恩众和工业控制技术有限公司</div>
                          <div class="">
                            <p>地址：北京市海淀区苏州街75号鼎钧大厦B座408室 </p>
                            <p>邮编：100080</p>
                            <p>电话：010-62658140，82616320，82612472，</p>
                            <p style="text-indent:36px;">82612473，62642317，62579035</p>
                            <p>传真：010-62658139 &nbsp;&nbsp;手机：13910929353</p>
                            <p>E-MAIL：<a href="mailto:sales-bj@kerntech.com.cn">sales-bj@kerntech.com.cn</a></p>
                            <p>网址：<a href="http://www.kerntech.com.cn">www.kerntech.com.cn</a></p>
                          </div>
                       </div>
                    </div>
               </div>
               <div class="comlx_zgkn"><span class="kerzifspx">KERNTECH</span>&nbsp;——&nbsp;核心技术，然自内心！
               </div>
           </div>
		<jsp:include page="/common/footer.jsp"></jsp:include>
		<script type="text/javascript" src="static/jQuery/jquery-1.12.4.min.js"></script>
		<script type="text/javascript" src="static/bootstrap/js/bootstrap.min.js"></script> 
		<script type="text/javascript" src="static/baseJs/base.js"></script>
	</body>
</html>