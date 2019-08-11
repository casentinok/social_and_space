<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<c:if test="${list !=null}">
    <c:forEach var="bvo" items="${list}" >
    <form action="<%=request.getContextPath()%>/checkbooking.do" method="post">
        <div class="strip_booking">
            <span class="startDate hidden">${bvo.booking_startdate}</span>
            <span class="endDate hidden">${bvo.booking_enddate}</span>
            <div class="row">
                <div class="col-md-2 col-sm-2">
                    <div class="date">
                        <span class="startMonth month"></span>
                        <span class="startDay day"><strong></strong><span class="startDayEng"></span></span>
                    </div>
                </div>
                <div class="col-md-2 col-sm-2">
                    <div class="date">
                        <span class="endMonth month"></span>
                        <span class="endDay day"><strong></strong><span class="endDayEng"></span></span>
                    </div>
                </div>
                <div class="col-md-4 col-sm-5">
                    <h3 class="hotel_booking">${bvo.addr}</h3>
                </div>
                <div class="col-md-2 col-sm-3">
                    <ul class="info_booking">
                        <li><strong>Booking id</strong> ${bvo.giver_id}</li>
                        <li><strong>Booked on</strong> Sat. 23 Dec. 2015</li>
                    </ul>
                </div>
                <div class="col-md-2 col-sm-2">
                    <div class="booking_buttons">
						<input type="hidden" name ="rsv_num" value="${bvo.rsv_num}">
                     	<button  class="btn_2 fix-width"type="submit">Detail</button>
                     	<a href="deleteBooking?rsv_num=${bvo.rsv_num}" class="btn_3 fix-width">Cancel</a>
                    </div>
                </div>
            </div><!-- End row -->
        </div><!-- End strip booking -->
	</form>
    </c:forEach>
</c:if>


<c:if test="${list == null}">
   <h4>등록된 <span>예약이 없습니다.</span></h4>
</c:if>

    <script>
        /*
            { A : 'B' }
            A : weekday, month, date
            B : long, short 
        */
        var weekOp = { weekday: 'short' };
        var monthOp = { month: 'short' };

        $(".strip_booking").each(function () {
            var startdate = new Date($(this).children(".startDate").text());
            var enddate = new Date($(this).children(".endDate").text());
            var startDayEng = makeFormat(weekOp, startdate);
            var endDayEng = makeFormat(weekOp, enddate);
            var startMonthEng = makeFormat(monthOp, startdate);
            var endMonthEng = makeFormat(monthOp, enddate);

            $(this).find(".startDayEng").text(startDayEng);
            $(this).find(".endDayEng").text(endDayEng);
            $(this).find(".startDay").children("strong").text(startdate.getDate());
            $(this).find(".endDay").children("strong").text(enddate.getDate());
            $(this).find(".startMonth").text(startMonthEng);
            $(this).find(".endMonth").text(endMonthEng);

        });
        function makeFormat(options, dateFormat) {
            return new Intl.DateTimeFormat('en-US', options).format(dateFormat);
        }
    </script>