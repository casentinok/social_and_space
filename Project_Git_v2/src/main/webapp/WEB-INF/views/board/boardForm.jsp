
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
   pageContext.setAttribute("br", "<br/>");
   pageContext.setAttribute("cn", "\n");
%>

<!DOCTYPE html>

<html>

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
<link href="/css/base.css" rel="stylesheet">

<!-- CSS -->
<link href="/css/blog.css" rel="stylesheet">
<link href="/css/custom.css" rel="stylesheet">

<link href="/css/date_time_picker.css" rel="stylesheet">

<!-- Google web fonts -->
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700'
   rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Gochi+Hand'
   rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lato:300,400'
   rel='stylesheet' type='text/css'>
<link
   href="https://fonts.googleapis.com/css?family=Gamja+Flower&display=swap"
   rel="stylesheet" type='text/css'>
<script src="https://code.jquery.com/jquery-3.4.1.js"
   integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
   crossorigin="anonymous"></script>
<!--[if lt IE 9]>
      <script src="/js/html5shiv.min.js"></script>
      <script src="/js/respond.min.js"></script>
    <![endif]-->
<style>
.box_style_1 h3.inner{    margin: -30px -15px 20px -15px;border:none;}
.expose{padding:15px;}
</style>
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
   <%@include file="../include/header.jsp"%>
   <section id="search_container" class="social">
      
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
   <!-- End position -->
   
