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
	  <title>联系我们</title>
	  <base href="<%=basePath%>">
	  <meta charset="UTF-8">
	  <meta name="renderer" content="webkit"/>
	  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	  <meta name="keywords" content="广用,减速机,高精密,精锐,台湾精锐,机械手,注塑机,齿轮,齿条,动力,刀塔,单伺服,扭力扳手,可调式,倍力器,机械手臂,动力刀塔,齿轮箱,APEX,专业自动化,自动化,伺服减速器,行星,行星减速机,低背隙,精密,配件,专业的自动化设备提供商">
	  <link rel="shortcut icon" href="static/images/favicon.ico" />
	<link rel="stylesheet" href="static/bootstrap/css/bootstrap.css">
	<link rel="stylesheet" href="static/base/base.css">
	<!--引用百度地图API-->
	<style type="text/css">
	    html,body{margin:0;padding:0;}
	    .iw_poi_title {color:#CC5522;font-size:14px;font-weight:bold;overflow:hidden;padding-right:13px;white-space:nowrap}
	    .iw_poi_content {font:12px arial,sans-serif;overflow:visible;padding-top:4px;white-space:-moz-pre-wrap;word-wrap:break-word}
	    input{width:100%;}
	</style>
	<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
	<script type="text/javascript" src="src/main/webapp/static/jQuery/jquery-1.12.4.min.js"></script>
	<script type="text/javascript">
		function checkInfo(){
			if($("#corporateName").val().trim()==""){
				alert("公司名称必须填写！");
				return false;
			}
			if($("#contacts").val().trim()==""){
				alert("联系人必须填写！");
				return false;
			}
			if($("#country").val().trim()==""){
				alert("国家必须填写！");
				return false;
			}
			if($("#email").val().trim()==""){
				alert("Email必须填写！");
				return false;
			}
			if($("#tel").val().trim()==""){
				alert("公司电话必须填写！");
				return false;
			}
			if($("#problemDescription").val().trim()==""){
				alert("问题描述必须填写！");
				return false;
			}
		}
	</script>
	</head>
	<body>
		<jsp:include page="/common/header.jsp"></jsp:include>
			<div class="container">
				<img class="img-responsive" alt="" src="static/images/hezuo.jpg">
			</div>
			<div class="container">
               <h1 class="text-warning">联系我们</h1>
                 <div class="">
                   <p>廊坊市广用自动化设备有限公司欢迎广大客户与我们保持良好的沟通，用您的热忱和关爱，帮助我们不断追求卓越的品质，促进我们到达成功的彼岸。同时，廊坊市广用自动化设备有限公司也竭诚为广大客户提供最优质的服务。GUANGYONG TECH，与您同行！</p>
                 </div>
	        <div style="float:left;">
	        	<div align="center">
			        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=273858601&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:273858601:42" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
					<div class="table table-bordered text-left" style="height:100%;width:370px;padding:10px;">
						<p class="text-success">客户服务热线：0316-5176208</p>
						<p>廊坊市广用自动化设备有限公司</p>
						<p>地址：廊坊市广阳区春和花园南区8-2-202</p>
						<p>邮编：065000</p>
						<p>电话：0316-5176208</p>
						<p>手机：18103122872</p>
						<p>E-MAIL：<a href="mailto:lfguangyong@163.com">lfguangyong@163.com</a></p>
						<p>网址：<a href="http://www.gy-peak.cn">www.gy-peak.cn</a></p>
						<!--百度地图容器-->
	 					<div style="width:350px;height:250px;border:#ccc solid 1px;" id="dituContent"></div>
					</div>
	            </div>
			</div>
			<div style="float:left;margin-left:20px;margin-top:-25px"  class="clear">
				<h3 class="text-left text-success">联系我们&nbsp;&nbsp;&nbsp;<font size="3">标注<font color="red">*</font>有的为必填项</font></h3>
			<form name="submit" id="submit" action="contactUs" onsubmit = "return checkInfo();" method="post">
				<table class="table table-bordered text-left"style="margin-top:-7px;width:700px">
					<tr>
						<td><font color="red">*</font>公司名称:</td>
						<td><input id="corporateName" name="corporateName" value=""></td>
					</tr>
					<tr>
						<td>公司地址:</td>
						<td colspan="3"><input  id="address" name="address" value=""></td>
					</tr>
					<tr>
						<td><font color="red">*</font>联系人:</td>
						<td><input id="contacts" name="contacts" value=""></td>
					</tr>
					<tr>
						<td>城市:</td>
						<td><input id="city" name="city" value=""></td>
						<td><font color="red">*</font>国家:</td>
						<td><input id="country" name="country" value=""></td>
					</tr>
					<tr>
						<td>公司网页:</td>
						<td><input id="companyWebsite" name="companyWebsite" value=""></td>
						<td><font color="red">*</font>Email:</td>
						<td><input id="email " name="email" value=""></td>
					</tr>
					<tr>
						<td><font color="red">*</font>公司电话:</td>
						<td><input id="tel" name="tel" value=""></td>
						<td>公司传真:</td>
						<td><input id="fax" name="fax" value=""></td>
					</tr>
					<tr>
						<td colspan="4" class="text-center">有关问题（可以多选）</td>
					</tr>
					<tr>
						<td colspan="4" class="text-center">
							<input name="problem" style="width:30px;" type="checkbox" id="problem" value="技术" />技术
 							<input name="problem" style="width:30px;" type="checkbox" id="problem" value="目录索取" />目录索取
 							<input name="problem" style="width:30px;" type="checkbox" id="problem" value="产品资讯" />产品资讯
 							<input name="problem" style="width:30px;" type="checkbox" id="problem" value="其他" />其他
						</td>					
					</tr>
					<tr>
						<td colspan="4" class="text-center"><font color="red">*</font>问题描述</td>
					</tr>
					<tr>
						<td colspan="4" class="text-center">
							<input name="problemDescription" id="problemDescription" style="width:500px;height:100px;" value="" />
						</td>
					</tr>
					<tr>
						<td colspan="4" class="text-center">
							 <input type="submit" value="提交" style="width:100px;height:30px;" class="btn-primary"/>
						</td>
					</tr>
				</table>
			</form>
			</div>
       	 </div>
       <h4 class="text-right text-success">GUANGYONG TECH&nbsp;——&nbsp;核心技术，然自内心！</h4>
		<jsp:include page="/common/footer.jsp"></jsp:include>
<script type="text/javascript">
    //创建和初始化地图函数：
    function initMap(){
        createMap();//创建地图
        setMapEvent();//设置地图事件
        addMapControl();//向地图添加控件
        addMarker();//向地图中添加marker
    }
    
    //创建地图函数：
    function createMap(){
        var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
        var point = new BMap.Point(116.718139,39.532615);//定义一个中心点坐标
        map.centerAndZoom(point,17);//设定地图的中心点和坐标并将地图显示在地图容器中
        window.map = map;//将map变量存储在全局
    }
    
    //地图事件设置函数：
    function setMapEvent(){
        map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom();//启用地图滚轮放大缩小
        map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
        map.enableKeyboard();//启用键盘上下左右键移动地图
    }
    
    //地图控件添加函数：
    function addMapControl(){
        //向地图中添加缩放控件
	var ctrl_nav = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
	map.addControl(ctrl_nav);
        //向地图中添加缩略图控件
	var ctrl_ove = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:0});
	map.addControl(ctrl_ove);
        //向地图中添加比例尺控件
	var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
	map.addControl(ctrl_sca);
    }
    
    //标注点数组
    var markerArr = [{title:"廊坊市广用自动化设备有限公司",content:"地址：廊坊市广阳区春和花园南区8-2-202<br/>电话：0316-5176208<br/>手机：18103122872<br/>邮箱：lfguangyg@163.com",point:"116.718103|39.532629",isOpen:0,icon:{w:21,h:21,l:0,t:0,x:6,lb:5}}
		 ];
    //创建marker
    function addMarker(){
        for(var i=0;i<markerArr.length;i++){
            var json = markerArr[i];
            var p0 = json.point.split("|")[0];
            var p1 = json.point.split("|")[1];
            var point = new BMap.Point(p0,p1);
			var iconImg = createIcon(json.icon);
            var marker = new BMap.Marker(point,{icon:iconImg});
			var iw = createInfoWindow(i);
			var label = new BMap.Label(json.title,{"offset":new BMap.Size(json.icon.lb-json.icon.x+10,-20)});
			marker.setLabel(label);
            map.addOverlay(marker);
            label.setStyle({
                        borderColor:"#808080",
                        color:"#333",
                        cursor:"pointer"
            });
			
			(function(){
				var index = i;
				var _iw = createInfoWindow(i);
				var _marker = marker;
				_marker.addEventListener("click",function(){
				    this.openInfoWindow(_iw);
			    });
			    _iw.addEventListener("open",function(){
				    _marker.getLabel().hide();
			    })
			    _iw.addEventListener("close",function(){
				    _marker.getLabel().show();
			    })
				label.addEventListener("click",function(){
				    _marker.openInfoWindow(_iw);
			    })
				if(!!json.isOpen){
					label.hide();
					_marker.openInfoWindow(_iw);
				}
			})()
        }
    }
    //创建InfoWindow
    function createInfoWindow(i){
        var json = markerArr[i];
        var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title + "</b><div class='iw_poi_content'>"+json.content+"</div>");
        return iw;
    }
    //创建一个Icon
    function createIcon(json){
        var icon = new BMap.Icon("http://api.map.baidu.com/lbsapi/creatmap/images/us_mk_icon.png", new BMap.Size(json.w,json.h),{imageOffset: new BMap.Size(-json.l,-json.t),infoWindowOffset:new BMap.Size(json.lb+5,1),offset:new BMap.Size(json.x,json.h)})
        return icon;
    }
    
    initMap();//创建和初始化地图
</script>
	</body>
</html>