<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>

<jsp:useBean id="toDay" class="java.util.Date" />

<fmt:formatDate value="${toDay}" var="toDay" pattern="yyyy-MM-dd" />
<!DOCTYPE html>
<!--[if IE 8]><html class="ie ie8"> <![endif]-->
<!--[if IE 9]><html class="ie ie9"> <![endif]-->
<!--[if gt IE 9]><!-->
<html>
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords"
	content="template, tour template, city tours, city tour, tours tickets, transfers, travel, travel template" />
<meta name="description"
	content="Citytours - Premium site template for city tours agencies, transfers and tickets.">
<meta name="author" content="Ansonika">
<title>SOCIAL N SPACE</title>

<!-- Favicons-->
<link rel="shortcut icon" href="/img/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" type="/image/x-icon"
	href="/img/apple-touch-icon-57x57-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="72x72"
	href="/img/apple-touch-icon-72x72-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="114x114"
	href="/img/apple-touch-icon-114x114-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="144x144"
	href="/img/apple-touch-icon-144x144-precomposed.png">

<!-- CSS -->
<link href="/css/base.css" rel="stylesheet">
<link href="/css/admin.css" rel="stylesheet">
<link href="/css/jquery.switch.css" rel="stylesheet">
<!-- CSS -->
<!-- <link href="/css/flickity.css" rel="stylesheet"> -->
<link href="/css/custom.css" rel="stylesheet">
<link href="/css/date_time_picker.css" rel="stylesheet">
<!-- Google web fonts -->
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Gochi+Hand'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lato:300,400'
	rel='stylesheet' type='text/css'>
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
<!--[if lt IE 9]>
      <script src="js/html5shiv.min.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->

<%
	//int type = Integer.parseInt((String)session.getAttribute("user_type"));	
	String user_id = (String) session.getAttribute("user_id");

	if (user_id == null) {
%>
<script>
	alert("잘못된 접근입니다. 로그인 후에 이용해주세요");
	window.location.href = "<%=request.getContextPath()%>/loginForm.do";
</script>
<%
	}
%>
</head>
<body>

	<!--[if lte IE 8]>
    <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a>.</p>
