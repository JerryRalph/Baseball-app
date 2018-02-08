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

<title>2018 Marlins Baseball</title>

</head>
<body>
	<h1>
		<img
			src="http://www.professionalscreenprintinginc.com/images/publishers/7341/designs/1723172.front.480.png" />
	</h1>
	<br>
	<br>
	<br>

	<h3>2018 Midwest Marlins Baseball Club</h3>
	<div class="sidenav">
		<br> <br> <br> <br>
		<div style="text-align: center;">
			<img
				src="https://pbs.twimg.com/profile_images/787770668561694720/Gr68tPJ7.jpg"
				height="120" width="120" />
		</div>
		<br> <br> <a id="schedule"
			href="${context}/baseball/schedule"><i class="fa fa-calendar" aria-hidden="true"></i>Tournament Schedule</a> <br>
		<a href="${context}/baseball/add"><i class="fa fa-plus" aria-hidden="true"></i> Add   Player</a>
		 <br> <a href="${context}/baseball/"><i class="fa fa-users" aria-hidden="true"></i> Home</a>


	</div>




	<c:url var="searchBaseballUrl" value="/baseball/search" />
	<form action="${searchBaseballUrl}">
		<div align="right">
			
			<input type="text" id="name" name="name" placeholder="&#xf002  search player" />
			
			
			<br>
			<input type="submit" name="search" value="&#xf1d8    Submit">
				
			

		</div>
	</form>

	<c:if test="${not empty roster}">
		<div id="menu-outer">
			<div class="table">

				<ul id="horizontal-list">

					<c:forEach var="baseball" items="${roster}">
						<img class="img-circle" src="${baseball.cover}" />
						<br>
						<li><b><i class="color4">${baseball.name}</i></b></li>
						<br>
						
							<input type="button"  value=" Player Stats"
									onclick="location.href='${context}/baseball/stats?id=${baseball.id}'" title="click to view stats" >
									
							<input type="button"  value=" Player Detail"
									onclick="location.href='${context}/baseball/detail?id=${baseball.id}'" title="click to view details" >		
							<input type="button"  value="&#xf040 Edit"
									onclick="location.href='${context}/baseball/${baseball.id}/edit'" title="click to edit player" >
							<input type="reset"  value=" &#xf014 Remove"
									onclick="location.href='${context}/baseball/delete?id=${baseball.id}'" title="click to edit player" >
						
						<br>
						<br>
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