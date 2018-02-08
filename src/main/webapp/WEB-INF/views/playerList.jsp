<!DOCTYPE html>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="context" value="${pageContext.request.contextPath}" />

<html>
<head>
<meta name="layout" content="main" />
<link href="${pageContext.request.contextPath}/resources/css/myCss.css"
	rel="stylesheet">

</head>

<title>Marlin's Baseball</title>

</head>
<body>
	<h1>Midwest Marlins</h1>

	<div class="sidenav">
		<a href="${context}/baseball/schedule">Schedule</a> <a
			href="${context}/baseball/add">Add Player</a>

	</div>


	<c:url var="searchBaseballUrl" value="/baseball/search" />
	<form action="${searchBaseballUrl}">
		<div align="right">
			<button class="btn btn-default filter" type="submit">
				<i class="fa fa-caret-down" aria-hidden="true"></i> Search Player
			</button>

			<input type="text" id="name" name="name" />

		</div>
	</form>

	<c:if test="${not empty player}">
		<div id="menu-outer">
			<div class="table">

				<ul id="horizontal-list">

					<c:forEach var="baseball" items="${player}">
						<img src="${baseball.cover}" height="65" width="35" />
						<li><c:out value="${baseball.name}" /></li>
						<a href="/baseball/stats?id=${baseball.id}">Player Stats</a>
						<a href="/baseball/detail?id=${baseball.id}">Player Detail</a>
						<a href="/baseball/${baseball.id}/edit">Edit</a>
						<a href="/baseball/delete?id=${baseball.id}">Delete</a>

						<br>
					</c:forEach>

				</ul>

			</div>
		</div>
		<br>
		<br>

	</c:if>
	<input type="button" onclick="location.href='${context}/baseball/'"
		value="Home">

<div class="footer">
  <p>2018 Midwest Marlins</p>
</div>
</body>

</html>