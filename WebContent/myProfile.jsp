<html>
<head>
	<title>Profile Saved</title>
</head>

<%
	// read form data
	String ethnicity = request.getParameter("ethnicity");
	String favMovie = request.getParameter("favMovie");
	String favAnimal = request.getParameter("favAnimal");

	// create the corresponding cookies
	Cookie ethnicCookie = new Cookie("myProfile.ethnicity", ethnicity);
	Cookie movieCookie = new Cookie("myProfile.favMovie", favMovie);
	Cookie animalCookie = new Cookie("myProfile.favAnimal", favAnimal);
	
	// set the life span of cookie in SECONDS
	// default life span is 0, ie cookie is deleted when session ends
	// 60 sec in a min * 60 min in a hr * 24 hr in a day * 183 days in half a year
	ethnicCookie.setMaxAge(60*60*24*183);
	movieCookie.setMaxAge(60*60*24*183);
	animalCookie.setMaxAge(60*60*24*183);
	
	// send cookie to the browser
	response.addCookie(ethnicCookie);
	response.addCookie(movieCookie);
	response.addCookie(animalCookie);
%>

<body>
	<h2 align="center">Your Profile has been Saved</h2>
	
	Awesome! We've made some changes to your profile.
	<br/>
	<ul>
		<li>Your ethnicity has been set to ${param.ethnicity}.</li>
		<li>Your favorite movie has been set to ${param.favMovie}.</li>
		<li>Your favorite animal has been set to ${param.favAnimal}.</li>
	</ul>
	
	<br/><br/>
	
	<a href="myProfileHome.jsp">Return to My Profile.</a>
</body>

</html>