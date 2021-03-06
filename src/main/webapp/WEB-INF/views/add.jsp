<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<meta name="layout" content="main" />
<link href="${pageContext.request.contextPath}/resources/css/myCss.css"
	rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
<title>Marlins Baseball</title>
</head>
<body >

	<h1>
		<img
			src="http://www.professionalscreenprintinginc.com/images/publishers/7341/designs/1723172.front.480.png" />
	</h1>
	<br>
	<br>
	<br>

	<h3>Add Player</h3>
	<div class="sidenav">
			<br> <br><br><br>
			<div style="text-align: center;">
				<img
					src="https://pbs.twimg.com/profile_images/787770668561694720/Gr68tPJ7.jpg"
					height="120" width="120" />
			</div>
			<br> <a href="${context}/baseball/schedule">Tournament
			Schedule </a> 
			<a href="${context}/baseball/"><i class="fa fa-home "> Home</i></a>
		</div>
	
	
	
	<form:form method="post" modelAttribute="playerForm"
		action="${pageContext.request.contextPath}/baseball">
		<div class="color2">
		<div class="Cover"><br></div>
		<form:input path="cover" type="text" placeholder="player photo..."/>

		<div class="Name"><br></div>
		<form:input path="name" type="text" placeholder="player name..."/>

		<div class="Number"><br></div>
		<form:input path="number" type="text" placeholder="player number..."/>



		<div class="AtBats"><br></div>
		<form:input path="atBats" type="text" placeholder="number of at bats..."/>

		<br><br>
		<form:input path="hits" type="text" placeholder="number of at hits..."/>

		</div>
		<br>
		
		<div class="update" >
		<input type="submit" name="add"></input>
		</div>

	</form:form>
	
	<div class="footer">
  <p>2018 Midwest Marlins</p>
</div>



</body>
</html>