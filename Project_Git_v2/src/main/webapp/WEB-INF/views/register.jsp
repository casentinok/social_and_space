<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<% request.setCharacterEncoding("utf-8"); %>

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

<!-- CSS -->
<link href="css/flickity.css" rel="stylesheet">
<link href="css/custom.css" rel="stylesheet">
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
	<!-- <section id="search_container"> -->
	<section id="search_container" class="login fix-height">
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
					<div id="login">
						<div class="row" style="width:250px; height:50px; margin:auto;">
                  				<div class="col-md-3 col-sm-3 col-xs-3" style="padding-right:7px;">
                     				<div id="logoimg">
                        				<svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" alt="City tours" data-retina="true" class="logo_sticky" viewBox="0 0 88 87.31"><title>logo_20190530</title><polygon points="25.8 24.58 22.37 21.15 65.54 21.15 62.12 24.58 25.8 24.58" fill="#f2f2f2"/><rect x="26.3" y="26.3" width="35.23" height="35.23" fill="#f2f2f2"/><polygon points="24.58 62.12 21.15 65.54 21.15 22.37 24.58 25.8 24.58 62.12" fill="#f2f2f2"/><polygon points="65.63 66.85 22.29 66.85 25.88 63.25 62.03 63.25 65.63 66.85" fill="#f2f2f2"/><polygon points="66.85 22.29 66.85 65.63 63.25 62.03 63.25 25.88 66.85 22.29" fill="#f2f2f2"/><path d="M86.47.57h0L65.54,21.5l-3.42,3.42H44V.34H85.42a2.63,2.63,0,0,1,.49,0h0l.11,0,.24.08.12.05Z" transform="translate(0 -0.34)" fill="#83d8f0"/><rect x="44" y="26.3" width="17.53" height="35.23" fill="#83d8f0"/><polygon points="84.42 85.63 56.15 87.29 44 87.28 44 63.25 62.03 63.25 65.63 66.85 84.42 85.63" fill="#83d8f0"/><path d="M88,2.92V85.77l-1.29.07L63.25,62.38V26.22l3.6-3.59L87.72,1.75a.36.36,0,0,1,0,.09l0,.11a.76.76,0,0,1,0,.11l0,.08a2.13,2.13,0,0,1,.11.57.25.25,0,0,0,0,.08Z" transform="translate(0 -0.34)" fill="#83d8f0"/><path d="M49.19,48.3V61.88H38.81V48.23a2.59,2.59,0,0,1,2.51-2.51h5.29A2.58,2.58,0,0,1,49.19,48.3Z" transform="translate(0 -0.34)" fill="#8f3647"/><path d="M49.19,48.3V61.88H44V45.72h2.61A2.58,2.58,0,0,1,49.19,48.3Z" transform="translate(0 -0.34)" fill="#5e2128"/><path d="M88,2.92V85.77l-.41.94L63.25,62.38V26.22l3.6-3.59L87.72,1.75a.36.36,0,0,1,0,.09l0,.11a.76.76,0,0,1,0,.11l0,.08a2.13,2.13,0,0,1,.11.57.25.25,0,0,0,0,.08Z" transform="translate(0 -0.34)" fill="#56b5d1"/><path d="M24.58,26.14V62.46l-3.43,3.43L.37,86.67,0,85.77V2.92A2.58,2.58,0,0,1,.25,1.81l20.9,20.9Z" transform="translate(0 -0.34)" fill="#89e5f4"/><polygon points="86.1 87.31 56.15 87.29 44 87.28 1.88 87.25 25.88 63.25 62.03 63.25 65.63 66.85 84.42 85.63 86.1 87.31" fill="#e04f67"/><path d="M86.47.57,65.54,21.5l-3.42,3.42H25.8L1.47.6A2.42,2.42,0,0,1,2.58.34H85.42a2.63,2.63,0,0,1,.49,0h0l.11,0,.24.08.12.05Z" transform="translate(0 -0.34)" fill="#85c99d"/><polygon points="86.1 87.31 56.15 87.29 44 87.28 44 63.25 62.03 63.25 65.63 66.85 84.42 85.63 86.1 87.31" fill="#8f3647"/><path d="M86.47.57,65.54,21.5l-3.42,3.42H44V.34H85.42a2.63,2.63,0,0,1,.49,0h0l.11,0,.24.08.12.05Z" transform="translate(0 -0.34)" fill="#72aa85"></svg>
                    				</div>
                  				</div>
                  				<div class="col-md-9 col-sm-9 col-xs-9">
                    			 	<div id="logotext">
                        				<svg id="Layer_2" data-name="Layer 2" xmlns="http://www.w3.org/2000/svg"  alt="City tours" data-retina="true" class="logo_sticky" viewBox="0 0 188.33 45.71"><title>log_text_20190530</title><path d="M3,29.37A5.58,5.58,0,0,1,.36,24.31,5,5,0,0,1,1,21.56a2,2,0,0,1,1.83-.95,2.22,2.22,0,0,1,1.44.46,1.47,1.47,0,0,1,.56,1.18,6.19,6.19,0,0,1-.1,1.14,4.32,4.32,0,0,1,0,.46,5.09,5.09,0,0,0,0,.69A2.32,2.32,0,0,0,6.1,26.73a9.76,9.76,0,0,0,4.17.72,8.05,8.05,0,0,0,4.35-1,3.12,3.12,0,0,0,1.57-2.79,2.79,2.79,0,0,0-.72-1.92,6,6,0,0,0-1.8-1.34c-.72-.36-1.73-.8-3-1.32a34.9,34.9,0,0,1-4.11-1.87,8.5,8.5,0,0,1-2.71-2.4A6.21,6.21,0,0,1,2.68,11,7.22,7.22,0,0,1,3.94,6.84,8.21,8.21,0,0,1,7.57,4a14.22,14.22,0,0,1,5.58-1,13.07,13.07,0,0,1,4.38.7,7.07,7.07,0,0,1,3.19,2.14,5.34,5.34,0,0,1,1.2,3.54,6.27,6.27,0,0,1-.62,3.11A2.17,2.17,0,0,1,18,13a1.63,1.63,0,0,1-.57-1.24,5.86,5.86,0,0,1,.1-1.15c.06-.65.09-1.07.09-1.24a2.26,2.26,0,0,0-1.34-2.1A7,7,0,0,0,13,6.54a7.62,7.62,0,0,0-4.31,1,3.34,3.34,0,0,0-1.49,2.9A3.15,3.15,0,0,0,8,12.6a6.33,6.33,0,0,0,1.92,1.47c.76.39,1.83.86,3.2,1.41a39.54,39.54,0,0,1,4,1.83,7.88,7.88,0,0,1,2.56,2.22A5.6,5.6,0,0,1,20.71,23a6.84,6.84,0,0,1-2.93,5.94A13.26,13.26,0,0,1,9.94,31,13,13,0,0,1,3,29.37Z" transform="translate(-0.36)" style="fill:#333"/><path d="M40.83,21.14a2.28,2.28,0,0,1,.23,1.08c0,1-.32,1.67-1,1.86a15,15,0,0,1-4.32.79,8.14,8.14,0,0,1-2.45,4.4,6,6,0,0,1-4.16,1.65,5.8,5.8,0,0,1-3.35-1,6,6,0,0,1-2.11-2.52,8.07,8.07,0,0,1-.72-3.4A9.85,9.85,0,0,1,24,19.62a7.44,7.44,0,0,1,2.61-3.05,6.62,6.62,0,0,1,3.7-1.09,5.1,5.1,0,0,1,4,1.71,7.37,7.37,0,0,1,1.78,4.24,19.41,19.41,0,0,0,3.67-.65,1.61,1.61,0,0,1,.46-.07A.7.7,0,0,1,40.83,21.14ZM31.26,26.6a4.7,4.7,0,0,0,1-2.45,4.5,4.5,0,0,1-1.55-1.8A5.34,5.34,0,0,1,30.2,20a6.2,6.2,0,0,1,.09-1h-.16A2.58,2.58,0,0,0,28,20.2a6.29,6.29,0,0,0-.86,3.55,4.56,4.56,0,0,0,.7,2.75,2,2,0,0,0,1.65.95A2.36,2.36,0,0,0,31.26,26.6Z" transform="translate(-0.36)" style="fill:#333"/><path d="M39.5,29.1a6.52,6.52,0,0,1-1.78-4.79,9.87,9.87,0,0,1,1.05-4.65,8,8,0,0,1,2.71-3.07A6.36,6.36,0,0,1,45,15.51a3.64,3.64,0,0,1,2.8,1.06,3.81,3.81,0,0,1,1,2.73,4.19,4.19,0,0,1-.61,2.33,1.82,1.82,0,0,1-1.58.95,1.55,1.55,0,0,1-1-.3,1,1,0,0,1-.38-.82,2.77,2.77,0,0,1,.07-.52c0-.2.08-.34.1-.42a2.92,2.92,0,0,0,.16-.92,1,1,0,0,0-.21-.66.8.8,0,0,0-.61-.22,1.92,1.92,0,0,0-1.4.67,4.65,4.65,0,0,0-1,1.81,7.83,7.83,0,0,0-.39,2.52q0,3.8,3.3,3.8a5.85,5.85,0,0,0,2.9-.9,12,12,0,0,0,3.06-2.7,1.12,1.12,0,0,1,.88-.46.76.76,0,0,1,.67.39,2.05,2.05,0,0,1,.25,1.08,3.14,3.14,0,0,1-.63,2,10.53,10.53,0,0,1-3.68,2.93,9.5,9.5,0,0,1-4.14,1A6.69,6.69,0,0,1,39.5,29.1Z" transform="translate(-0.36)" style="fill:#333"/><path d="M51.22,29.42a7.29,7.29,0,0,1-1-4,24.67,24.67,0,0,1,.38-3.78,35.91,35.91,0,0,1,1-4.3,2.77,2.77,0,0,1,.79-1.44A2.53,2.53,0,0,1,54,15.51c1.11,0,1.67.37,1.67,1.11a26.24,26.24,0,0,1-.62,3.8,27.79,27.79,0,0,0-.79,4.87,3.53,3.53,0,0,0,.26,1.51.92.92,0,0,0,.89.52,2.45,2.45,0,0,0,1.47-.82,29.06,29.06,0,0,0,2.36-2.58,1.12,1.12,0,0,1,.88-.46.76.76,0,0,1,.67.39A2.06,2.06,0,0,1,61,24.93a3,3,0,0,1-.62,2c-2.16,2.64-4.17,4-6,4A3.39,3.39,0,0,1,51.22,29.42Zm1.29-16.71a2.3,2.3,0,0,1-.69-1.78A2.44,2.44,0,0,1,52.72,9,3.34,3.34,0,0,1,55,8.25a3.12,3.12,0,0,1,2,.58,2,2,0,0,1,.75,1.67,2.64,2.64,0,0,1-.85,2.08,3.26,3.26,0,0,1-2.26.77A2.92,2.92,0,0,1,52.51,12.71Z" transform="translate(-0.36)" style="fill:#333"/><path d="M59.12,29.45a5.87,5.87,0,0,1-1.21-3.86,10.6,10.6,0,0,1,1.21-5,10.37,10.37,0,0,1,3.22-3.76,7.28,7.28,0,0,1,4.27-1.43,1.32,1.32,0,0,1,1,.28,2.45,2.45,0,0,1,.41,1,7.35,7.35,0,0,1,1.44-.13c1.06,0,1.6.38,1.6,1.14A24.16,24.16,0,0,1,70.54,21a31.72,31.72,0,0,0-.75,5.23A1.22,1.22,0,0,0,70,27a.81.81,0,0,0,.64.29,2.49,2.49,0,0,0,1.5-.8,28,28,0,0,0,2.39-2.6,1.14,1.14,0,0,1,.89-.46.77.77,0,0,1,.67.39,2.06,2.06,0,0,1,.24,1.08,3,3,0,0,1-.62,2,16.06,16.06,0,0,1-2.85,2.81A4.8,4.8,0,0,1,70,30.92a3.07,3.07,0,0,1-2-.74,4.52,4.52,0,0,1-1.36-2,5,5,0,0,1-4.28,2.75A4,4,0,0,1,59.12,29.45Zm5.79-2.69a5.48,5.48,0,0,0,1-2.25l1.21-6a3.94,3.94,0,0,0-2.54,1,6.84,6.84,0,0,0-1.84,2.63A8.84,8.84,0,0,0,62,25.62a2.24,2.24,0,0,0,.41,1.5,1.39,1.39,0,0,0,1.13.5A1.8,1.8,0,0,0,64.91,26.76Z" transform="translate(-0.36)" style="fill:#333"/><path d="M83.89,25.82a.73.73,0,0,1,.64.44,2.18,2.18,0,0,1,.24,1.06,2.7,2.7,0,0,1-1,2.19,5.89,5.89,0,0,1-3.86,1.41,4.84,4.84,0,0,1-4.55-2.6,14,14,0,0,1-1.44-6.79,46.4,46.4,0,0,1,1-9.1,31.12,31.12,0,0,1,3-8.77C79.36,1.22,81,0,82.81,0a2.79,2.79,0,0,1,2.47,1.46,8,8,0,0,1,.9,4.17,24,24,0,0,1-2.15,9A48.19,48.19,0,0,1,78.19,24.8,3.58,3.58,0,0,0,79,26.73a2.18,2.18,0,0,0,1.61.59A3,3,0,0,0,81.88,27a5.33,5.33,0,0,0,1.29-.85A1.11,1.11,0,0,1,83.89,25.82ZM80.39,6a44.12,44.12,0,0,0-1.67,6.74,49.69,49.69,0,0,0-.79,7.73,42.44,42.44,0,0,0,3.7-7.68,20.89,20.89,0,0,0,1.37-7c0-1.66-.3-2.49-.91-2.49S81,4.14,80.39,6Z" transform="translate(-0.36)" style="fill:#333"/><path d="M95,29.61a12.48,12.48,0,0,1-.51-4.19,26.56,26.56,0,0,1,1.21-8.08,2.53,2.53,0,0,1,1-1.39,3.48,3.48,0,0,1,1.89-.44,1.82,1.82,0,0,1,.91.16.67.67,0,0,1,.26.62,12.19,12.19,0,0,1-.49,2.36c-.22.87-.39,1.64-.52,2.29a24.2,24.2,0,0,0-.33,2.42,18.9,18.9,0,0,1,2.42-4.58,9.55,9.55,0,0,1,2.64-2.52,4.79,4.79,0,0,1,2.37-.75,2.16,2.16,0,0,1,1.59.54,2.16,2.16,0,0,1,.54,1.59,26,26,0,0,1-.36,3.2c-.22,1.33-.4,2.59-.53,3.78a37,37,0,0,0-.19,4,2.54,2.54,0,0,1-.51,1.78,2.18,2.18,0,0,1-1.65.54,2,2,0,0,1-1.57-.56,2.43,2.43,0,0,1-.49-1.67,33.23,33.23,0,0,1,.45-4.31,29.57,29.57,0,0,0,.4-3.34c0-.35-.12-.52-.36-.52s-.69.36-1.2,1.09a18.23,18.23,0,0,0-1.57,2.9,23.15,23.15,0,0,0-1.29,3.79,5.19,5.19,0,0,1-.83,2.08,1.9,1.9,0,0,1-1.49.54A1.78,1.78,0,0,1,95,29.61Z" transform="translate(-0.36)" style="fill:#333"/><path d="M122.42,30.85a2.28,2.28,0,0,1-.91-1.76,2,2,0,0,1,.63-1.47A2.45,2.45,0,0,1,124,27a6.69,6.69,0,0,1,1,.09l.86.11a4.12,4.12,0,0,0-.37-1.6,7.81,7.81,0,0,0-.87-1.46c-.35-.47-.68-.88-1-1.23a22,22,0,0,1-2,3.21,23.7,23.7,0,0,1-2.18,2.42,1.76,1.76,0,0,1-1.24.59,1,1,0,0,1-.85-.38,1.36,1.36,0,0,1-.33-.93,1.85,1.85,0,0,1,.46-1.21l.42-.52a43.22,43.22,0,0,0,2.72-3.67c.37-.63.81-1.47,1.31-2.53s1-2.16,1.47-3.29A2.51,2.51,0,0,1,126,15.15a3.42,3.42,0,0,1,1.28.16.55.55,0,0,1,.36.53,2.33,2.33,0,0,1-.13.62,5.15,5.15,0,0,1-.36.85,4.69,4.69,0,0,0-.59,2,2.25,2.25,0,0,0,.34,1.08,12,12,0,0,0,1.07,1.48,18.19,18.19,0,0,1,1.58,2.34,4.12,4.12,0,0,1,.54,2.11c0,.21,0,.52-.06.91a10.34,10.34,0,0,0,3.76-3.3,1.14,1.14,0,0,1,.89-.46.77.77,0,0,1,.67.39,2.06,2.06,0,0,1,.24,1.08,3.19,3.19,0,0,1-.62,2,10.08,10.08,0,0,1-3.13,2.77,9,9,0,0,1-3.68.8,4.64,4.64,0,0,1-3.1,1.11A3.78,3.78,0,0,1,122.42,30.85Z" transform="translate(-0.36)" style="fill:#333"/><path d="M151,23.85a2,2,0,0,1,.25,1.08,3,3,0,0,1-.62,2,14.41,14.41,0,0,1-3,2.85A6.36,6.36,0,0,1,144,30.92a3.53,3.53,0,0,1-2.81-1.24,7.36,7.36,0,0,1-3.9,1.24,39.49,39.49,0,0,1-1.93,10.55q-1.5,4.24-4.42,4.24a2.92,2.92,0,0,1-2.61-1.28,6.29,6.29,0,0,1-.85-3.53,23.47,23.47,0,0,1,1.47-7.48,51.05,51.05,0,0,1,4.55-9.4c0-3.19,0-5.4-.07-6.65a1.68,1.68,0,0,1,.75-1.5,3.35,3.35,0,0,1,2-.56,1.51,1.51,0,0,1,1,.28,1.59,1.59,0,0,1,.34,1.1c0,.54,0,.95,0,1.21A7.58,7.58,0,0,1,139.54,16a4.27,4.27,0,0,1,2.16-.58,3.65,3.65,0,0,1,3,1.48,6.06,6.06,0,0,1,1.16,3.86,10.45,10.45,0,0,1-.56,3.37,10.74,10.74,0,0,1-1.54,3,4,4,0,0,0,1.15.2,3.26,3.26,0,0,0,2.06-.78,20.35,20.35,0,0,0,2.52-2.62,1.14,1.14,0,0,1,.88-.46A.74.74,0,0,1,151,23.85Zm-18.4,14.81a81,81,0,0,0,.75-9.57,46.8,46.8,0,0,0-2.22,6.25,19.28,19.28,0,0,0-.82,5,4.23,4.23,0,0,0,.24,1.61c.17.37.36.55.58.55Q132.06,42.5,132.64,38.66Zm7-12.17a7.42,7.42,0,0,0,1.59-2.56,8.77,8.77,0,0,0,.59-3.19,2.38,2.38,0,0,0-.39-1.48,1.28,1.28,0,0,0-1-.51c-.79,0-1.74.83-2.85,2.48q0,1.44,0,4.23c0,1,0,1.77,0,2.32A4.41,4.41,0,0,0,139.59,26.49Z" transform="translate(-0.36)" style="fill:#333"/><path d="M149.42,29.45a5.92,5.92,0,0,1-1.21-3.86,10.72,10.72,0,0,1,1.21-5,10.39,10.39,0,0,1,3.23-3.76,7.25,7.25,0,0,1,4.27-1.43,1.28,1.28,0,0,1,1,.28,2.32,2.32,0,0,1,.41,1,7.49,7.49,0,0,1,1.44-.13c1.07,0,1.6.38,1.6,1.14a24.16,24.16,0,0,1-.49,3.28,31.72,31.72,0,0,0-.75,5.23,1.17,1.17,0,0,0,.25.79.79.79,0,0,0,.63.29,2.5,2.5,0,0,0,1.51-.8,29.47,29.47,0,0,0,2.39-2.6,1.12,1.12,0,0,1,.88-.46.76.76,0,0,1,.67.39,2,2,0,0,1,.25,1.08,3,3,0,0,1-.62,2,16.76,16.76,0,0,1-2.85,2.81,4.83,4.83,0,0,1-2.91,1.15,3.07,3.07,0,0,1-2-.74,4.44,4.44,0,0,1-1.36-2,5,5,0,0,1-4.29,2.75A4,4,0,0,1,149.42,29.45Zm5.8-2.69a5.48,5.48,0,0,0,.94-2.25l1.22-6a3.92,3.92,0,0,0-2.54,1A6.85,6.85,0,0,0,153,22.15a8.84,8.84,0,0,0-.69,3.47,2.3,2.3,0,0,0,.41,1.5,1.4,1.4,0,0,0,1.13.5A1.82,1.82,0,0,0,155.22,26.76Z" transform="translate(-0.36)" style="fill:#333"/><path d="M165.28,29.1a6.53,6.53,0,0,1-1.79-4.79,9.87,9.87,0,0,1,1-4.65,7.93,7.93,0,0,1,2.72-3.07,6.34,6.34,0,0,1,3.5-1.08,3.62,3.62,0,0,1,2.79,1.06,3.81,3.81,0,0,1,1,2.73,4.27,4.27,0,0,1-.6,2.33,1.84,1.84,0,0,1-1.59.95,1.57,1.57,0,0,1-1-.3,1,1,0,0,1-.37-.82,2.68,2.68,0,0,1,.06-.52c0-.2.08-.34.1-.42a2.92,2.92,0,0,0,.16-.92,1,1,0,0,0-.21-.66.78.78,0,0,0-.6-.22,1.92,1.92,0,0,0-1.41.67A4.65,4.65,0,0,0,168,21.2a7.83,7.83,0,0,0-.39,2.52q0,3.8,3.3,3.8a5.85,5.85,0,0,0,2.9-.9,11.85,11.85,0,0,0,3.06-2.7,1.12,1.12,0,0,1,.88-.46.74.74,0,0,1,.67.39,2,2,0,0,1,.25,1.08,3.19,3.19,0,0,1-.62,2,10.72,10.72,0,0,1-3.68,2.93,9.5,9.5,0,0,1-4.14,1A6.66,6.66,0,0,1,165.28,29.1Z" transform="translate(-0.36)" style="fill:#333"/><path d="M188.44,24.83a2.1,2.1,0,0,1,.25,1.08,3.61,3.61,0,0,1-.56,2,6.32,6.32,0,0,1-2.4,2.19,7.47,7.47,0,0,1-3.55.79A6.32,6.32,0,0,1,177.3,29,7.21,7.21,0,0,1,175.57,24a9.47,9.47,0,0,1,.94-4.2,7.92,7.92,0,0,1,2.64-3.1A6.63,6.63,0,0,1,183,15.51a4.14,4.14,0,0,1,3,1.13,4.07,4.07,0,0,1,1.15,3.06,5.28,5.28,0,0,1-1.62,3.87A11.73,11.73,0,0,1,180,26.14a2.73,2.73,0,0,0,2.65,1.51,3.75,3.75,0,0,0,2.21-.62,11.42,11.42,0,0,0,2-2.1,1.1,1.1,0,0,1,.88-.49A.76.76,0,0,1,188.44,24.83Zm-8.08-4.71a6.53,6.53,0,0,0-.83,3.41v.06a7.39,7.39,0,0,0,3-1.37,2.7,2.7,0,0,0,1.11-2.13,1.43,1.43,0,0,0-.34-1,1.21,1.21,0,0,0-.94-.37A2.39,2.39,0,0,0,180.36,20.12Z" transform="translate(-0.36)" style="fill:#333"></svg>
                     				</div>
                  				</div>
                     		</div>
						<hr>
						<form name="join" onsubmit="return validate();"
							action="register.do" method="post">
							<div class="form-group">
								<label>UserID</label> <input type="text" name="user_id"
									class=" form-control" placeholder="userID" id="user_id">
								<div class="from-group">
									<br>
									<p class="result">
										<button type="button" class="idcheck">
											<i class="icon-eye-7"></i>
										</button>
										<span class="msg">아이디를 확인해주세요</span>
									</p>
								</div>

							</div>
						
							
							
							<div class="form-group">
								<label>UserName</label> <input type="text" name="user_name"
									class=" form-control" id="username"placeholder="Username">
							</div>
							<div class="form-group">
								<label>Password</label> <input type="password" name="u_password"
									class=" form-control" placeholder="4~12자리의 영문 대소문자와 숫자로만 입력"
									id="pw">
							</div>
							<div class="form-group">
								<label>Check Password</label> <input type="password"
									class=" form-control" id="checkpw">
							</div>

							<div class="form-group">
								<label>Email</label> <input type="email" name="email"
									class=" form-control" placeholder="Email" id="email">
							</div>
							<div class="form-group">
								<label>Phone</label> <input type="text" name="tel" id="tel"
									class=" form-control" placeholder="phone">
							</div>
							<div class="form-group">

								<input type="hidden" name="thumb_nail" class=" form-control"
									value="sample.jpg">
							</div>
							<div class="form-group">

								<input type="hidden" name="user_type" class="form-control" id="user_type"
									value="${param.user_type }">
							</div>

							<div id="pass-info" class="clearfix"></div>
							<button type="submit" id="submit" class="btn_full" disabled="disabled">확인</button>
								

						</form>
					</div>
				</div>
			</div>
		</div>
	</section>

	<%@include file="./include/footer.jsp"%>

	<div id="toTop"></div>
	<!-- Back to top button -->

	<!-- Common scripts -->
	<script src="js/jquery-1.11.2.min.js"></script>
	<script src="js/common_scripts_min.js"></script>
	<script src="js/functions.js"></script>

	<!-- Specific scripts -->
	<script src="js/pw_strenght.js"></script>
	<!-- <script src='https://code.jquery.com/jquery-3.3.1.min.js'></script> -->

	<!-- 유효성검사 -->
	<script language="javascript">
		function validate() {
			var re = /^[a-zA-Z0-9]{4,12}$/ // 아이디와 패스워드가 적합한지 검사할 정규식
			var re2 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
			// 이메일이 적합한지 검사할 정규식

			var id = document.getElementById("user_id");
			var pw = document.getElementById("pw");
			var email = document.getElementById("email");
			/*        var num1 = document.getElementById("num1");
			 var num2 = document.getElementById("num2"); */

			// ------------ 이메일 까지 -----------
			if (!check(re, id, "아이디는 4~12자의 영문 대소문자와 숫자로만 입력해야 합니다")) {
				return false;
			}

			
			if($("#username").val() == ""){
				alert("이름을 입력하세요 ! ");
				return false;
			}
			if (!check(re, pw, "패스워드는 4~12자의 영문 대소문자와 숫자로만 입력")) {
				return false;
			}

			if (join.pw.value != join.checkpw.value) {
				alert("비밀번호가 다릅니다. 다시 확인해 주세요.");
				join.checkpw.value = "";
				join.checkpw.focus();
				return false;
			}

			if (email.value == "") {
				alert("이메일을 입력해 주세요");
				email.focus();
				return false;
			}

			if (!check(re2, email, "적합하지 않은 이메일 형식입니다.")) {
				return false;
			}

			if (join.tel.value == "") {
				alert("전화번호를 입력해 주세요");
				join.tel.focus();
				return false;
			}

			alert("회원가입이 완료되었습니다.");
		}

		function check(re, what, message) {
			if (re.test(what.value)) {
				return true;
			}
			alert(message);
			what.value = "";
			what.focus();
			//return false;
		}

		$(".idcheck").click(function() {
			var id = document.getElementById("user_id");
			var query = {
				user_id : $("#user_id").val()
			};

			$.ajax({
				url : "idcheck.do",
				type : "post",
				data : query,
				error : function(err) {
					console.log(err);
				},
				success : function(data) {
					
					if (data == 1 && $("#user_id").val() == "") {
						$(".result .msg").text("아이디를 확인해주세요 ");
						$(".result .msg").attr("style", "color:#f00");
						$("#submit").attr("disabled", "disabled");
					} else if(data == 1 ){
						$(".result .msg").text("중복되지 않은 id 입니다 ");
						$(".result .msg").attr("style",  "color:#00f");
						$("#submit").removeAttr("disabled");
					}
					else if (data != 1){
						$(".result .msg").text("중복된 id 입니다 ");
						$(".result .msg").attr("style", "color:#f00");
						$("#submit").attr("disabled", "disabled");
					}
				}
			}); // ajax 끝
		});
	</script>

<script src="/js/jquery-1.11.2.min.js"></script>
	<script src="/js/common_scripts_min.js"></script>
	<script src="/js/functions.js"></script>




</body>
</html>