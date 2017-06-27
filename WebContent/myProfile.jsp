<html>
<head>
	<title>Profile Saved</title>
	<h1 align="center">Your Profile has been Saved</h1>
</head>

<%
	// read form data
	String favColor = request.getParameter("favColor");

	// create the corresponding cookie
	Cookie colorCookie = new Cookie("myProfile.favColor", favColor);
	
	// set the life span of cookie in SECONDS
	// default life span is 0, ie cookie is deleted when session ends
	// 60 sec in a min * 60 min in a hr * 24 hr in a day * 183 days in half a year
	colorCookie.setMaxAge(60*60*24*183);
	
	// send cookie to the browser
	response.addCookie(colorCookie);
%>

<body>
	
</body>

</html>