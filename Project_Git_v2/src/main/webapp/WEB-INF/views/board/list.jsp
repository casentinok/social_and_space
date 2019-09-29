<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- <c:set var="list" value="${list}" scope="request" /> --%>
<c:if test="${list !=null}">

	<c:forEach var="bvo" items="${list}" varStatus="status">
		<div class="col-md-4 col-sm-6 wow zoomIn" data-wow-delay="0.1s">

			<div class="tour_container">

				<div class="img_container">
					<a
						href="<%= request.getContextPath()%>/board/boardview.do?board_id=${bvo.board_id}&user_id=${bvo.user_id}&loginUserId=${sessionScope.user_id}">
						<c:if test="${bvo.thumb_img != null }">
							<img src="/uploads/${bvo.thumb_img}" class="img-responsive" alt="">
						</c:if>
						<c:if test="${bvo.thumb_img == null }">
							<img src="/data/no-image.png" class="img-responsive" alt="">
						</c:if>
					</a>
				</div>
				<div class="tour_title">
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
						<span id="likecnt">${bvo.like_cnt}</span>
						</c:forEach>
						<input type="hidden" value="${bvo.board_id}" class="board_id">
						<input type="hidden" value="${sessionScope.user_id}" class="user_id">
					</c:if>
					
					<!-- End wish list-->
				</div>
			</div>
			<!-- End box tour -->
		</div>
		<!-- End col-md-4 -->
	</c:forEach>
</c:if>
  <script>
   $(function(){
	   console.log($('.like'));
       $(document).on("click",'.like',function(){
    	   
    	   var that = $(this).siblings("#likecnt");
    	   
          var imgsrc = $(this).attr("src");
          var board_id = $(this).siblings(".board_id").val();
          console.log(board_id);
          console.log(imgsrc);
          if(imgsrc == "img/like1.png"){//1이 비어있는거            
             $(this).attr("src","img/like2.png");
             
             like("/board/insertLike.do",imgsrc,board_id,that);
             //likecnt("/board/selectLikecnt.do",board_id,that);
                   
          }else{
             $(this).attr("src","img/like1.png");
             
             like("/board/removeLike.do",imgsrc,board_id,that);
             //likecnt("/board/selectLikecnt.do",board_id,that);      
          }
       })
             
     
       function like(act,src,board_id,that){
           
           var user_id = $(".user_id").val();
           console.log(act);
           var sendData = {'board_id' : board_id, 'user_id' : user_id };
           $.ajax({
              url:act,
              type :'post',
              data: sendData,
              success : function(data){
                 likecnt("/board/selectLikecnt.do",board_id,that);
              }
           })
        }
       
       function likecnt(act, board_id,that) {
           //var board_id = $(".board_id").val();
           var user_id = $(".user_id").val();

           var sendData = {'board_id' : board_id, 'user_id' : user_id };
           $.ajax({
              url : act,
              type : 'post',
              data : sendData,
              success : function(data) {
                 //console.log("쿼리문 실행해서 값이 있으면 false, 없으면 true 입니다 : " + data);               
                 //changeImg(src);
                 console.log(data);
                 if(that){
                 	that.text(data);
                 }
              }
           })
        }       

    })
   </script>


<c:if test="${list == null}">
	<h4>등록된 <span>상품이없습니다.</span></h4>
</c:if>
