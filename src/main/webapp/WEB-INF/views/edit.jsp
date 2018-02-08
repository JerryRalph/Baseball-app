<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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

	<h3>Edit Player Information</h3>
	<div class="sidenav">
			<br> <br> <br> <br>
			<div style="text-align: center;">
				<img
					src="https://pbs.twimg.com/profile_images/787770668561694720/Gr68tPJ7.jpg"
					height="120" width="120" />
			</div>
			<br> <a href="${context}/baseball/schedule"><i class="fa fa-calendar" aria-hidden="true"></i>Tournament Schedule</a>
			<a href="${context}/baseball/"><i class="fa fa-home "> Home</i></a>
		</div>

	<form:form method="post" modelAttribute="editForm"
		action="${pageContext.request.contextPath}/baseball">
	<div class="color2">
		<div class="Cover">Photo</div>
		<form:input path="cover" type="text" />

		<div class="Name">Player Name</div>
		<form:input path="name" type="text" />

		<div class="Number">Number</div>
		<form:input path="number" type="text" />
		
		<div class="Position">Position</div>
		<form:input path="position" type="text" />

		<div class="AtBats">At Bats</div>
		<form:input path="atBats" type="text" />

		<div class="Hits">Hits</div>
		<form:input path="hits" type="text" />

		<form:input path="id" type="hidden" />
		</div>
		<br>
		<br>
		<div class="update" >
		<input type="submit" name="update"value="&#xf021  Update"/>
		</div>
		<br>
		<br>

	</form:form>

<div class="footer">
  <p>2018 Midwest Marlins</p>
</div>

</body>
</html>