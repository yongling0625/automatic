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
	<!--引用百度地图API-->
	<style type="text/css">
	    html,body{margin:0;padding:0;}
	    .iw_poi_title {color:#CC5522;font-size:14px;font-weight:bold;overflow:hidden;padding-right:13px;white-space:nowrap}
	    .iw_poi_content {font:12px arial,sans-serif;overflow:visible;padding-top:4px;white-space:-moz-pre-wrap;word-wrap:break-word}
	</style>
	<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
	</head>
	<body>
		<jsp:include page="/common/header.jsp"></jsp:include>
			<div >
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
						<p>网址：<a href="http://www.kerntech.com.cn">www.kerntech.com.cn</a></p>
						<!--百度地图容器-->
	 					<div style="width:350px;height:250px;border:#ccc solid 1px;" id="dituContent"></div>
					</div>
	            </div>
			</div>
			<div style="float:left;margin-left:20px;margin-top:-25px"  class="clear">
				<h3 class="text-left text-success">联系我们</h3>
				<table class="table table-bordered text-left"style="margin-top:-10px;width:700px">
					<tr>
						<td>公司名称</td>
						<td><input id="corporateName" name="corporateName" value=""></td>
					</tr>
					<tr>
						<td>公司地址</td>
						<td><input style="width:500px" id="address" name="address" value=""></td>
					</tr>
					<tr>
						<td>城市</td>
						<td><input id="city" name="city" value=""></td>
					</tr>
					<tr>
						<td>国家</td>
						<td><input id="country" name="country" value=""></td>
					</tr>
					<tr>
						<td>联系人</td>
						<td><input id="contacts" name="contacts" value=""></td>
					</tr>
					<tr>
						<td>公司网页</td>
						<td><input id="companyWebsite" name="companyWebsite" value=""></td>
					</tr>
					<tr>
						<td>Email </td>
						<td><input id="email " name="email" value=""></td>
					</tr>
					<tr>
						<td>公司名称</td>
						<td><input id="corporateName" name="corporateName" value=""></td>
					</tr>
					<tr>
						<td>公司电话</td>
						<td><input id="tel" name="tel" value=""></td>
					</tr>
					<tr>
						<td>公司名称</td>
						<td><input id="corporateName" name="corporateName" value=""></td>
					</tr>
					<tr>
						<td>公司传真</td>
						<td><input id="fax" name="fax" value=""></td>
					</tr>
				</table>
			</div>
       	 </div>
       <h4 class="text-right text-success">GUANGYONG TECH&nbsp;——&nbsp;核心技术，然自内心！</h4>
		<jsp:include page="/common/footer.jsp"></jsp:include>
	</body>
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
</html>
     <!--  <a target=blank href=tencent://message/?uin=473730019&Site=qq号码说明&Menu=yes><img border="0" SRC=http://wpa.qq.com/pa?p=11:473730019:6 alt="有事Q我"></a>
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=273858601&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:273858601:1" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=273858601&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:273858601:2" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=273858601&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:273858601:3" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=273858601&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:273858601:4" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=273858601&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:273858601:5" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=273858601&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:273858601:6" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=273858601&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:273858601:7" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=273858601&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:273858601:8" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=273858601&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:273858601:9" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=273858601&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:273858601:10" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=273858601&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:273858601:11" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=273858601&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:273858601:12" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=273858601&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:273858601:13" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=273858601&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:273858601:14" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=273858601&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:273858601:15" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=273858601&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:273858601:16" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=273858601&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:273858601:17" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=273858601&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:273858601:20" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=273858601&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:273858601:41" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=273858601&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:273858601:42" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=273858601&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:273858601:43" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=273858601&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:273858601:44" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=273858601&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:273858601:45" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=273858601&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:273858601:46" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=273858601&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:273858601:47" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=273858601&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:273858601:48" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=273858601&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:273858601:49" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=273858601&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:273858601:50" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=273858601&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:273858601:51" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=273858601&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:273858601:52" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=273858601&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:273858601:53" alt="点击这里给我发消息" title="点击这里给我发消息"/></a> -->