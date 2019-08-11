
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" type="image/x-icon"
	href="img/apple-touch-icon-57x57-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="72x72"
	href="img/apple-touch-icon-72x72-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="114x114"
	href="img/apple-touch-icon-114x114-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="144x144"
	href="img/apple-touch-icon-144x144-precomposed.png">

<!-- CSS -->
<link href="css/base.css" rel="stylesheet">
<link href="css/custom.css" rel="stylesheet">
<!-- SPECIFIC CSS -->
<link href="css/admin.css" rel="stylesheet">
<link href="css/jquery.switch.css" rel="stylesheet">

<!-- Google web fonts -->
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Gochi+Hand'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lato:300,400'
	rel='stylesheet' type='text/css'>

<!--[if lt IE 9]>
      <script src="js/html5shiv.min.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
<script>
	$(function() {
		var user_id = $(".uid").text()
		//var user_id = ${vo.user_id}+"";
		var currentPage = 1;
		userBoardList(user_id,currentPage);
		
		function userBoardList(user_id,currentPage) {
			$.ajax({
				type : "GET",
				url : "<%=request.getContextPath()%>/board/ulist.do",
				data : {
					"user_id" : user_id,
					"page" : currentPage
				},
				error : function(err) {
					console.log(err);
				},
				success : function(data) {
					$("#listWrap").append(data);
				}
			});
		}
		
		$(".btn_moreView").click(function(){
			++currentPage;
			console.log(user_id);
			console.log(currentPage);
			userBoardList(user_id, currentPage);
			return false;
		})

	})