<![endif]-->

	<div id="preloader">
		<div class="sk-spinner sk-spinner-wave">
			<div class="sk-rect1"></div>
			<div class="sk-rect2"></div>
			<div class="sk-rect3"></div>
			<div class="sk-rect4"></div>
			<div class="sk-rect5"></div>
		</div>
	</div>
	<!-- End Preload -->

	<div class="layer"></div>
	<!-- Mobile menu overlay mask -->

	<!-- Header================================================== -->
	<%@include file="include/header.jsp"%>

	<input type="hidden" value="${thumb_nail }" id="thumbbb">

	<section id="search_container"></section>
	<div class="container margin_60">
		<div class="row">
			<div class="col-md-12 col-sm-12">
				<div class="form_title">
					<h3>
						<strong><i class="icon-pencil"></i></strong>Write Feed
					</h3>
					<p>Mussum ipsum cacilds, vidis litro abertis.</p>
				</div>
				<div class="step">

					<div id="message-contact"></div>
					<c:if test="${ sessionScope.user_type == 1 }">
						<form action="<%=request.getContextPath()%>/board/updateg"
							method="get">
					</c:if>
					<c:if test="${ sessionScope.user_type == 0 }">
						<form action="<%=request.getContextPath()%>/board/update"
							method="get">
					</c:if>
					<div class="row">
						<div class="col-md-6 col-sm-6">
							<div class="form-group">
								<h4>ID</h4>
								<input type="text" class="form-control" name="user_id"
									value="${sessionScope.user_id}" readonly>
								<%-- ${user_id} --%>
							</div>
						</div>
					</div>
					<!-- End row -->

					<div class="row">
						<div class="col-md-12">
							<div class="form-group">
								<h4>Message</h4>
								<textarea rows="5" id="message_contact" name="board_content"
									class="form-control" placeholder="Write your message"
									style="height: 200px;">${common_board.board_content}</textarea>
							</div>
						</div>
					</div>

					<div class="post_info clearfix">
						<div class="post-left board_view">
							<h4>YOUR IMAGES</h4>
							<hr />							
							<ul>
								<%-- <c:forEach var="vo" items="${img}">
									<li><img src="<%=request.getContextPath()%>/uploads/${vo}"></li>
								</c:forEach> --%>

								<div id="imglistWrap" class="row"></div>
							</ul>

						</div>
						
					</div>
					<hr />
					<!-- <div class="row">
					
						<input type="file" id="file0" class="" name="files" multiple>
						<input type="submit" value="전송" />
					
					</div> -->

					<!-- imageUpload start -->
					<div class="row">
						<div class="col-md-12">
							<div class="form-group">
								<!-- <h4>image</h4> -->
								<div>
									<h4>Click & Drag your Image</h4>
									<div class="dropzone upload-drop-zone">
										<div class="imgs_wrap">
											<ul class="row">
											</ul>
										</div>
										<div class="box_icon_wrap">
											<svg class="box__icon" xmlns="http://www.w3.org/2000/svg"
												width="50" height="43" viewBox="0 0 50 43">
												<path
													d="M48.4 26.5c-.9 0-1.7.7-1.7 1.7v11.6h-43.3v-11.6c0-.9-.7-1.7-1.7-1.7s-1.7.7-1.7 1.7v13.2c0 .9.7 1.7 1.7 1.7h46.7c.9 0 1.7-.7 1.7-1.7v-13.2c0-1-.7-1.7-1.7-1.7zm-24.5 6.1c.3.3.8.5 1.2.5.4 0 .9-.2 1.2-.5l10-11.6c.7-.7.7-1.7 0-2.4s-1.7-.7-2.4 0l-7.1 8.3v-25.3c0-.9-.7-1.7-1.7-1.7s-1.7.7-1.7 1.7v25.3l-7.1-8.3c-.7-.7-1.7-.7-2.4 0s-.7 1.7 0 2.4l10 11.6z"></path></svg>
											<label class="labl"><strong>Choose a file</strong><span
												class="box__dragndrop"> or drag it here</span>.</label>
										</div>
									</div>
									<input type="file" id="file0" class="hidden" name="files"
										multiple>

								</div>
								<button class="btn_1 green" value="uploadimage" id="uploadima">UPLOAD
									IMAGES</button>

							</div>
						</div>
					</div>


					<!-- imageUpload end -->
					<!--  GiverWritePage -->
					
					<c:if test="${ sessionScope.user_type == 1 }">
						<hr>
						<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
						<script type="text/javascript"
							src="http://dapi.kakao.com/v2/maps/sdk.js?appkey=2b83f513db866294e637be33235d3d0d&libraries=services"></script>
						<div class="row">
							<div class="col-md-6 col-sm-6 cst-form-group">
								<div class="cst-form-group">
									<h4>주소</h4>
									<div class="form-group">
										<input type="text" id="postcode"
											class="form-control cst-form-control" placeholder="우편번호">
										<input type="button" style="height: 40px;"
											onclick="execDaumPostcode()" class="btn_1" value="우편번호 찾기">
									</div>
								</div>
								<div class="cst-form-group">
									<div class="form-group">
										<input type="text" id="address"
											class="cst-form-control form-control" name="addr"
											value="${giver_board.addr }" placeholder="주소"> <input
											type="text" id="extraAddress"
											class="cst-form-control form-control" placeholder="참고항목">
									</div>
								</div>
								<div class="cst-form-group">
									<div class="form-group">
										<input type="text" id="detailAddress"
											class="cst-form-width form-control" placeholder="상세주소">

									</div>
								</div>
							</div>
							<div class="col-md-6 col-sm-6 cst-form-group">
								<div id="map" style="width: 100%; height: 380px;"></div>
							</div>
						</div>
						<script>
							//$(function(){
							var initAddr = $("#address").val();
							if (initAddr != "") {
								loadMap(initAddr);
								removeBox();
							}

							function loadMap(address) {
								//address = document.getElementById('address').value;
								var mapContainer = document
										.getElementById('map'), mapOption = {
									center : new daum.maps.LatLng(33.450701,
											126.570667),
									level : 7
								};
								var map = new daum.maps.Map(mapContainer,
										mapOption);
								var geocoder = new daum.maps.services.Geocoder();
								geocoder
										.addressSearch(
												address,
												function(result, status) {
													if (status === daum.maps.services.Status.OK) {
														var coords = new daum.maps.LatLng(
																result[0].y,
																result[0].x);
														var marker = new daum.maps.Marker(
																{
																	map : map,
																	position : coords
																});

														var infowindow = new daum.maps.InfoWindow(
																{
																	content : '<div id="removeBox" style="width:150px;text-align:center;padding:6px 0;"></div>'
																});
														infowindow.open(map,
																marker);
														map.setCenter(coords);
														$("#removeBox")
																.ready(
																		function() {
																			var rmvbox = $(
																					"#removeBox")
																					.parent();
																			rmvbox
																					.parent()
																					.remove();
																		});
													}
												});
							}
							function removeBox() {
								$("#removeBox").ready(function() {
									var rmvbox = $("#removeBox").parent();
									rmvbox.parent().remove();
								});
							}
							function execDaumPostcode() {
								new daum.Postcode(
										{
											oncomplete : function(data) {
												var addr = ''; // 주소 변수
												var extraAddr = ''; // 참고항목 변수
												if (data.userSelectedType === 'R') {
													addr = data.roadAddress;
												} else {
													addr = data.jibunAddress;
												}
												if (data.userSelectedType === 'R') {
													if (data.bname !== ''
															&& /[동|로|가]$/g
																	.test(data.bname)) {
														extraAddr += data.bname;
													}
													// 건물명이 있고, 공동주택일 경우 추가한다.
													if (data.buildingName !== ''
															&& data.apartment === 'Y') {
														extraAddr += (extraAddr !== '' ? ', '
																+ data.buildingName
																: data.buildingName);
													}
													if (extraAddr !== '') {
														extraAddr = ' ('
																+ extraAddr
																+ ')';
													}
													document
															.getElementById("extraAddress").value = extraAddr;

												} else {
													document
															.getElementById("extraAddress").value = '';
												}
												document
														.getElementById('postcode').value = data.zonecode;
												document
														.getElementById("address").value = addr;
												// loadMap
												loadMap(addr);

												document.getElementById(
														"detailAddress")
														.focus();
											}
										}).open();
							}
							//})
						</script>
						<div class="row">
							<div class="col-md-6 col-sm-6">
								<div class="col-md-12 col-sm-12">
									<h4>건물정보</h4>
								</div>
								<table class="table table-striped options_cart">
									<tbody class="checkedCheck">
										<tr>
											<td style="width: 10%"><i class="icon_set_1_icon-22"></i>
											</td>
											<td style="width: 60%">Pet allowed</td>
											<td style="width: 35%"><label
												class="switch-light switch-ios pull-right"><input
													type="checkbox" name="amenities1" id="amenti1"
													value="Pet allowed"
													<c:if test='${giver_board.amenities1 != null}'> checked=""</c:if>>
													<span> <span>No</span> <span>Yes</span>
												</span> <a></a> </label></td>
										</tr>
										<tr>
											<td><i class="icon_set_1_icon-86"></i></td>
											<td>Free Wifi</td>
											<td><label class="switch-light switch-ios pull-right">

													<input type="checkbox" name="amenities2" id="amenti2"
													value="Free Wifi"
													<c:if test='${giver_board.amenities2 != null}'> checked=""</c:if>>
													<span> <span>No</span> <span>Yes</span>
												</span> <a></a>
											</label></td>
										</tr>
										<tr>
											<td><i class="icon_set_1_icon-13"></i></td>
											<td>Accessibiliy</td>
											<td><label class="switch-light switch-ios pull-right">
													<input type="checkbox" name="amenities3" id="amenti2"
													value="Accessibiliy"
													<c:if test='${giver_board.amenities3 != null}'> checked=""</c:if>>
													<span> <span>No</span> <span>Yes</span>
												</span> <a></a>
											</label></td>
										</tr>
										<tr>
											<td><i class="icon_set_1_icon-27"></i></td>
											<td>Parking</td>
											<td><label class="switch-light switch-ios pull-right">
													<input type="checkbox" name="amenities4" id="amenti4"
													value="Parking"
													<c:if test='${giver_board.amenities4 != null}'> checked=""</c:if>>
													<span> <span>No</span> <span>Yes</span>
												</span> <a></a>
											</label></td>
										</tr>
										<!-- <tr>
											<td><i class="icon_set_1_icon-81"></i></td>
											<td>체크5</td>
											<td><label class="switch-light switch-ios pull-right">
													<input type="checkbox" name="amenities5" id="amenti5"
													value="체크5" checked=""> <span> <span>No</span>
														<span>Yes</span>
												</span> <a></a>
											</label></td>
										</tr> -->
									</tbody>
								</table>
							</div>
							<div class="col-md-6 col-sm-6">
								<div class="col-md-12 col-sm-12">
									<h4>이용 가능 날짜</h4>
								</div>
								<div class="col-md-12">
									<div class="form-group cst-form-group-layout cst-form-group">
										<label><i class="icon-calendar-7"></i> Start Date</label> <input
											class="date-pick form-control start-date"
											name="booking_startdate" data-date-format="yyyy-mm-dd"
											type="text" data-date-start-date="${toDay}"
											value="${giver_board.booking_startdate}">
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group cst-form-group-layout cst-form-group">
										<label><i class="icon-calendar-7"></i> End Date</label>
										<!-- <input class="date-pick form-control" name="booking_enddate" data-date-format="M d, D" type="text"> -->
										<input class="date-pick form-control end-date"
											name="booking_enddate"
											data-date-end-date="${giver_board.booking_enddate}"
											value="${giver_board.booking_enddate}"
											data-date-format="yyyy-mm-dd" type="text" readonly>
									</div>
								</div>
								<div class="col-md-12 col-sm-12 col-xs-12">
									<div class="form-group cst-form-group-layout cst-form-group">
										<label>수용가능 인원</label>
										<div class="numbers-row">
											<input type="text" value="${giver_board.people}" id="adults"
												class="qty2 form-control" name="people">
											<div class="inc button_inc">+</div>
											<div class="dec button_inc">-</div>
										</div>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group cst-form-group-layout">
										<label>ETC</label>
										<textarea rows="5" id="message_contact" name="amenities_etc"
											class="form-control" placeholder="Write your message"
											style="height: 53px;">${giver_board.amenities_etc}</textarea>
									</div>
								</div>
							</div>
						</div>
					</c:if>
					<!--  -->
					<c:if test="${ sessionScope.user_type == 1 }">
						<h4>FAVORITE</h4>
						<div class="col-md-6 col-sm-6">

							<table class="table table-striped options_cart">
								<tbody>
									<tr>
										<td style="width: 10%"><i class="icon-money"></i></td>
										<td style="width: 60%">COMMERCIAL</td>
										<td style="width: 35%"><label
											class="switch-light switch-ios pull-right"> <input
												type="checkbox" name="option_1" id="option_1" value="1"
												<c:forEach items="${fav}" var="fa">
														<c:if test="${fa == 1}">
														checked=""
														</c:if>
													</c:forEach>>
												<span> <span>No</span> <span>Yes</span>
											</span> <a></a>
										</label></td>
									</tr>
									<tr>
										<td><i class="icon-basket"></i></td>
										<td>FLEA MARKET</td>
										<td><label class="switch-light switch-ios pull-right">
												<input type="checkbox" name="option_2" id="option_2"
												value="2"
												<c:forEach items="${fav}" var="fa">
														<c:if test="${fa == 2}">
														checked=""
														</c:if>
													</c:forEach>>
												<span> <span>No</span> <span>Yes</span>
											</span> <a></a>
										</label></td>
									</tr>
									<tr>
										<td><i class="icon-vector-pencil"></i></td>
										<td>EXHIBITION</td>
										<td><label class="switch-light switch-ios pull-right">
												<input type="checkbox" name="option_3" id="option_3"
												value="3"
												<c:forEach items="${fav}" var="fa">
														<c:if test="${fa == 3}">
														checked=""
														</c:if>
													</c:forEach>>
												<span> <span>No</span> <span>Yes</span>
											</span> <a></a>
										</label></td>
									</tr>
									<tr>
										<td><i class="icon-gift"></i></td>
										<td>POP - UP STORE</td>
										<td><label class="switch-light switch-ios pull-right">
												<input type="checkbox" name="option_4" id="option_4"
												value="4"
												<c:forEach items="${fav}" var="fa">
														<c:if test="${fa == 4}">
														checked=""
														</c:if>
													</c:forEach>>
												<span> <span>No</span> <span>Yes</span>
											</span> <a></a>
										</label></td>
									</tr>


								</tbody>

							</table>
						</div>


						<div class="col-md-6 col-sm-6">

							<table class="table table-striped options_cart">
								<tbody>
									<tr>
										<td style="width: 10%"><i class="icon-camera-2"></i></td>
										<td style="width: 60%">PHOTO</td>
										<td style="width: 35%"><label
											class="switch-light switch-ios pull-right"> <input
												type="checkbox" name="option_5" id="option_5" value="5"
												<c:forEach items="${fav}" var="fa">
														<c:if test="${fa == 5}">
														checked=""
														</c:if>
													</c:forEach>>
												<span> <span>No</span> <span>Yes</span>
											</span> <a></a>
										</label></td>
									</tr>
									<tr>
										<td><i class="icon-pencil"></i></td>
										<td>STUDY</td>
										<td><label class="switch-light switch-ios pull-right">
												<input type="checkbox" name="option_6" id="option_6"
												value="6"
												<c:forEach items="${fav}" var="fa">
														<c:if test="${fa == 6}">
														checked=""
														</c:if>
													</c:forEach>>
												<span> <span>No</span> <span>Yes</span>
											</span> <a></a>
										</label></td>
									</tr>
									<tr>
										<td><i class="icon-group"></i></td>
										<td>SMALL GROUP</td>
										<td><label class="switch-light switch-ios pull-right">
												<input type="checkbox" name="option_7" id="option_7"
												value="7"
												<c:forEach items="${fav}" var="fa">
														<c:if test="${fa == 7}">
														checked=""
														</c:if>
													</c:forEach>>
												<span> <span>No</span> <span>Yes</span>
											</span> <a></a>
										</label></td>
									</tr>
									<tr>
										<td><i class="icon-heart"></i></td>
										<td>SMALL WEDDING</td>
										<td><label class="switch-light switch-ios pull-right">
												<input type="checkbox" name="option_8" id="option_8"
												value="8"
												<c:forEach items="${fav}" var="fa">
														<c:if test="${fa == 8}">
														checked=""
														</c:if>
													</c:forEach>>
												<span> <span>No</span> <span>Yes</span>
											</span> <a></a>
										</label></td>
									</tr>


								</tbody>

							</table>


						</div>
					</c:if>
					<!--  -->
					<div class="row">
						<div class="col-md-6">

							<input type="hidden" name="user_type"
								value="${sessionScope.user_type}"> <input type="hidden"
								id="board_id" name="board_id" value="${common_board.board_id }">
							<input type="submit" value="MODIFY" class="btn_1"
								id="submit-contact">
						</div>
					</div>
					</form>
				</div>
			</div>
		</div>
		<!-- End row -->
	</div>

	<%@include file="./include/footer.jsp"%>
	<div id="toTop"></div>
	<!-- Back to top button -->

	<!-- Common scripts -->
	<script src="/js/jquery-1.11.2.min.js"></script>
	<script src="/js/bootstrap-datepicker.js"></script>
	<script>
		/* var i = $('input.date-pick1').val();
		$('input.date-pick1').datepicker('setDate', i);
		var i2 = $('input.date-pick2').val();
		$('input.date-pick2').datepicker('setDate', i2); */
		$('input.start-date').datepicker({
			autoclose : true,
			defaultViewDate : "today"
		});
		$('input.start-date').datepicker().on("changeDate", function(e){			
			e.date.setDate(e.date.getDate()+1);
			var sy= e.date.getFullYear();
			var sm = e.date.getMonth()+1;
			var sd = e.date.getDate();
			var d = sy+"-"+(sm >= 9 ? sm: "0"+sm ) +"-"+sd;
			$('.end-date').val(d);
			$('.end-date').removeAttr("readonly");
			$('.end-date').datepicker('setStartDate',new Date(d));
				
		});
		
		$(".checkedCheck").each(function(){
			var chk = $(this).find("input[type='checkbox']").is(":checked");
			if(!chk){
				$(this).val(null);
			}
			
		})
		function checkbox(){
			
			if ($('input[name=sampleCheckbox]').is(":checked")) {
			    $('input[name=sampleHidden]').val('Y');
			} else {
			    $('input[name=sampleHidden]').val('N');
			}



		
		}
	</script>

	<script src="/js/common_scripts_min.js"></script>
	<script src="/js/functions.js"></script>
	<script>
		 window.onload = function() {
			 addImg();
			 
			$(document).on('click', ".imgdel", function() {
				var filename = $(this).attr("data-cid");
				var thumb_nail = $("#thumbbb").val();
				console.log(this + " : dsfdasdfd");
				console.log("thumb_nail :::: " + thumb_nail);
				console.log(filename);
				
				if(filename == thumb_nail){
					window.alert("썸네일은 삭제할 수 없습니다");
					return false;
				}else{
					deleteimg(filename);
				}
				return false;
			});
			$(document).on('click', "#uploadima", function() {
				var board_id = $("#board_id").val();
				uploadFile(board_id);
				delete fileList;
				return false;
			});
			
			function deleteimg(filename){
				var board_id = $("#board_id").val();
				$.ajax({
					type : "GET",
					url : "<%=request.getContextPath()%>/deleteimg",
					data : {
						board_id : board_id,
						filename : filename
					},
					error : function(err) {
						console.log(err);
					},
					success : function(data) {
						//addData(predi,data,"listWrap");
						//$("#imglistWrap").append(data);
						htmlImg();
					}
				});
			}
			
			
			function addImg() {
				var board_id = $("#board_id").val();
				$.ajax({
					type : "GET",
					url : "<%=request.getContextPath()%>/board/imglist.do",
					data : {
						board_id : board_id
					},
					error : function(err) {
						console.log(err);
					},
					success : function(data) {
						//addData(predi,data,"listWrap");
						
						$("#imglistWrap").append(data);
					}
				});
			}
			
			function htmlImg() {
				var board_id = $("#board_id").val();
				$.ajax({
					type : "GET",
					url : "<%=request.getContextPath()%>/board/imglist.do",
					data : {
						board_id : board_id
					},
					error : function(err) {
						console.log(err);
					},
					success : function(data) {
						
						$("#imglistWrap").html(data);
						fileList = new Array();						
						$(".upload-drop-zone .row .thumb_list").remove();
						$(".box_icon_wrap").show();
					}
				});
			}
			
			 var fileIndex = 0;
		        // 등록할 전체 파일 사이즈
		        var totalFileSize = 0;
		        // 파일 리스트
		        var fileList = new Array();
		        // 파일 사이즈 리스트
		        var fileSizeList = new Array();
		        // 등록 가능한 파일 사이즈 MB
		        var uploadSize = 50;
		        // 등록 가능한 총 파일 사이즈 MB
		        var maxUploadSize = 500;
		        $(function () {
		            fileDrop();
		            // var ci = 0;
		            $(".dropzone").on("click", function (e) {
		                e.preventDefault();
		                $("#file0").click();
		            });
		            $("input[type='file']").on('change', function (e) {
		                //selectFile(e.target.files);
		                //console.log(e.target.files);
		                $(".box_icon_wrap").css('display','none');
		                 setTimeout(function () {
		                    selectFile(e.target.files);
		                },10)  
		            });

		        });
		        function fileDrop() {
		            var dropzone = $(".dropzone");
		            dropzone.on('change', function (e) {
		                console.log("changed : " + e);
		            })
		            dropzone.on('dragenter', function (e) {
		                e.stopPropagation();
		                e.preventDefault();
		                // 드롭다운 영역 css
		                dropzone.css('background-color', '#E3F2FC');
		            });
		            dropzone.on('dragleave', function (e) {
		                e.stopPropagation();
		                e.preventDefault();
		                // 드롭다운 영역 css
		                dropzone.css('background-color', '#FFFFFF');
		            });
		            dropzone.on('dragover', function (e) {
		                e.stopPropagation();
		                e.preventDefault();
		                // 드롭다운 영역 css
		                dropzone.css('background-color', '#E3F2FC');
		            });

		            dropzone.on('drop', function (e) {
		                e.preventDefault();
		                // 드롭다운 영역 css
		                dropzone.css('background-color', '#FFFFFF');
		                $(".box_icon_wrap").css('display','none');
		                var files = e.originalEvent.dataTransfer.files;
		                //selectFile
		                selectFile(files);
		            });
		        }
		        function selectFile(files) {
		            if (files != null) {
		                if (files.length < 1) {
		                    alert("폴더 업로드 불가");
		                    return;
		                }
		                //selectFile(files);
		                //handleImgsFilesSelect(e);

		                // 다중
		                for (var i = 0; i < files.length; i++) {
		                    // 파일 이름
		                    var fileName = files[i].name;
		                    var fileNameArr = fileName.split("\.");
		                    // 확장자
		                    var ext = fileNameArr[fileNameArr.length - 1];
		                    // 파일 사이즈(단위 :MB)
		                    var fileSize = files[i].size / 1024 / 1024;
		                    if ($.inArray(ext, ['exe', 'bat', 'sh', 'java', 'jsp', 'html', 'js', 'css', 'xml']) >= 0) {
		                        // 확장자 체크
		                        alert("등록 불가 확장자");
		                        break;
		                    } else if (fileSize > uploadSize) {
		                        // 파일 사이즈 체크
		                        alert("용량 초과\n업로드 가능 용량 : " + uploadSize + " MB");
		                        break;
		                    } else {
		                        // 전체 파일 사이즈
		                        totalFileSize += fileSize;
		                        // 파일 배열에 넣기
		                        fileList[fileIndex] = files[i];
		                        // 파일 사이즈 배열에 넣기
		                        fileSizeList[fileIndex] = fileSize;                        
		                        var reader = new FileReader();
		                        var temp = fileList[fileIndex];
		                      
		                        reader.onloadend = (function (temp) {
		                           return function(){
		                        	   img_html = '<li class="thumb_list col-md-3 col-lg-3 col-sm-3 thumb_img_' + fileIndex + '"><img class="prvImg" src="' + this.result + '"></li>';
		                               $(".imgs_wrap>ul").append(img_html);
		                               setTimeout(function(){
		                                  $(".thumb_list .prvImg").each(function(){
		                                     var listW = $(".thumb_list").width();
		                                      $(".thumb_list").height(listW);
		                                     var imgW = $(this).width();
		                                     var imgH = $(this).height();
		                                     console.log(imgW);
		                                     console.log(imgH);
		                                     if(imgW < imgH){                                 
		                                        $(this).addClass("bigHeight");
		                                        var imgH = $(this).height();
		                                        $(this).css({"margin-top":-imgH/2});
		                                     }else if(imgW > imgH){
		                                        
		                                        $(this).addClass("bigWidth");
		                                        var imgW = $(this).width();
		                                        $(this).css({"margin-left":-imgW/2});
		                                     }   
		                                  });                        
		                              },20);                     
		                           };
		                        })(temp); 
		                        reader.readAsDataURL(temp);
		                        //console.log(img_html);
		                      
		                        // // 파일 번호 증가
		                        fileIndex++;
		                    }
		                }
		                console.log(fileList);
		                // 기존 이미지리스트삭제
		                //$(".imgs_wrap>ul").children().remove();
		               // imageThumbView(fileList);
		            } else {
		                alert("ERROR");
		            }
		        }
		    
		      
		      /* function deleteFile(fIndex) {
		            console.log("del call");
		            console.log(fileList[fIndex] + " : " + fileSizeList[fIndex]);
		            // 전체 파일 사이즈 수정
		            totalFileSize -= fileSizeList[fIndex];

		            // 파일 배열에서 삭제
		            delete fileList[fIndex];

		            // 파일 사이즈 배열 삭제
		            delete fileSizeList[fIndex];

		            // 업로드 파일 테이블 목록에서 삭제                
		            $("#fileli_" + fIndex).remove();
		            $(".thumbIdx_" + fIndex).remove();
		        }  */
		        
		        // 파일 등록
		        function uploadFile(board_id) {
		            // 등록할 파일 리스트
		            var uploadFileList = Object.keys(fileList);
		            // 파일이 있는지 체크
		            if (uploadFileList.length == 0) {
		                // 파일등록 경고창
		                alert("등록한 이미지 파일이 없습니다.");
		                
		                return ;
		            }

		            // 용량을 500MB를 넘을 경우 업로드 불가
		            if (totalFileSize > maxUploadSize) {
		                // 파일 사이즈 초과 경고창
		                alert("총 용량 초과\n총 업로드 가능 용량 : " + maxUploadSize + " MB");
		                return;
		            }

		            //if (confirm("등록 하시겠습니까?")) {
		                // 등록할 파일 리스트를 formData로 데이터 입력
		                var form = $('#boardWriteForm');
		                //var userid= $("#user_id").val();
		                //var formData = new FormData(form);
		                var formData = new FormData();
		                for (var i = 0; i < uploadFileList.length; i++) {
		                   console.log(fileList[uploadFileList[i]]);
		                    formData.append('files', fileList[uploadFileList[i]]);
		                }
		                //formData.append("user_id",userid);
		                formData.append("board_id",board_id);
		                console.log(formData.getAll("files"));
		                console.log(formData.get("user_id"));
		                $.ajax({
		                    url: "/uploadboard",
		                    data: formData,
		                    type: 'POST',
		                    enctype: 'multipart/form-data',
		                    processData: false,
		                    contentType: false,
		                    dataType: 'json',
		                    cache: false,
		                    success: function (result) {
		                       console.log(result);
		                       htmlImg();
		                       /* window.location.href = "/main.do"; */
		                    }
		                });
		            //}
		        }
		        
		        
			
			
		 }
			
						$(document).ready(function() {
							$("#option_1").on("click", function() {
								var favorite_id = $("#option_1").val();
								console.log(favorite_id);
								src_2 = $("#option_1").is(":checked") ? $(this).val() : "we" ;
								console.log(src_2);
								if(src_2 == $("#option_1").val()){
									favorite("insertfavboard.do",favorite_id);
								}else{
									favorite("deletefavboard.do",favorite_id);
								}
							})
							
							$("#option_2").on("click", function() {
								var favorite_id = $("#option_2").val();
								console.log(favorite_id);
								src_2 = $("#option_2").is(":checked") ? $(this).val() : "we" ;
								console.log(src_2);
								if(src_2 == $("#option_2").val()){
									favorite("insertfavboard.do",favorite_id);
								}else{
									favorite("deletefavboard.do",favorite_id);
								}
							})
							
							$("#option_3").on("click", function() {
								var favorite_id = $("#option_3").val();
								console.log(favorite_id);
								src_2 = $("#option_3").is(":checked") ? $(this).val() : "we" ;
								console.log(src_2);
								if(src_2 == $("#option_3").val()){
									favorite("insertfavboard.do",favorite_id);
								}else{
									favorite("deletefavboard.do",favorite_id);
								}
							})
							
							$("#option_4").on("click", function() {
								var favorite_id = $("#option_4").val();
								console.log(favorite_id);
								src_2 = $("#option_4").is(":checked") ? $(this).val() : "we" ;
								console.log(src_2);
								if(src_2 == $("#option_4").val()){
									favorite("insertfavboard.do",favorite_id);
								}else{
									favorite("deletefavboard.do",favorite_id);
								}
							})
							
							$("#option_5").on("click", function() {
								var favorite_id = $("#option_5").val();
								console.log(favorite_id);
								src_2 = $("#option_5").is(":checked") ? $(this).val() : "we" ;
								console.log(src_2);
								if(src_2 == $("#option_5").val()){
									favorite("insertfavboard.do",favorite_id);
								}else{
									favorite("deletefavboard.do",favorite_id);
								}
							})
							
							$("#option_6").on("click", function() {
								var favorite_id = $("#option_6").val();
								console.log(favorite_id);
								src_2 = $("#option_6").is(":checked") ? $(this).val() : "we" ;
								console.log(src_2);
								if(src_2 == $("#option_6").val()){
									favorite("insertfavboard.do",favorite_id);
								}else{
									favorite("deletefavboard.do",favorite_id);
								}
							})
							
							$("#option_7").on("click", function() {
								var favorite_id = $("#option_7").val();
								console.log(favorite_id);
								src_2 = $("#option_7").is(":checked") ? $(this).val() : "we" ;
								console.log(src_2);
								if(src_2 == $("#option_7").val()){
									favorite("insertfavboard.do",favorite_id);
								}else{
									favorite("deletefavboard.do",favorite_id);
								}
							})
							
							$("#option_8").on("click", function() {
								var favorite_id = $("#option_8").val();
								console.log(favorite_id);
								src_2 = $("#option_8").is(":checked") ? $(this).val() : "we" ;
								console.log(src_2);
								if(src_2 == $("#option_8").val()){
									favorite("insertfavboard.do",favorite_id);
								}else{
									favorite("deletefavboard.do",favorite_id);
								}
							})
							
						
							
							function favorite(act,favorite_id) {
								
								var board_id = $("#board_id").val();
								var sendData = {
									'favorite_id' : favorite_id,
									'board_id' : board_id
								};
								 $.ajax({
									url : act,
									data : sendData,
									success : function(data) {
										console.log("ㅎㅇ");
									}
								}) 
							}

						})
					</script>


</body>
</html>

