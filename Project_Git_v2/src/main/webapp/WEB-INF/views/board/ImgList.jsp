<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- <c:set var="list" value="${list}" scope="request" /> --%>
<input type="hidden" value="${board_id}" name="board_id" id="board_id">
<c:if test="${img !=null}">

	<c:forEach var="vo" items="${img}">
		<div class="col-md-4 col-sm-6">
			<div class="tour_container">
				<div class="img_container">					
						<li data-cid="${vo}" class="imgdel"><img src="<%=request.getContextPath()%>/uploads/${vo}"></li>
				</div>
				<%-- <div class="tour_title">
					<h3>
						<strong>${bvo.user_id}</strong>						
					</h3>
					<c:forEach begin="${status.index}" end="${status.index}" var="ad"
							items="${addr}">
						${ad}
					</c:forEach>
						
					<c:if test="${sessionScope.user_id != null }">
					<c:forEach begin="${status.index}" end="${status.index}" var="lvo"
							items="${like }">
						<img class="like" src="img/${lvo}" align="right">

						</c:forEach>
						<input type="hidden" value="${bvo.board_id}" class="board_id">
						<input type="hidden" value="${sessionScope.user_id}" class="user_id">
					</c:if> --%>
					
					<!-- End wish list-->
				<!-- </div> -->
			</div>
			<!-- End box tour -->
		</div>
		<!-- End col-md-4 -->
	</c:forEach>
</c:if>


<c:if test="${img == null}">
	<h4>등록된 <span>사진이없습니다.</span></h4>
</c:if>
