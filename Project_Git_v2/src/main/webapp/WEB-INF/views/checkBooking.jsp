<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!DOCTYPE html>
<!--[if IE 8]><html class="ie ie8"> <![endif]-->
<!--[if IE 9]><html class="ie ie9"> <![endif]-->
<!--[if gt IE 9]><!-->	<html> <!--<![endif]-->
 <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="template, tour template, city tours, city tour, tours tickets, transfers, travel, travel template" />
    <meta name="description" content="Citytours - Premium site template for city tours agencies, transfers and tickets.">
    <meta name="author" content="Ansonika">
    <title>SOCIAL N SPACE</title>
    
    <!-- Favicons-->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">

    <!-- CSS -->
    <link href="css/base.css" rel="stylesheet">
    
    <!-- Radio and check inputs -->
    <link href="css/skins/square/grey.css" rel="stylesheet">
	
    <!-- Google web fonts -->
   <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
   <link href='http://fonts.googleapis.com/css?family=Gochi+Hand' rel='stylesheet' type='text/css'>
   <link href='http://fonts.googleapis.com/css?family=Lato:300,400' rel='stylesheet' type='text/css'>
        
    <!--[if lt IE 9]>
      <script src="js/html5shiv.min.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
        
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
    <%@include file="./include/header.jsp"%>
 	<section id="search_container" class="social"> 
    
   
	<div class="intro_title animated fadeInDown">
           <h1 align="center">Place your order</h1>
            <div class="bs-wizard">
  			
                <div class="col-xs-6 bs-wizard-step complete">
                  <div class="text-center bs-wizard-stepnum">Your cart</div>
                  <div class="progress"><div class="progress-bar"></div></div>
                  <a href="cart.html" class="bs-wizard-dot"></a>
                </div>
                               
                
            
              <div class="col-xs-6 bs-wizard-step complete">
                  <div class="text-center bs-wizard-stepnum">Finish!</div>
                  <div class="progress"><div class="progress-bar"></div></div>
                  <a href="#" class="bs-wizard-dot"></a>
                </div>  
                   
		</div>  <!-- End bs-wizard --> 
    </div>   <!-- End intro-title --> 
</section><!-- End Section hero_2 -->
    
    <div id="position">
    	<div class="container">
                	<ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Category</a></li>
                    <li>Page active</li>
                    </ul>
        </div>
    </div><!-- End position -->
    
    <div class="container margin_60">
	<div class="row">
		<div class="col-md-8 add_bottom_15">
        
			<div class="form_title">
				<h3><strong><i class="icon-tag-1"></i></strong>Booking summary</h3>
				
			</div>
			<div class="step">
				<table class="table confirm"  id="countit">
				<thead>
				<tr>
					<th colspan="2">
						
					</th>
				</tr>
				</thead>
				<tbody>
				<tr>
					<td>
						<strong>address</strong>
					</td>
					<td>
						${bookingListVO.addr}
					</td>
				</tr>
				<tr>
					<td>
						<strong>To</strong>
					</td>
					<td>
						${sessionScope.user_id}
					</td>
				</tr>
				<tr>
					<td>
						<strong>check in</strong>
					</td>
					<td>
						${bookingListVO.booking_startdate}
					</td>
				</tr>
				<tr>
					<td>
						<strong>check out</strong>
					</td>
					<td>
						${bookingListVO.booking_enddate}
					</td>
				</tr>
				
				
				<tr>
					<td>
						<strong>Per day</strong>
					</td>
					<td>
						$<span class="count-me">80</span>
					</td>
				</tr>
				
				<c:if test="${bookingListVO.option1 != 0 }">
				<tr>
					<td>
						<strong>빔프로젝터</strong>
					</td>
					<td>
						$<span class="count-me">34</span>
					</td>
				</tr>
				</c:if>
				
				<c:if test="${bookingListVO.option2 != 0 }">
				<tr>
					<td>
						<strong>플라워 장식</strong>
					</td>
					<td>
						$<span class="count-me">24</span>
					</td>
				</tr>
				</c:if>
				
				<c:if test="${bookingListVO.option3 != 0 }">
				<tr>
					<td>
						<strong>테이블</strong>
					</td>
					<td>
						$<span class="count-me">26</span>
					</td>
				</tr>
				</c:if>
				
				<c:if test="${bookingListVO.option4 != 0 }">
				<tr>
					<td>
						<strong>의자</strong>
					</td>
					<td>
						$<span class="count-me">12</span>
					</td>
				</tr>
				</c:if>
				
				</tbody>
				</tbody>
				</table>
				
			</div><!--End step -->
		</div><!--End col-md-8 -->
        
		<aside class="col-md-4">
		<div class="box_style_1">
			<h3 class="inner">Thank you!</h3>
			<p>
				이제 서로 이야기를 나누십시오
			</p>
			<hr>
			<a class="btn_full_outline" href="resources/html/index.html">message로 이동하기</a>
		</div>
		<div class="box_style_4">
			<i class="icon_set_1_icon-89"></i>
			<h4>Have <span>questions?</span></h4>
			<a href="tel://004542344599" class="phone">010 2733 5696</a>
			<small>Monday to Friday 9.00am - 6.00pm</small>
		</div>
		</aside>
        
	</div><!--End row -->
</div><!--End container -->

<footer>
      <div class="container">
         <div class="row">
            <div class="col-md-4 col-sm-3">
               <h3>Need help?</h3>
               <a href="tel://004542344599" id="phone">010 2733 5696</a> <a
                  href="mailto:help@citytours.com" id="email_footer">kyungohhelp@gmail.com</a>
            </div>
            <div class="col-md-3 col-sm-3">
               <h3>About</h3>
               <ul>
                  <li><a href="#">About us</a></li>
                  <li><a href="#">경오</a></li>
                  <li><a href="#">설아</a></li>
                  <li><a href="#">태성</a></li>
                  <li><a href="#">푸름</a></li>
               </ul>
            </div>
         
         </div>
      
      </div>
      <!-- End container -->
   </footer>
   <!-- End footer -->
<div id="toTop"></div><!-- Back to top button -->

<div id="toTop"></div>
<!-- Jquery -->
<script src="js/jquery-1.11.2.min.js"></script>
<script src="js/common_scripts_min.js"></script>
<script src="js/functions.js"></script>

<script src="js/icheck.js"></script>
<script>  
$('input').iCheck({
   checkboxClass: 'icheckbox_square-grey',
   radioClass: 'iradio_square-grey'
 });
 </script>
 <script>
            var tds = document.getElementById('countit').getElementsByTagName('span');
            var sum = 0;
            for(var i = 0; i < tds.length; i ++) {
                if(tds[i].className == 'count-me') {
                    sum += isNaN(tds[i].innerHTML) ? 0 : parseInt(tds[i].innerHTML);
                }
            }
            document.getElementById('countit').innerHTML += 
            	'<tr><td><strong>total</strong></td><td>$'+sum+'</td></tr>' ;
            	
        </script>





  </body>
</html>


