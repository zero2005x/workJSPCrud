<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-Hant">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Soar Like an Eagle 販售服飾、飾品配件、二手商品......等等">
<meta name="keywords"
	content="Soar Like an Eagle 男裝 女裝 戒指 項鍊 手鍊 耳環 褲襪 短襪">
<title>Soar Like an Eagle</title>

</head>
<body>
	<jsp:include page="header.jsp" />
	<div id="photoCarousel" class="container coverflow carousel slide "
		data-ride="carousel">
		<!-- Indicators 瀏覽控制 -->
		<ol class="carousel-indicators" style="margin-top: 50px">
			<li data-target="#photoCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#photoCarousel" data-slide-to="1"></li>
			<li data-target="#photoCarousel" data-slide-to="2"></li>
		</ol>
		<!-- 建立相片清單 -->
		<div class="carousel-inner">
			<div class="item active">
				<img src="images/dress01.jpg">
			</div>
			<div class="item">
				<img src="images/dress02.jpg">
			</div>
			<div class="item">
				<img src="images/dress03.jpg">
			</div>
		</div>
		<!-- 上一張/下一張控制 -->
		<a class="left carousel-control" href="#photoCarousel"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"></span></a>
		<a class="right carousel-control" href="#photoCarousel"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right"></span></a>
			

	</div>
	
	<jsp:include page="foot.jsp" />
	<script>
		$(function(){
			$('.coverflow').css('max-width',$('.coverflow img').width());
		});
	</script>

</body>
</html>