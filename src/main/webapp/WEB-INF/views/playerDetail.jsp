<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta name="layout" content="main" />
<link href="${pageContext.request.contextPath}/resources/css/myCss.css"
	rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
</head>
<body>

	<h1>
		<img
			src="http://www.professionalscreenprintinginc.com/images/publishers/7341/designs/1723172.front.480.png" />
	</h1>
	<br>
	<br>
	<br>

	<h3>2018 Player Information</h3>
	<br>
	<br>
	<br>
	<div class="sidenav">
		<br> <br> <br> <br>
		<div style="text-align: center;">
			<img
				src="https://pbs.twimg.com/profile_images/787770668561694720/Gr68tPJ7.jpg"
				height="120" width="120" />
		</div>
		<br> <a href="${context}/baseball/schedule"><i class="fa fa-calendar" aria-hidden="true"></i>Tournament
			Schedule </a>
			<br> <a href="${context}/baseball/roster"><i class="fa fa-home "> Team Roster</i></a>
	</div>

	<form:form method="post" modelAttribute="baseball"
		action="${pageContext.request.contextPath}/baseball">
		<div class="center">
			<img class="img-rounded" src="${baseball.cover}" />
			<ul class="color2">

				<li>Name: <c:out value="${baseball.name}" /></li>

				<li>Number: <c:out value="${baseball.number}" /></li>

				<li>Position: <c:out value="${baseball.position}" /></li>


			</ul>
		</div>







	</form:form>
<div class="footer">
  <p>2018 Midwest Marlins</p>
</div>


</body>
</html>