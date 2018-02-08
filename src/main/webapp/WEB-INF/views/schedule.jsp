<!DOCTYPE html>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="context" value="${pageContext.request.contextPath}" />


<html>
<head>
<meta name="layout" content="main" />

<link href="${pageContext.request.contextPath}/resources/css/myCss.css"
	rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


</head>


<title>Marlins Baseball</title>

</head>
<h1>
		<img
			src="http://www.professionalscreenprintinginc.com/images/publishers/7341/designs/1723172.front.480.png" />
	</h1>
	<br>
	<br>
	<br>

	<h3>2018 Schedule</h3>

		<div class="sidenav">
			<br> <br> <br> <br>
			<div style="text-align: center;">
				<img
					src="https://pbs.twimg.com/profile_images/787770668561694720/Gr68tPJ7.jpg"
					height="120" width="120" />
			</div>
			<br> <a href="${context}/baseball/addGame"><i class="fa fa-plus" aria-hidden="true"></i> Add Tournament</a> <br>
			<a href="${context}/baseball/schedule/list"><i class="fa fa-sort" aria-hidden="true"></i> Sort Tournament by
				Date</a> <br> <a href="${context}/baseball/"> <i class="fa fa-home "> Home</i></a>
		</div>

		<c:if test="${not empty schedule}">
			<div id="menu-outer">
				<div class="table">
					<ul id="horizontal-list">

						<c:forEach var="schedule" items="${schedule}">
							<br>
							<div class="color4">
								<a> <b><i class="color4"> <c:out
												value="${schedule.opponent}" /></i></b></a> <br>
								<b class="color">Website:</b> <a href="${schedule.tournament}">${schedule.tournament}</a>
								<br> <b class ="color">Tournament Location:</b>
								<c:out value="${schedule.location}" /><br> <b class="color">Tournament
									Date:</b>
								<c:out value="${schedule.stringDate}" /> <br> <br>
								<input type="button"  value="&#xf040 Edit"
									onclick="location.href='${context}/baseball/schedule/${schedule.id}/editTourney'" 
									> <input type="reset" value=" &#xf014 Remove"
									onclick="location.href='${context}/baseball/schedule/delete?id=${schedule.id}'"
									 
									> <br>
							</div>
						</c:forEach>

					</ul>
				</div>
			</div>
			<br>
			<br>

		</c:if>
		
		<div class="footer">
  <p>2018 Midwest Marlins</p>
</div>
</body>

</html>