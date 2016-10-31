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
 <div class="container">
 	<img alt="" src="static/images/211939300_280777.jpg">
 </div>
  <nav class="navbar navbar-default">
  <div class="container">
    <ul class="nav navbar-nav">
      <li class="active">
        <a href="/doc/">首页</a>
      </li>
      <li>
        <a href="/demo/">关于广用</a>
      </li><li>
        <a href="/demo/">新闻资讯</a>
      </li>
	  <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">产品中心</a>
			 <c:if test="${fn:length(productList) > 0 }">
				 <ul class="dropdown-menu" role="menu">
					 <c:forEach var="product" items="${productList }">
					  <li><a href="#"><c:out value="${product.productName }"></c:out></a></li>
					</c:forEach>
				</ul>
			</c:if>
      </li>
	  <li>
        <a href="/demo/">产品选用</a>
      </li><li>
        <a href="/demo/">协助设计</a>
      </li><li>
        <a href="/demo/">资料下载</a>
      </li><li>
        <a href="/demo/">应用案例</a>
      </li><li>
        <a href="/demo/">合作伙伴</a>
      </li><li>
        <a href="/demo/">联系我们</a>
      </li>           
    </ul>
	</div>
	</nav>
	<div class="container-fluid">
		<iframe width="100%" frameborder="0"  scrolling="no" src="home" id="mainFrame"></iframe>
	</div>
<script type="text/javascript" src="static/jQuery/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="static/bootstrap/js/bootstrap.min.js"></script> 
<script type="text/javascript">    
$('li.dropdown').mouseover(function() {   
     $(this).addClass('open');    }).mouseout(function() {       
    	 $(this).removeClass('open');    }); 
</script>
 </body>
</html>