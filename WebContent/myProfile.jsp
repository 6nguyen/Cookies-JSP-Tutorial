<html>
<head>
	<title>Profile Saved</title>
</head>

<%
	// read form data
	String ethnicity = request.getParameter("ethnicity");
	String favMovie = request.getParameter("favMovie");
	String favAnimal = request.getParameter("favAnimal");
	String favHobby = request.getParameter("favHobby");

	// create the corresponding cookies
	// new Cookie(cookie_name, value)
	Cookie ethnicCookie = new Cookie("myProfile.ethnicity", ethnicity);
	Cookie movieCookie = new Cookie("myProfile.favMovie", favMovie);
	Cookie animalCookie = new Cookie("myProfile.favAnimal", favAnimal);
	Cookie hobbyCookie = new Cookie("myProfile.favHobby", favHobby);
	
	// set the life span of cookie in SECONDS
	// default life span is 0, ie cookie is deleted when session ends
	// 60 sec in a min * 60 min in a hr * 24 hr in a day * 183 days in half a year
	ethnicCookie.setMaxAge(60*60*24*183);
	movieCookie.setMaxAge(60*60*24*183);
	animalCookie.setMaxAge(60*60*24*183);
	hobbyCookie.setMaxAge(60*60*24*183);
	
	// send cookie to the browser
	response.addCookie(ethnicCookie);
	response.addCookie(movieCookie);
	response.addCookie(animalCookie);
	response.addCookie(hobbyCookie);
%>

<body>
	<h2 align="center">Your Profile has been Saved</h2>
	
	Awesome! We've made some changes to your profile.
	<br/>
	<ul>
	<%
		if (ethnicity != null && !ethnicity.trim().equals("")){
			out.println("<li>Your ethnicity has been set to " + ethnicity + ".</li>");
		}
		if (favMovie != null && !favMovie.trim().equals("")){
			out.println("<li>Your favorite movie has been set to " + favMovie + ".</li>");
		}
		if (favAnimal != null && !favAnimal.trim().equals("")) {
			out.println("<li>Your favorite animal has been set to " + favAnimal + ".</li>");
		}
		if (favHobby != null && !favHobby.trim().equals("")) {
			out.println("<li>Your favorite hobby has been set to " + favHobby + ".</li>");
		}
	%>	
		
	</ul>
	
	<br/><br/>
	
	<a href="myProfileHome.jsp">Return to My Profile.</a>
</body>

</html>