</script>

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
	<%@include file="include/header.jsp"%>

	<!-- end header -------------------- -->
	<section id="search_container">
		<section class="parallax-window" data-parallax="scroll"
			data-image-src="img/admin_top.jpg" data-natural-width="1400"
			data-natural-height="470">
			<div class="parallax-content-1">
				<div class="animated fadeInDown">
					<c:if test="${sessionScope.user_id eq vo.user_id}">
						<h1>
							Hello <span class="idid">${sessionScope.user_id }</span>!
						</h1>
					</c:if>
					<c:if test="${sessionScope.user_id ne vo.user_id}">
						<h1>${vo.user_id}'sProfile</h1>
					</c:if>
				</div>
			</div>
		</section>
	</section>
	<!-- End section -->

	<div id="position">
		<div class="container">
			<ul>
				<li><a href="#">Home</a></li>
				<li><a href="#">Category</a></li>
				<li>Page active</li>
			</ul>
		</div>
	</div>
	<!-- End Position -->

	<div class="margin_60 container">
		<div id="tabs" class="tabs">
			<nav>
				<ul>
					<li><a href="#section-1" class="icon-profile"><span>Profile</span></a></li>
					<li><a href="#section-2"><img src="img/star1.png"
							width="20px" height="20px"
							style="margin-right: 5px; margin-bottom: 5px;"><span>Bookmark</span></a></li>
					<li><a href="#section-3"><img src="img/calendar.png"
							width="20px" height="20px"
							style="margin-right: 7px; margin-bottom: 2px;"><span>Booking</span></a></li>
				</ul>
			</nav>

			<div class="content">

				<section id="section-2">
					<div class="row">
						<div class="col-md-6 col-sm-6">
							<h4>
								<span class="uid">${vo.user_id}</span> profile
							</h4>

							<c:if test="${sessionScope.user_id ne vo.user_id}">
								<ul id="profile_summary">
									<li>Username <span>${vo.user_name}</span></li>
									<li>Phone number <span>${vo.tel}</span></li>
									<li>email address<span>${vo.email}</span></li>
								</ul>
							</c:if>

							<c:if test="${sessionScope.user_id eq vo.user_id}">
								<ul id="profile_summary">
									<li>USER_ID <span>${vo.user_id}</span></li>
									<li>Username <span>${vo.user_name}</span></li>
									<li>Phone number <span>${vo.tel}</span></li>
									<li>email address<span>${vo.email}</span></li>
								</ul>
							</c:if>
						</div>

						<div class="col-md-6 col-sm-6">
							<img src="/uploads/${vo.thumb_nail}" alt=""
								class="img-responsive styled profile_pic">
							<!--	</p>-->
						</div>
					</div>
					<!-- End row -->
					<c:if test="${sessionScope.user_id eq vo.user_id}">
					<hr>
					<div class="row">
						<div class="col-md-6 col-sm-6">
							<div>
								<br>
								<h4>UPLOAD YOUR PROFILE</h4>
								<div class="dropzone upload-drop-zone user_profile">
									<%-- <input type="hidden" name="user_id" value="${vo.user_id }"> --%>
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
								<input type="file" id="file0" class="hidden" name="files">
							</div>
							<div class="row">
								<div class="col-md-12 col-sm-12 align-fix">
									<button class="btn_1 green" id="js-upload-submit">Upload
										file</button>
								</div>
							</div>
						</div>



						<div class="col-md-6 col-sm-6">
							<form action="/update.do" method="post"
								onsubmit="return validate();">
								<br>
								<div class="row">
									<div class="col-md-12">
										<h4>Edit profile</h4>
									</div>
									<input type="hidden" id="user_id" name="user_id"
										value="${vo.user_id}">

									<div class="col-md-12 col-sm-12">
										<div class="form-group">
											<label>NAME</label> <input class="form-control"
												name="user_name" id="user_name" type="text"
												value="${vo.user_name}">
										</div>
									</div>
									<div class="col-md-12 col-sm-12">
										<div class="form-group">
											<label>PHONE NUMBER</label> <input class="form-control"
												name="tel" id="tel" type="text" value="${vo.tel}">
										</div>
									</div>
								</div>
								<!-- End row -->

								<div class="row">
									<div class="col-md-12 col-sm-12">
										<div class="form-group">
											<label>PASSWORD</label> <input class="form-control"
												name="u_password" id="password" type="password"
												value="${vo.u_password}" placeholder="바꿀 비밀번호 혹은 기존 비밀번호 입력"
												id="pw">

										</div>
									</div>
									<div class="col-md-12 col-sm-12">
										<div class="form-group">
											<label>EMAIL<small></small></label> <input
												class="form-control" name="email" id="email" type="text"
												value="${vo.email}">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12 col-sm-12 align-fix">

										<button type="submit" class="btn_1 green">Update
											Profile</button>
									</div>
								</div>
							</form>
						</div>
					</div>
					<!-- End row -->
					</c:if>
					<hr>

					<div>
						<h4>
							<span>${vo.user_id}</span>'s POST
						</h4>
						<div id="listWrap" class="row"></div>

					</div>
						<div class="row">
						<div class=" col-md-12 col-sm-12 align-fix cnt">
					<button class="btn_1 btn_moreView" style="color: white">
						<i class="icon-up-hand"></i>SHOW MORE
					</button>
					</div></div>
					<c:if test="${sessionScope.user_id eq vo.user_id}">
						<div class="divider"></div>
						<br>
						<div class="row">
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
							<!--  -->

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
							<script>
						$(document).ready(function() {
							$("#option_1").on("click", function() {
								var favorite_id = $("#option_1").val();
								console.log(favorite_id);
								src_2 = $("#option_1").is(":checked") ? $(this).val() : "we" ;
								console.log(src_2);
								if(src_2 == $("#option_1").val()){
									favorite("insertfavoriteuser.do",favorite_id);
								}else{
									favorite("deletefavoriteuser.do",favorite_id);
								}
							})
							
							$("#option_2").on("click", function() {
								var favorite_id = $("#option_2").val();
								console.log(favorite_id);
								src_2 = $("#option_2").is(":checked") ? $(this).val() : "we" ;
								console.log(src_2);
								if(src_2 == $("#option_2").val()){
									favorite("insertfavoriteuser.do",favorite_id);
								}else{
									favorite("deletefavoriteuser.do",favorite_id);
								}
							})
							
							$("#option_3").on("click", function() {
								var favorite_id = $("#option_3").val();
								console.log(favorite_id);
								src_2 = $("#option_3").is(":checked") ? $(this).val() : "we" ;
								console.log(src_2);
								if(src_2 == $("#option_3").val()){
									favorite("insertfavoriteuser.do",favorite_id);
								}else{
									favorite("deletefavoriteuser.do",favorite_id);
								}
							})
							
							$("#option_4").on("click", function() {
								var favorite_id = $("#option_4").val();
								console.log(favorite_id);
								src_2 = $("#option_4").is(":checked") ? $(this).val() : "we" ;
								console.log(src_2);
								if(src_2 == $("#option_4").val()){
									favorite("insertfavoriteuser.do",favorite_id);
								}else{
									favorite("deletefavoriteuser.do",favorite_id);
								}
							})
							
							$("#option_5").on("click", function() {
								var favorite_id = $("#option_5").val();
								console.log(favorite_id);
								src_2 = $("#option_5").is(":checked") ? $(this).val() : "we" ;
								console.log(src_2);
								if(src_2 == $("#option_5").val()){
									favorite("insertfavoriteuser.do",favorite_id);
								}else{
									favorite("deletefavoriteuser.do",favorite_id);
								}
							})
							
							$("#option_6").on("click", function() {
								var favorite_id = $("#option_6").val();
								console.log(favorite_id);
								src_2 = $("#option_6").is(":checked") ? $(this).val() : "we" ;
								console.log(src_2);
								if(src_2 == $("#option_6").val()){
									favorite("insertfavoriteuser.do",favorite_id);
								}else{
									favorite("deletefavoriteuser.do",favorite_id);
								}
							})
							
							$("#option_7").on("click", function() {
								var favorite_id = $("#option_7").val();
								console.log(favorite_id);
								src_2 = $("#option_7").is(":checked") ? $(this).val() : "we" ;
								console.log(src_2);
								if(src_2 == $("#option_7").val()){
									favorite("insertfavoriteuser.do",favorite_id);
								}else{
									favorite("deletefavoriteuser.do",favorite_id);
								}
							})
							
							$("#option_8").on("click", function() {
								var favorite_id = $("#option_8").val();
								console.log(favorite_id);
								src_2 = $("#option_8").is(":checked") ? $(this).val() : "we" ;
								console.log(src_2);
								if(src_2 == $("#option_8").val()){
									favorite("insertfavoriteuser.do",favorite_id);
								}else{
									favorite("deletefavoriteuser.do",favorite_id);
								}
							})
							
						
							
							function favorite(act,favorite_id) {
								
								var user_id = $("#user_id").val();
								var sendData = {
									'favorite_id' : favorite_id,
									'user_id' : user_id
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
						</div>
						<!-- End row -->
						
						<!-- Hidden on mobiles -->
						<div class="hidden-xs">


							<!-- thumbnail -->

							<!-- End section 4 -->
							<script>

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
						            	$(".thumb_list").remove();
						                //selectFile(e.target.files);
						                //console.log(e.target.files);
						                $(".box_icon_wrap").css('display','none');						                
						                
						                	return setTimeout(function (){
							                    selectFile(e.target.files);
							                },50)	
						            });
									$('#js-upload-submit').click(function(){
										var user_id = $("input[name='user_id']").val();
										uploadFile(user_id);
									});
						        }); // end loadScript
						        
						     // fileDrop
						        function fileDrop() {
						            var dropzone = $(".dropzone");
						            dropzone.on('change', function (e) {
						               // console.log("changed : " + e);
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
						                var files = e.originalEvent.dataTransfer.files[0];
						                //selectFile
						                selectFile(files);
						            });
						        }// end fileDrop
						        
						        //selectFile
						        function selectFile(files) {
						            if (files != null) {
						                if (files.length < 1) {
						                    alert("폴더 업로드 불가");
						                    return;
						                }
						                // 다중
						                for (var i = 0; i < files.length; i++) {
						                    // 파일 이름
						                   var fileName = files[i].name;
						                   // var fileName = files[0].name;
						                    
						                    var fileNameArr = fileName.split("\.");
						                    // 확장자
						                    var ext = fileNameArr[fileNameArr.length - 1];
						                    // 파일 사이즈(단위 :MB)
						                    var fileSize = files[0].size / 1024 / 1024;
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
						                        //totalFileSize = fileSize;
						                        // 파일 배열에 넣기
						                        fileList[fileIndex] = files[i];
						                        
						                        // 파일 사이즈 배열에 넣기
						                        fileSizeList[fileIndex] = fileSize;                        
						                        var reader = new FileReader();
						                        var temp = files[0];
						                      
						                        reader.onloadend = (function (temp) {
						                           return function(){
						                        	   img_html = '<li class="thumb_list col-md-12 col-lg-12 col-sm-12 thumb_img_' + fileIndex + '"><img class="prvImg" src="' + this.result + '"></li>';
						                               $(".imgs_wrap>ul").append(img_html);
						                               setTimeout(function(){
						                                  $(".thumb_list .prvImg").each(function(){
						                                     var listW = $(".thumb_list").width();
						                          
						                                     var imgW = $(this).width();
						                                     var imgH = $(this).height();
						                          
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
						                        
						                      
						                        // // 파일 번호 증가
						                        fileIndex++;
						                    }
						                }
						                //console.log(fileList);                
						            } else {
						                alert("ERROR");
						            }// end if
						        }// end sendFile
						    
						      	// deleteFile
						        function deleteFile(fIndex) {
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
						        }//end deleteFile
						        
						        // UplodaFile
						        function uploadFile(user_id) {
						            // 등록할 파일 리스트
						            var uploadFileList = Object.keys(fileList);
						            // 파일이 있는지 체크
						            if (uploadFileList.length == 0) {
						                // 파일등록 경고창
						                alert("등록한 이미지 파일이 없습니다.");
						                return ;
						            }// end if

						            // 용량을 500MB를 넘을 경우 업로드 불가
						            if (totalFileSize > maxUploadSize) {
						                // 파일 사이즈 초과 경고창
						                alert("총 용량 초과\n총 업로드 가능 용량 : " + maxUploadSize + " MB");
						                return;
						            }// end if
						            
						            // 등록할 파일 리스트를 formData로 데이터 입력
						            //var form = $('#boardWriteForm');                
						            var formData = new FormData();
						            for (var i = 0; i < uploadFileList.length; i++) {
						               console.log(fileList[uploadFileList[i]]);
						                formData.append('files', fileList[uploadFileList[i]]);
						            }
						            formData.append("user_id",user_id);
						            // ajax
						            $.ajax({
						                url: "/uploaduser",
						                data: formData,
						                type: 'POST',
						                enctype: 'multipart/form-data',
						                processData: false,
						                contentType: false,
						                dataType: 'json',
						                cache: false,
						                error: function(err){
						                	console.log(err);
						                },
						                success: function (result) {			
						                	alert("프로필 사진이 변경되었습니다.");
						                   $(".profile_pic").attr("src","/uploads/"+result["savedname"]);
						                  // window.location.href = "/main.do";
						                }
						            });// end ajax            
						        }// end UploadFile
							</script>
							<div></div>


							<form action="/deleteuser.do" method="post">
								<input type="hidden" name="user_id" value="${vo.user_id }">
								<div class="row">
									<div class="col-md-12 col-sm-12 align-fix">
										<button type="submit" class="btn_1 green">User Leave</button>
									</div>
								</div>
							</form>

						</div>
						<br>
						<br>
					</c:if>

				</section>

				<section id="section-2">
					<div class="row">

						<div name="bookmark" id="bookmarklist"></div>


					</div>
					<!-- End row -->
					<div class="row">
						<div class=" col-md-12 col-sm-12 align-fix cnt">
							<button class="btn_1 btn_moreView2" style="color: white">
								<i class="icon-up-hand"></i>SHOW MORE
							</button>
						</div>
					</div>
				</section>

				<section id="section-3">
					<div class="row">
						<c:if test="${vo.user_type == 0}">
							<div name="booking" id="tbookingList"></div>
						</c:if>
						<c:if test="${vo.user_type == 1}">
							<div name="booking" id="gbookingList"></div>
						</c:if>
					</div>
					<!-- End row -->
					<!-- <button class="btn_1 btn_moreView2" style="color: white">
						<i class="icon-up-hand"></i>SHOW MORE
					</button> -->

				</section>
				<!-- End section 3 -->

				<!-- End section 4 -->

			</div>
			<!-- End content -->

		</div>
		<!-- End tabs -->

	</div>
	<!-- end container -->

	<%@include file="include/footer.jsp"%>


	<!-- End footer -->

	<div id="toTop"></div>
	<!-- Back to top button -->

	<!-- Common scripts -->
	<script src="js/jquery-1.11.2.min.js"></script>

	<script src="js/common_scripts_min.js"></script>
	<script src="js/functions.js"></script>

	<!-- Specific scripts -->
	<script src="js/pw_strenght.js"></script>
	<!-- <script>new CBPFWTabs( document.getElementById( 'tabs' ) );</script> -->
	<script>
		$('.wishlist_close_admin').on('click', function(c) {
			$(this).parent().parent().parent().fadeOut('slow', function(c) {
			});
		});

		function validate() {

			if ($("#password").val() == "") {
				alert("비밀번호를 입력하세요 ! ");
				return false;
			}
			if ($("#email").val() == "") {
				alert("이메일을 입력해주세요");
				return false;
			}
			if ($("#user_name").val() == "") {
				alert("이름을 입력하세요 ! ");
				return false;
			}
			if ($("#tel").val() == "") {
				alert("전화번호를 입력하세요 ! ");
				return false;
			}
			if (!/^[a-zA-Z0-9]{4,12}$/.test($("#password").val())) {
				alert("패스워드는 4~12자의 영문 대소문자와 숫자로만 입력");
				return false;
			}

			alert("정보수정이 완료되었습니다.");

		}
	</script>
	<script src="js/tabs.js"></script>
	<script>
		new CBPFWTabs(document.getElementById('tabs'));
	</script>
	<script>
	/* $(document).on('click',"#section-2",function(){
		bookmarkList(aa);
	}) */
	
	$(function() {

		var stpage = 1;
		var user_id = $(".uid").text()
		//var user_id = ${vo.user_id}+"";
		bookmarkList(user_id,stpage);
		
		function bookmarkList(user_id,page) {
			$.ajax({
				type : "GET",
				url : "<%=request.getContextPath()%>/bookmarklist.nn",
				data : {
					"user_id" : user_id,
					"page" : page
				},
				error : function(err) {
					console.log(err);
				},
				success : function(data) {
					$("#bookmarklist").append(data);
				}
			});
		}
		
		$(".btn_moreView2").click(function(){
			++stpage;
			console.log(user_id);
			console.log(stpage);
			bookmarkList(user_id, stpage);
			return false;
		})
		

	})
	</script>


	<script src="js/tabs.js"></script>
	<script>
		new CBPFWTabs(document.getElementById('tabs'));
	</script>
	<script>
	
	

<%-- //var user_type= ${vo.user_type}

	$(document).on('click',"#section-2",function(){
		bookingList(aa);
	})
	$(function() {  
		
		bookingList(1,append);
		function bookingList(currentPage,predi) {
			var user_id = ${sessionScope.user_id};
			$.ajax({
				type : "GET",
				url : "<%=request.getContextPath()%>/tbookingList",
				data : {
					page : currentPage,
					"user_id" : user_id
				},
				error : function(err) {
					console.log(err);
				},
				success : function(data) {
					addData(predi,data,"tbookingList");
					
				}
			});
		}
		} --%>


	 
 
	   $(function() {
	      
	      var stpage = 1;
	      var user_id = $(".uid").text()
	      tbookingList(user_id,stpage);
	      
	      function tbookingList(user_id,page) {
	         $.ajax({
	            type : "GET",
	            url : "<%=request.getContextPath()%>/tbookingList",
	            data : {
	               "user_id" : user_id,
	               "page" : page
	            },
	            error : function(err) {
	               console.log(err);
	            },
	            success : function(data) {
	               $("#tbookingList").append(data);
	            }
	         });
	      }
	      
	      $(".btn_moreView2").click(function(){
	         ++stpage;
	         console.log(user_id);
	         console.log(stpage);
	         bookmarkList(user_id, stpage);
	         return false;
	      })
	      

	   })

	   $(function() {
	      
	      var stpage = 1;
	      var user_id = $(".uid").text()
	      gbookingList(user_id,stpage);
	      
	      function gbookingList(user_id,page) {
	         $.ajax({
	            type : "GET",
	            url : "<%=request.getContextPath()%>/gbookingList",
	            data : {
	               "user_id" : user_id,
	               "page" : page
	            },
	            error : function(err) {
	               console.log(err);
	            },
	            success : function(data) {
	               $("#gbookingList").append(data);
	            }
	         });
	      }
	      
	      $(".btn_moreView2").click(function(){
	         ++stpage;
	         console.log(user_id);
	         console.log(stpage);
	         bookmarkList(user_id, stpage);
	         return false;
	      })
	      

	   })

	</script>
</body>
</html>