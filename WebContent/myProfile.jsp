<html>
<head>
	<title>Profile Saved</title>
</head>

<%
	// read form data
	String favColor = request.getParameter("favColor");
	String favMovie = request.getParameter("favMovie");

	// create the corresponding cookies
	Cookie colorCookie = new Cookie("myProfile.favColor", favColor);
	Cookie movieCookie = new Cookie("myProfile.favMovie", favMovie);
	
	// set the life span of cookie in SECONDS
	// default life span is 0, ie cookie is deleted when session ends
	// 60 sec in a min * 60 min in a hr * 24 hr in a day * 183 days in half a year
	colorCookie.setMaxAge(60*60*24*183);
	movieCookie.setMaxAge(60*60*24*183);
	
	// send cookie to the browser
	response.addCookie(colorCookie);
	response.addCookie(movieCookie);
%>

<body>
	<h2 align="center">Your Profile has been Saved</h2>
	
	Awesome! We've made some changes to your profile.
	<br/>
	<ul>
		<li>Your favorite color has been set to ${param.favColor}.</li>
		<li>Your favorite movie has been set to ${param.favMovie}.</li>
	</ul>
	
	<br/><br/>
	
	<a href="myProfileHome.jsp">Return to My Profile.</a>
</body>

</html>