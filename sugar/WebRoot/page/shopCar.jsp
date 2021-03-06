<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="/commons/taglib.jsp" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>sugar shopCar</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<%@include file="/commons/public.jsp" %>

		<style type="text/css">
			*{margin:0;padding:0;}
			body{width:100%;height:100%;font-size:12px;font-family:'微软雅黑';color:#bbb;}
			li{list-style:none;}
			a{text-decoration:none;color:#fff;}
			
			#mysugar{width:100%;height:auto;}
			
			#mysugar .content{width:1225px;height:auto;margin:0 auto 60px auto;position:relative;}
			#mysugar .content .c_left{width:160px;height:500px;background:rgba(0,0,0,.4);position:absolute;top:40px;left:0;}
			#mysugar .content .c_left.fixed{position:fixed;top:10px;left:62px;}
			#mysugar .content .c_left ul li{width:100%;height:40px;position:relative;}
			#mysugar .content .c_left ul .set{margin-top:260px;}
			#mysugar .content .c_left ul .set i{width:20px;height:20px;background:url("${basePath}/images/icon1.png") no-repeat;background-position:-688px -406px;display:inline-block;margin:8px auto;line-height:35px;}
			#mysugar .content .c_left ul li.on{background:#adb0b1;}
			#mysugar .content .c_left ul li:hover{background:#adb0b1;}
			#mysugar .content .c_left ul li a{display:block;width:100%;height:40px;text-align:center;line-height:40px;color:#fff;font-size:14px;}
			#mysugar .content .c_left ul li span{position:absolute;right:0;top:17px;display:inline-block;width:0;height:0;border-right:6px solid #fff;border-top:4px solid transparent;border-bottom:4px solid transparent;}
			
			#mysugar .content .c_right{width:1020px;height:auto;float:right;margin-top:40px;}
			#mysugar .content .c_right .r_logo{width:100%;height:80px;}
			#mysugar .content .c_right .r_logo .logo{float:left;}
			#mysugar .content .c_right .r_logo .title{float: left;height: 80px;line-height: 80px;margin-left: 6px;font-size: 22px;font-family: '\5FAE\8F6F\96C5\9ED1','\534E\6587\7EC6\9ED1','\9ED1\4F53',arial;font-weight: 400;color: #000;}
			
			#mysugar .content .c_right .r_toptoal{width:100%;height:40px;border-bottom:1px solid #03a9f4;margin-top:10px;}
			#mysugar .content .c_right .r_toptoal .t_choose{width:300px;height:40px;float:left;line-height:40px;color:#333;font-size:14px;}
			#mysugar .content .c_right .r_toptoal .t_choose input.chooseAllTop{vertical-align: middle;width: 16px;height: 16px;display: inline-block;margin-right:10px;}
			#mysugar .content .c_right .r_toptoal .t_allMoney{width:240px;height:40px;float:right;line-height:40px;color:#333;font-size:14px;}
			#mysugar .content .c_right .r_toptoal .t_allMoney .goCheckOut{cursor:pointer;width:80px;height:30px;background:#03a9f4;float:right;margin-top:5px;line-height:30px;text-align:center;color:#fff;}
			
			#mysugar .content .c_right .r_shopClass{width:100%;height:auto;margin-top:10px;}
			#mysugar .content .c_right .r_shopClass .shopClass{width:100%;height:auto;margin-top:30px;}
			#mysugar .content .c_right .r_shopClass .shopClass .s_shopName{width:100%;height:20px;line-height:20px;}
			#mysugar .content .c_right .r_shopClass .shopClass .s_shopName .sn_img{display:inline-block;vertical-align:middle;float:left;margin:2px 4px 0 0;}
			#mysugar .content .c_right .r_shopClass .shopClass .s_shopName .sn_name{line-height:20px;height:20px;float:left;}
			#mysugar .content .c_right .r_shopClass .shopClass .s_shopTop{width:100%;height:30px;border:1px solid #bbb;margin-top:10px;}
			#mysugar .content .c_right .r_shopClass .shopClass .s_shopList{width:100%;}
			#mysugar .content .c_right .r_shopClass .shopClass .s_shopList ul li{width:100%;height:80px;border-left:1px solid #bbb;border-right:1px solid #bbb;background:#e8f8ff;margin-bottom:1px;}
			#mysugar .content .c_right .r_shopClass .shopClass .s_shopList ul li .goodsCheck{display:inline-block;float:left;margin:10px 0 0 20px;}
			#mysugar .content .c_right .r_shopClass .shopClass .s_shopList ul li .goodsInfo{width:380px;height:80px;float:left;}
			#mysugar .content .c_right .r_shopClass .shopClass .s_shopList ul li .goodsInfo .g_goodsPic{display:inline-block;float:left;margin:10px 0 0 10px;}
			#mysugar .content .c_right .r_shopClass .shopClass .s_shopList ul li .goodsInfo .g_goodsDetail{width:300px;height:80px;float:left;line-height:80px;margin-left:10px;color:#333;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
			#mysugar .content .c_right .r_shopClass .shopClass .s_shopList ul li .goodsPrice{height:80px;float:left;line-height:80px;margin-left:80px;color:#333;}
			#mysugar .content .c_right .r_shopClass .shopClass .s_shopList ul li .goodsCount{height:80px;float:left;line-height:80px;margin-left:80px;color:#333;}
			#mysugar .content .c_right .r_shopClass .shopClass .s_shopList ul li .goodsTotal{height:80px;float:left;line-height:80px;margin-left:80px;color:#333;}
			#mysugar .content .c_right .r_shopClass .shopClass .s_shopList ul li .goodsDel{height:80px;float:left;line-height:80px;margin-left:40px;color:#bbb;}
			#mysugar .content .c_right .r_shopClass .shopClass .s_shopList ul li .goodsDel a{color:#bbb;}
			#mysugar .content .c_right .r_shopClass .shopClass .s_shopList ul li .goodsDel a:hover{color:#333;}
			#mysugar .content .c_right .r_shopClass .shopClass .s_shopBottom{width:100%;height:30px;border:1px solid #bbb;}
			#mysugar .content .c_right .r_shopClass .shopClass .totalshop{height:30px;float:right;margin-right:20px;line-height:30px;}
			
			#mysugar .content .c_right .r_shoptotal{width:100%;height:50px;background:#eee;margin-top:20px;}
			#mysugar .content .c_right .r_shoptotal .s_choose{width:80px;height:50px;float:left;line-height:50px;margin-left:20px;color:#333;font-size:14px;}
			#mysugar .content .c_right .r_shoptotal .s_choose input.chooseAllBottom{vertical-align: middle;width: 16px;height: 16px;display: inline-block;margin-right:5px;}
			
			.clear{clear:both;}
		
		</style>
	</head>
<body>
	<div id="mysugar">
		<!-- header start -->
		<jsp:include  page="/commons/head.jsp"/>
		<!-- header end -->
		
		<!-- content start -->
		<div class="content">
			<div class="c_left">
				<ul>
					<li><a href="${basePath }/page/userInfo.jsp">账号设置</a></li>
					<li class="on"><a href="javascript:void(0)">我的购物车</a><span></span></li>
					<li><a href="${basePath }/tologin/userPage/toAllOrder">我的交易记录</a></li>
					<li><a href="#">我的设计</a></li>
					<li><a href="javascript:void(0)" onclick="hasShop()">我的商店</a></li>
					<li class="set"><a href="#"><i></i></a></li>
				</ul>
			</div>
			<div class="c_right">
				<div class="r_logo">
					<div class="logo"><img src="${basePath }/images/logo.png" width="120" height="80px"/></div>
					<div class="title">我的购物车</div>
				</div>
				<div class="r_toptoal">
					<div class="t_choose"><input class="chooseAllTop" type="checkbox"/>选中所有的商品</div>
					<div class="t_allMoney"><div class="goCheckOut">去结算</div></div>
				</div>
				<c:forEach items="${mapList }" var="item">
				<div class="r_shopClass" shopid="${item.shop.id }">
					<div class="shopClass"> 
						<div class="s_shopName">
							<input class="shopAll" type="checkbox" style="float:left;margin:4px 5px 0 0;"/><img class="sn_img" src="${basePath }/images/shop.png" width="16" height="16"/><div class="sn_name">店铺：${item.shop.shopname }</div>
						</div>
						<div class="s_shopTop"></div>
						<div class="s_shopList">
							<ul>
								<c:forEach items="${item.shopid }" var="its">
								<li goodid="${its.good.id}">
									<input class="goodsCheck" type="checkbox" style=""/>
									<div class="goodsInfo" style="">
										<img class="g_goodsPic" src="${basePath }/images/good/${its.good.id }/1.jpg" width="60" height="60"/>
										<div class="g_goodsDetail">${its.good.goodname }</div>
									</div>
									<div class="goodsPrice">单价：<span style="color:red;">${its.good.goodnprice }</span></div>
									<div class="goodsCount">数量：<input class="delcount" type="button" value="-"/><input type="text" class="count" value="${its.goodcount }" style="width:80px;"/><input class="addcount" type="button" value="+"/></div>
									<div class="goodsTotal">合计：<span style="color:red;">230</span></div>
									<div class="goodsDel"><a href="#">删除商品</a></div>
								</li>
								</c:forEach>
							</ul>
						</div>
						<div class="s_shopBottom">
							<div class="totalshop">店铺合计：<span style="color:red;">￥1000</span></div>
						</div>
					</div>
				</div>
				</c:forEach>
				<div class="r_shoptotal">
					<div class="s_choose"><input class="chooseAllBottom" type="checkbox"/>全选</div>
					<div class="s_delAll" style="float:left;height:50px;line-height:50px;"><a href="#" style="color:#333;font-size:14px;">删除</a></div>
					<div class="s_checkOut" style="width:260px;height:50px;float:right;">
						<div class="goCheckOut" style="float:right;width:120px;height:50px;line-height:50px;text-align:center;background:#03a9f4;color:#fff;cursor:pointer;">去结算</div>
					</div>
				</div>
			</div>
			<div class="clear"></div>
		</div>
		<!-- content end -->

		<!-- footer start -->
		<div class="footer" style="color:#333;position:fixed;bottom:0;left:0;width:100%;height:30px;text-align:center;line-height:30px;border-top:1px solid #bbb;background:#fff;">©sugar by jingbaba</div>
		<!-- footer end -->
	</div>

<script type="text/javascript">
$(function(){
	$(window).scroll(function(){
		var topScr=$(window).scrollTop();
		if(topScr>70){
			$("#mysugar .content .c_left").addClass("fixed");
		}else{
			$("#mysugar .content .c_left").removeClass("fixed");
		}
	});
	
	//
	var length = $(".r_shopClass").find(".s_shopList ul li").length;
	for(var i = 0;i<length;i++){
		var goodcount = $(".r_shopClass").find(".s_shopList ul li").eq(i).find(".goodsCount .count").val();
		var goodprice = $(".r_shopClass").find(".s_shopList ul li").eq(i).find(".goodsPrice span").text();
		var money = Number(goodcount)*Number(goodprice)
		$(".r_shopClass").find(".s_shopList ul li").eq(i).find(".goodsTotal span").text(money);
	}
	var shoplength = $(".r_shopClass").length;
	var lilength = $(".r_shopClass").find(".s_shopList ul li").length;
	for(var i = 0;i<shoplength;i++){
		var totalmoney = 0;
		for(var j = 0;j<lilength;j++){
			var money = $(".r_shopClass").eq(i).find(".s_shopList ul li").eq(j).find(".goodsTotal span").text();
			totalmoney = Number(totalmoney)+Number(money);
			$(".r_shopClass").eq(i).find(".totalshop span").text(totalmoney);
		}
	}
});

$(".goCheckOut").click(function(){
	var input = "";
	var inputAll = "";
	// 准备数据
	for(var i = 0;i<$(".r_shopClass").length;i++){
		for(var j = 0;j<$(".r_shopClass").eq(i).find(".s_shopList ul li").length;j++){
			var check = $(".r_shopClass").eq(i).find(".s_shopList ul li").eq(j).find(".goodsCheck").prop("checked");
			if(check==true){
				var shopid = $(".r_shopClass").eq(i).attr("shopid");
				var goodid = $(".r_shopClass").eq(i).find(".s_shopList ul li").eq(j).attr("goodid");
				var goodcount = $(".r_shopClass").eq(i).find(".s_shopList ul li").eq(j).find(".goodsCount input.count").val();
				value = shopid+":"+goodid+"="+goodcount;
				input = "<input name='shop' value='"+value+"' type='hidden'/>"
				inputAll = inputAll+input;
			}
		}
	}
	var html = "<form action='${basePath}/tologin/userPage/carToBuyProcess' method='post'>"+
					"<input name='bycar' value='bycar' type='hidden'/>"+
					inputAll+
			   "</form>";
	$("body").append(html);
	if(inputAll!=""){
		$("form").submit();
	}else{
		showInfo("请选择商品~","warning");
	}
});

// 全部勾选
$(".chooseAllTop").click(function(){
	if($(this).prop("checked")) {
		$(".shopAll").trigger("click");
		$(".shopAll").prop('checked', true);
		$(".goodsCheck").prop('checked', true);
	}else{
		$(".shopAll").trigger("click");
		$(".shopAll").prop('checked', false);
		$(".goodsCheck").prop('checked', false);
	}
});
$(".chooseAllBottom").click(function(){
	if($(this).prop("checked")) {
		$(".shopAll").trigger("click");
		$(".shopAll").prop('checked', true);
		$(".goodsCheck").prop('checked', true);
	}else{
		$(".shopAll").trigger("click");
		$(".shopAll").prop('checked', false);
		$(".goodsCheck").prop('checked', false);
	}
});
// 勾选店铺
$(".shopAll").click(function(){
	if($(this).prop("checked")) {
		$(this).parent().siblings(".s_shopList").find(".goodsCheck").prop('checked', true);
    }else{
        $(this).parent().siblings(".s_shopList").find(".goodsCheck").prop('checked', false);
    }
});

$(".delcount").click(function(){
	var totalcount = $(this).parent().find(".count").val();
	if(totalcount==1){
		return false;
	}else{
		totalcount = totalcount-1;
		$(this).parent().find(".count").val(totalcount);
		var length = $(".r_shopClass").find(".s_shopList ul li").length;
		for(var i = 0;i<length;i++){
			var goodcount = $(".r_shopClass").find(".s_shopList ul li").eq(i).find(".goodsCount .count").val();
			var goodprice = $(".r_shopClass").find(".s_shopList ul li").eq(i).find(".goodsPrice span").text();
			var money = Number(goodcount)*Number(goodprice)
			$(".r_shopClass").find(".s_shopList ul li").eq(i).find(".goodsTotal span").text(money);
		}
		var shoplength = $(".r_shopClass").length;
		var lilength = $(".r_shopClass").find(".s_shopList ul li").length;
		for(var i = 0;i<shoplength;i++){
			var totalmoney = 0;
			for(var j = 0;j<lilength;j++){
				var money = $(".r_shopClass").eq(i).find(".s_shopList ul li").eq(j).find(".goodsTotal span").text();
				totalmoney = Number(totalmoney)+Number(money);
				$(".r_shopClass").eq(i).find(".totalshop span").text(totalmoney);
			}
		}
	}
});
$(".addcount").click(function(){
	var totalcount = $(this).parent().find(".count").val();
	totalcount = Number(totalcount)+Number(1);
	$(this).parent().find(".count").val(totalcount);
	var length = $(".r_shopClass").find(".s_shopList ul li").length;
	for(var i = 0;i<length;i++){
		var goodcount = $(".r_shopClass").find(".s_shopList ul li").eq(i).find(".goodsCount .count").val();
		var goodprice = $(".r_shopClass").find(".s_shopList ul li").eq(i).find(".goodsPrice span").text();
		var money = Number(goodcount)*Number(goodprice)
		$(".r_shopClass").find(".s_shopList ul li").eq(i).find(".goodsTotal span").text(money);
	}
	var shoplength = $(".r_shopClass").length;
	var lilength = $(".r_shopClass").find(".s_shopList ul li").length;
	for(var i = 0;i<shoplength;i++){
		var totalmoney = 0;
		for(var j = 0;j<lilength;j++){
			var money = $(".r_shopClass").eq(i).find(".s_shopList ul li").eq(j).find(".goodsTotal span").text();
			totalmoney = Number(totalmoney)+Number(money);
			$(".r_shopClass").eq(i).find(".totalshop span").text(totalmoney);
		}
	}
});

// 删除购物车商品
$(".goodsDel a").click(function(){
	var goodid = new Array();
	goodid.push($(this).parent().parent().attr("goodid"));
	var _this = $(this).parent().parent().parent().parent().parent().parent();
	$.ajax({
		url: basePath+"/shopcar/delShopcar",
		data: {"goodid":goodid},
		type: 'post',
		traditional: true,
		success: function(data){
			_this.remove();
			showInfo("删除成功~","success");
		}
	});
});

function hasShop(){
	$.ajax({
		url: basePath+"/shop/hasShop",
		type: 'post',
		success: function(data){
			if(data.result=="yes"){
				window.location.href=basePath+"/tologin/userPage/toMyShop";
			}else{
				window.location.href=basePath+"/page/createShop.jsp";
			}
		}
	});
}
</script>
</body>
  
</html>