<script language="javascript">
		
		function validate() {
			
			var start = document.getElementById("start");
			var end = document.getElementById("end");
		    
		    
		       if(start.value=="") {
		           alert("시작 날짜를 입력해 주세요");
		           start.focus();
		           return false;
		       }

		       if(end.value=="") {
		           alert("마지막 날짜를 입력해 주세요 ");
		           end.focus();
		           return false;
		       }
		       
		     
		}
		       
 		 
		</script>
		
   <div class="container margin_60">
      <div class="row">
		
         <c:if test="${giver_board != null }">
         <c:if test="${ sessionScope.user_type != 1 }">
            <aside class="col-md-3">
               <!--                <p class="hidden-sm hidden-xs">
                  <a class="btn_map" data-toggle="collapse" href="#collapseMap"
                     aria-expanded="false" aria-controls="collapseMap">View on map</a>
               </p> -->
               <div class="box_style_1 expose flotingMenu">
                  <h3 class="inner">Check Availability</h3>
                  <form action="<%=request.getContextPath()%>/cart.do" onsubmit="return validate();" method="post">
                  <div class="row">
                     <div class="col-md-6 col-sm-6">
                        <div class="form-group">
                           <label><i class="icon-calendar-7"></i> Check in</label> 
                           <input
                              class="date-pick form-control today" data-date-format="yyyy-mm-dd"                              
                              data-date-start-date="${startdate}" 
                              data-date-end-date="${giver_board.booking_enddate}"
                              value="${startdate}"
                              id ="start"
                              name="checkin" type="text">
                        </div>
                     </div>
                     <div class="col-md-6 col-sm-6">
                        <div class="form-group">
                           <label><i class="icon-calendar-7"></i> Check out</label> <input
                              class="date-pick form-control" data-date-format="yyyy-mm-dd"
                              data-date-start-date="${startdate}" 
                              data-date-end-date="${giver_board.booking_enddate}"
                              id = "end"
                              value="${giver_board.booking_enddate}"
                              name="checkout"   type="text">
                        </div>
                     </div>                     
                  </div>
                  
                  <input type="hidden" name="addr" value="${giver_board.addr}">
                  <input type="hidden" name="people" value="${giver_board.people}">
                  <input type="hidden" name="board_id" value="${common_board.board_id}">
                  <button class="btn_full" type="submit">Check now</button>
         
                  </form>   
               </div>

            </aside>
            </c:if>
         </c:if>
         
         

         <c:if test="${giver_board == null }">
            <!-- <aside class="col-md-3">
               <br> <a class="btn_full" href="cart_hotel.html">Check now</a>
               <a class="btn_full_outline" href="#"><i class=" icon-heart"></i>
                  Add to whislist</a>
            </aside> -->
         </c:if>
         <c:if test="${giver_board != null}">
         	<c:if test="${sessionScope.user_type == 1}">
         	
         	<div class="col-md-12">
         	</c:if>
         	<c:if test="${sessionScope.user_type != 1 }">
        
			<div class="col-md-9">
			</c:if>
			
         </c:if>
         <c:if test="${giver_board == null}">
            <div class="col-md-12">
         </c:if>
         <div style="height: 30px; padding-top: 5px;">
            <a
               href="<%=request.getContextPath()%>/searchuser.do?user_id=${common_board.user_id}"
               id="access_link" class="dropdown-toggle">${common_board.user_id }</a>
         </div>
         <div class="box_style_1">
            <div class="post nopadding">
               <input type="hidden" value="${common_board.board_id}"
                  class="board_id"> <input type="hidden"
                  value="${sessionScope.user_id}" class="user_id">
               <%-- <img
                     src="<%=request.getContextPath()%>/upload/${common_board.thumb_img}"
                     alt="" class="img-responsive"> --%>
                     
               <div class="post_info clearfix">
                  <div class="post-left board_view">
                     <ul>
                        <c:forEach var="vo" items="${img}">
                           <li><img src="<%=request.getContextPath()%>/uploads/${vo}"></li>
                        </c:forEach>
                     </ul>
                  </div>
               </div>
               
               <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
               <c:if test="${sessionScope.user_id != null }">

                  <img id="like" src="img/${like}" width="20px" height="20px">
                  <span id="likecnt">${likecnt}</span>
               </c:if>


               <script>
                  $(document).ready(function() {
                     $("#like").on("click", function() {
                        var imgsrc = $(this).attr("src");
                        console.log(imgsrc);
                        if (imgsrc == "img/like1.png") {//1이 비어있는거            
                           $(this).attr("src", "img/like2.png");
                           like("insertLike.do", imgsrc);
                           likecnt("selectLikecnt.do");

                        } else {
                           $(this).attr("src", "img/like1.png");
                           like("removeLike.do", imgsrc);
                           likecnt("selectLikecnt.do");

                        }
                     })

                     function like(act, src) {
                        var board_id = $(".board_id").val();
                        var user_id = $(".user_id").val();
                        console.log(act);
                        var sendData = {
                           'board_id' : board_id,
                           'user_id' : user_id
                        };
                        $.ajax({
                           url : act,
                           type : 'post',
                           data : sendData,
                           success : function(data) {
                              likecnt("selectLikecnt.do");
                           }
                        })
                     }

                  })

                  function likecnt(act) {
                     var board_id = $(".board_id").val();
                     var user_id = $(".user_id").val();

                     var sendData = {
                        'board_id' : board_id,
                        'user_id' : user_id
                     };
                     $.ajax({
                        url : act,
                        type : 'post',
                        data : sendData,
                        success : function(data) {
                           //console.log("쿼리문 실행해서 값이 있으면 false, 없으면 true 입니다 : " + data);               
                           //changeImg(src);
                           console.log(data);
                           $("#likecnt").text(data);

                        }
                     })
                  }
               </script>

               <c:if test="${sessionScope.user_id != null }">
                  <c:if test="${giver_board != null }">
                     <img id="star" src="img/${star}" width="20px" height="20px"
                        align="right">
                  </c:if>
               </c:if>

               <script>
                  $(document).ready(function() {
                     $("#star").on("click", function() {
                        var imgsrc = $(this).attr("src");
                        console.log(imgsrc);
                        if (imgsrc == "img/star0.png") {//0이 비어있는거            
                           $(this).attr("src", "img/star1.png");
                           bookmark("insertmark.nn", imgsrc);
                           //console.log($(this).attr("src"));
                        } else {
                           $(this).attr("src", "img/star0.png");
                           bookmark("deletemark.nn", imgsrc);
                           //console.log($(this).attr("src"));
                        }
                     })

                     function bookmark(act, src) {
                        var board_id = $(".board_id").val();
                        var user_id = $(".user_id").val();

                        var sendData = {
                           'board_id' : board_id,
                           'user_id' : user_id
                        };
                        $.ajax({
                           url : act,
                           type : 'post',
                           data : sendData,
                           success : function(data) {
                              //console.log("쿼리문 실행해서 값이 있으면 false, 없으면 true 입니다 : " + data);               
                              //changeImg(src);

                           }
                        })
                     }

                  })
               </script>

               <div class="post_info clearfix">
                  <div class="post-left">
                     <ul>
                        <li><i class="icon-calendar-empty"></i>On <span>${common_board.reg_date }</span></li>
                     </ul>
                  </div>
                  <!--    <div class="post-right">
                        <i class="icon-comment"></i><a href="#"></a>Comments
                     </div> -->
               </div>
               
               <div class="post_info clearfix">
                  <div class="post-left">
                  <blockquote class="styled">
                     <c:forEach items="${favname}" var="fa">
                        <h4><p># ${fa}</p></h4>   
                     </c:forEach>
                     </blockquote>
                  </div>
                  
                  <!--    <div class="post-right">
                        <i class="icon-comment"></i><a href="#"></a>Comments
                     </div> -->
               </div>

               <blockquote class="styled">
                  <p>${fn:replace(common_board.board_content,cn,br) }</p>
                  <small>${common_board.user_id }</small>
               </blockquote>
            </div>
            <!-- end post -->
            <%--    <div class="post_info clearfix">
                     <div class="post-left board_view">
                        <ul>
                        <c:forEach var="vo" items="${img}">
                           <li> <img src="<%=request.getContextPath()%>/upload/${vo}"></li>
                        </c:forEach>
                        </ul>
                     </div>
                     <!--    <div class="post-right">
                        <i class="icon-comment"></i><a href="#"></a>Comments
                     </div> -->
                  </div> --%>
            <!-- giver page  -->
            <c:if test="${giver_board != null }">

               <!-- giver -->
               <div class="row">
                  <div class="col-md-12" id="single_tour_desc">
                     <div id="single_tour_feat">
                        <ul>
                           <c:if test='${giver_board.amenities1 != null}'>
                              <li><i class="icon_set_1_icon-22"></i>Pet allowed</li>
                           </c:if>

                           <c:if test='${giver_board.amenities1 == null}'>
                              <li><i class="icon_set_1_icon-22" style="color: #d1d1d1"></i>Pet
                                 allowed</li>
                           </c:if>
                           <c:if test='${giver_board.amenities2 != null}'>
                              <li><i class="icon_set_1_icon-86"></i>Free Wifi</li>
                           </c:if>
                           <c:if test='${giver_board.amenities2 == null}'>
                              <li><i class="icon_set_1_icon-86" style="color: #d1d1d1"></i>Free
                                 Wifi</li>
                           </c:if>
                           <c:if test='${giver_board.amenities3 != null}'>
                              <li><i class="icon_set_1_icon-13"></i>Accessibiliy</li>
                           </c:if>
                           <c:if test='${giver_board.amenities3 == null}'>
                              <li><i class="icon_set_1_icon-13" style="color: #d1d1d1"></i>Accessibiliy</li>
                           </c:if>
                           <c:if test='${giver_board.amenities4 != null}'>
                              <li><i class="icon_set_1_icon-27"></i>Parking</li>
                           </c:if>
                           <c:if test='${giver_board.amenities4 == null}'>
                              <li><i class="icon_set_1_icon-27" style="color: #d1d1d1"></i>Parking</li>
                           </c:if>


                        </ul>
                     </div>
                     <p class="visible-sm visible-xs">
                        <a class="btn_map" data-toggle="collapse" href="#collapseMap"
                           aria-expanded="false" aria-controls="collapseMap">View on
                           map</a>
                     </p>
                     

                     <hr>

                     <div class="row">
                        <div class="col-md-3">
                           <h4>
                              <span>Description</span>
                           </h4>
                        </div>
                        <div class="col-md-9">
                           <p class="line-center">${giver_board.amenities_etc}</p>
                           <!-- End row  -->
                        </div>
                        <!-- End col-md-9  -->

                     </div>
                     <hr>

                     <div class="row">
                        <div class="col-md-3">
                           <h4>
                              <span>Date</span>
                           </h4>
                        </div>
                        <div class="col-md-9">
                           <div>
                              <p class="line-center">${giver_board.booking_startdate}~
                                 ${giver_board.booking_enddate}</p>
                           </div>
                           <!-- End row  -->
                        </div>
                        <!-- End col-md-9  -->
                     </div>

                     <hr>

                     <div class="row">
                        <div class="col-md-3">
                           <h4>
                              <span>GUESTS</span>
                           </h4>
                        </div>
                        <div class="col-md-9">
                           <p class="line-center">${giver_board.people}</p>
                           <!-- End row  -->
                        </div>
                        <!-- End col-md-9  -->

                     </div>
                     <hr>
                     <div class="row">
                        <div class="col-md-3">
                           <h4>
                              <span>Address</span>
                           </h4>
                        </div>
                        <div class="col-md-9">
                           <p class="selectAddr line-center">${giver_board.addr}</p>
                        </div>
                        <div class="col-md-12 col-sm-12 cst-form-group">
                           <div id="map"
                              style="width: 100%; height: 380px; margin-top: 30px"></div>
                        </div>
                     </div>

                     <!--End row -->
                  </div>

                  <!--End row -->
               </div>

               <!-- giver -->
               <!-- End row  -->

            </c:if>
            <!--  작성자 본인일 때 글 수정 및 삭제 가능  -->
            <c:if test="${common_board.user_id eq sessionScope.user_id }">
               <br>
               <br>
               <form action="updateboard.do" method="post" style="display: inline">
                  <input type="hidden" value="${common_board.board_id }"
                     id="boardid" name="board_id"> <input type="hidden"
                     value="${common_board.user_id }" name="user_id"> <input
                     type="submit" value="MODIFY" class="btn_1">
               </form>
               <form action="deleteboard" method="post" style="display: inline">
                  <input type="hidden" value="${common_board.board_id }"
                     name="board_id"> <input type="hidden"
                     value="${common_board.user_id }" name="user_id"> <input
                     type="submit" value="DELETE" class="btn_1" id="deleteboard">
                  <%-- <span class="deleteboard"><a href="deleteboard?user_id=${common_board.user_id}&board_id=${common_board.board_id}">DELETE</a></span> --%>
               </form>
            </c:if>





         </div>

         <!-- end box_style_1 -->


         <!--       <script src="https://code.jquery.com/jquery-3.4.1.js"
               integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
               crossorigin="anonymous"></script> -->


         <div id="comments"></div>
         <!-- End Comments -->
         <c:if test="${sessionScope.user_id != null }">
            <h4>Leave a comment</h4>


            <input class="form-control style_2" id="c_uid" type="hidden"
               name="user_id" value="${sessionScope.user_id }">
            <input class="form-control style_2" id="c_bid" type="hidden"
               name="board_id" value="${common_board.board_id }">
            <c:if test="${giver_board == null }">
               <input class="form-control style_2" id="c_cs" type="hidden"
                  name="comment_star" value="1">
            </c:if>

            <c:if test="${giver_board != null }">
               <input class="form-control style_2" id="c_cs" type="hidden"
                  name="comment_star" value="1">
            </c:if>



            <div class="form-group">
               <textarea name="content" id="c_content"
                  class="form-control style_2" style="height: 150px;"
                  placeholder="Message"></textarea>
            </div>
            <div class="form-group">
               <!-- <input type="reset" class="btn_1" value="Clear form" />  -->

               <input type="button" class="btn_1" value="Post Comment"
                  id="comment_submit" />
            </div>
         </c:if>

         <c:if test="${sessionScope.user_id == null }">
            <h4>로그인이 필요합니다</h4>
         </c:if>

      </div>
      <!-- End col-md-9-->

   </div>
   <!-- End row-->
   </div>
   <!-- End container -->

   <%@include file="../include/footer.jsp"%>

   <div id="toTop"></div>
   <!-- Back to top button -->

   <!-- Common scripts -->
   <script src="/js/jquery-1.11.2.min.js"></script>
   <script src="/js/common_scripts_min.js"></script>
   <script src="/js/functions.js"></script>




   <!-- Specific scripts -->
   <script src="/js/icheck.js"></script>
   <script>
      $('#deleteboard').click(function() {
         alert("글이 삭제되면 댓글, 좋아요, 북마크 등 전부 삭제됩니다 . ")
      });
      $('input').iCheck({
         checkboxClass : 'icheckbox_square-grey',
         radioClass : 'iradio_square-grey'
      });

      $('.starRev span').click(function() {
         $(this).parent().children('span').removeClass('on');
         $(this).addClass('on').prevAll('span').addClass('on');
         return false;
      });
   </script>
   <!-- Date and time pickers -->
   <script src="js/jquery.sliderPro.min.js"></script>
   <script type="text/javascript">
      $(".deleteboard").click(function() {
         if (confirm("글을 삭제 하시겠습니까?") == true) {
            return true;
         } else {
            return false;
         }

      })
      $(document).ready(function($) {
         $('#Img_carousel').sliderPro({
            width : 960,
            height : 500,
            fade : true,
            arrows : true,
            buttons : false,
            fullScreen : false,
            smallSize : 500,
            startSlide : 0,
            mediumSize : 1000,
            largeSize : 3000,
            thumbnailArrows : true,
            autoplay : false
         });
      });
   </script>

   <!-- Date and time pickers -->
   <script src="/js/bootstrap-datepicker.js"></script>
   <!-- <script src='https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.0/jquery-ui.min.js'></script> -->
   <script>
	var data = [];
	
	$(document).ready(function() {
		//var floatPosition = parseInt($(".flotingMenu").css('top'));

		$(window).scroll(function() {
			// 현재 스크롤 위치를 가져온다.
			var scrollTop = $(window).scrollTop();
			if(scrollTop >= 300){
				var floatPosition = parseInt($(".flotingMenu").css('top'));
				$(".flotingMenu").stop().animate({"top":scrollTop-200+"px"},1000);				
			}else{
				$(".flotingM.enu").stop().animate({"top":"0"},1000);
				//$(".flotingMenu").css({"position":"absolute","top":"0"});
			}
			/* 애니메이션 없이 바로 따라감
			 $("#floatMenu").css('top', newPosition);
			 */

			/* $(".flotingMenu").stop().animate({
				"top" : newPosition
			}, 500); */

		});

	});
	
	
	 <c:forEach items="${bookday}" var="bookday">
	  data.push('${bookday}');
	  </c:forEach>

	  console.log(data);
	  
	  
	  $('input.date-pick').datepicker({
         // datesDisabled: arrNumber.concat(arrNumber2)    
          datesDisabled: data,
          zIndexOffset : 100
    });
      
      $('#sandbox-container .input-daterange').datepicker({
          keyboardNavigation: false,
          forceParse: false,
          datesDisabled: ['06/06/2019', '06/21/2019']
      });
      //$('input.date-pick').datepicker('setDate', 'today');
   </script>
   <!-- Map -->
   <!--    <script src="http://maps.googleapis.com/maps/api/js"></script>
   <script src="/js/map.js"></script> -->
   <!-- <script src="/js/infobox.js"></script> -->
   <!-- Carousel -->
   <!-- <script src="/js/owl.carousel.min.js"></script>
   <script>
      $(document).ready(function() {
         $(".carousel").owlCarousel({
            items : 4,
            itemsDesktop : [ 1199, 3 ],
            itemsDesktopSmall : [ 979, 3 ]
         });
      });
   </script> -->

   <!--Review modal validation -->
   <!-- <script src="/assets/validate.js"></script> -->
   <script>
      window.onload = function() {
         $(document).on('click', ".btn_delete", function() {
            console.log(this + " : dsfdasdfd");

            var thisCmtId = $(this).attr("data-cid");
            commentdelete(thisCmtId);
            return false;

         });
         commentList(
   <%=request.getParameter("board_id")%>
      );

         $("#comment_submit").on('click', function() {
            commentInsert();
         });

         function commentdelete(cmt_id) {
            var cmtdata = {
               "comment_id" : cmt_id
            };
            $.ajax({
               type : "POST",
               url : "commentdelete",
               data : cmtdata,
               error : function(err) {
                  console.log(err);
               },
               success : function() {
                  commentList(
   <%=request.getParameter("board_id")%>
      );
               }
            })
         }
         ;

         function commentInsert() {
            var cmtdata = {
               "user_id" : $("#c_uid").val(),
               "board_id" : $("#c_bid").val(),
               "comment_star" : $("#c_cs").val(),
               "content" : $("#c_content").val()
            };
            $.ajax({
               type : "POST",
               url : "insertcomment.do",
               data : cmtdata,
               error : function(err) {
                  console.log(err);
               },
               success : function() {
                  //////
                  $("#c_content").val("");
                  commentList(
   <%=request.getParameter("board_id")%>
      );

               }
            })
         }
         ;

         function commentList(num) {
            $.ajax({
               type : "GET",
               url : "commentlistboardid.do",
               data : {
                  board_id : num
               },
               error : function(err) {
                  console.log(err);
               },
               success : function(data) {
                  //console.log(data);
                  $("#comments").html(data);
               }
            });
         }

      }
   </script>
   
   <!-- <script type="text/javascript"
      src="http://dapi.kakao.com/v2/maps/sdk.js?appkey=b71c545210111992d3f4b64ae0245b27&libraries=services"></script> -->
      <script type="text/javascript"
      src="http://dapi.kakao.com/v2/maps/sdk.js?appkey=2b83f513db866294e637be33235d3d0d&libraries=services"></script>
   <script>
      var address = $(".selectAddr").text();

      loadMap(address);
      function loadMap(address) {
         //address = document.getElementById('address').value;
         var mapContainer = document.getElementById('map'), mapOption = {
            center : new daum.maps.LatLng(33.450701, 126.570667),
            level : 4
         };
         var map = new daum.maps.Map(mapContainer, mapOption);
         var geocoder = new daum.maps.services.Geocoder();
         geocoder
               .addressSearch(
                     address,
                     function(result, status) {
                        if (status === daum.maps.services.Status.OK) {
                           var coords = new daum.maps.LatLng(
                                 result[0].y, result[0].x);
                           var marker = new daum.maps.Marker({
                              map : map,
                              position : coords
                           });

                           var infowindow = new daum.maps.InfoWindow(
                                 {
                                    content : '<div id="removeBox" style="width:150px;text-align:center;padding:6px 0;"></div>'
                                 });
                           infowindow.open(map, marker);
                           map.setCenter(coords);
                           $("#removeBox").ready(function() {
                              var rmvbox = $("#removeBox").parent();
                              rmvbox.parent().remove();
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
   </script>
</body>
</html>