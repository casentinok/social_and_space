
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	pageContext.setAttribute("br", "<br/>");
	pageContext.setAttribute("cn","\n"); 
	%>
	


<c:forEach items="${commentList}" var="list" varStatus="status">
				<div class="commentlist">
					<ol>
						<li>
						<c:forEach items="${thumb_nail}" var="vv" begin="${status.index}" end="${status.index}">
                  			<div class="avatar"><a href="#"><img src="/uploads/${vv}" alt=""></a></div><!-- png or jpg -->
                  			
                  		</c:forEach>
						<div class="comment_right clearfix fix-width">
							<div class="comment_info">
								<input type="hidden" value="${board_id}" name="board_id" class="board_id">
								<span name="user_id" name="user_id">${list.user_id }</span><span>|</span>${list.reg_date } <span>|</span> ${list.comment_star } <span>|</span>
								<c:if test="${sessionScope.user_id eq list.user_id }">
								<input type="hidden" value="${list.comment_id }" name="comment_id" class="comment_id">
								<%-- <span onClick="commentdelete(${list.comment_id});return false;" class="btn_delete">삭제</span> --%>
							 	<span data-cid='${list.comment_id}' class="btn_delete">DELETE</span> 
								</c:if>
							</div>
							<p>
								${fn:replace(list.content,cn,br) }
							</p>
						</div>
						</li>
					</ol>
				</div>
				<hr>
				</c:forEach>
				
				<script>
				
				$(".delete").on('click', function() {
					alert("댓글 삭제합니다");
				});
				</script>
	