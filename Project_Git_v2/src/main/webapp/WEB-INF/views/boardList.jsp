<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="list" value="${list}" scope="request" />
<c:if test="${list !=null}">

	<c:forEach var="bvo" items="${list.boardList}">
		<div class="col-md-4 col-sm-6 wow zoomIn" data-wow-delay="0.1s">
		
			<div class="tour_container">
					<a href="boardview.ff?board_id=${bvo.board_id}"> 
				<div class="img_container">
					<img src="<%=request.getContextPath()%>/data/${bvo.thumb_img}" class="img-responsive" alt="">
						<!-- <div class="short_info">
										<i class="icon_set_1_icon-44"></i>Historic Buildings<span
											class="price"><sup>$</sup>39</span>
									</div> -->
				
				</div>
					</a>
				<div class="tour_title">
					<h3>
						<strong>${bvo.user_id}</strong>
					</h3>
					<!-- <div class="rating">
									<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i
										class="icon-smile voted"></i><i class="icon-smile voted"></i><i
										class="icon-smile"></i><small>(75)</small>
								</div> -->
					<!-- end rating -->
					<div class="wishlist">
						<a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">
							+
						<!-- <span class="tooltip-content-flip"></span> -->
						<%-- <span>${bvo.like_cnt}</span> --%>
						</a> 
					</div>
					<!-- End wish list-->
				</div>
			</div>
			<!-- End box tour -->
		</div>
		<!-- End col-md-4 -->
	</c:forEach>

</c:if>


<c:if test="${list == null}">
	<h4>등록된 상품이없습니다.</h4>
</c:if>
