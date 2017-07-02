<!-- To handle cookie names with white spaces, need URL Decoder -->
<%@page import="java.net.URLDecoder" %>

<html>
<head>
	<title>My Profile</title>
</head>

<!-- Read and get cookies from browser -->
<%
	// set the default cookie values (if there are no cookies)
	String fullName = "N/A";
	String gender = "N/A";
	String seeking = "N/A";
	String ethnicity = "N/A";
	String favMovie = "N/A";
	String favAnimal = "N/A";
	String favHobby = "N/A";

	// get all cookies from the browser request
	Cookie[] cookiesArray = request.getCookies();
	
	// find the cookies and set their corresponding values
	if (cookiesArray != null) {
		for (Cookie x : cookiesArray){
			if (x.getName().equals("myProfile.fullName")) {
				fullName = URLDecoder.decode(x.getValue(), "UTF-8");
			}
			if (x.getName().equals("myProfile.gender")) {
				gender = URLDecoder.decode(x.getValue(), "UTF-8");
			}
			if (x.getName().equals("myProfile.seeking")){
				seeking = URLDecoder.decode(x.getValue(), "UTF-8");
			}
			if ("myProfile.ethnicity".equals(x.getName())){
				ethnicity = URLDecoder.decode(x.getValue(), "UTF-8");
			}
			else if ("myProfile.favMovie".equals(x.getName())){
				favMovie = URLDecoder.decode(x.getValue(), "UTF-8");
			}
			else if ("myProfile.favAnimal".equals(x.getName())){
				favAnimal = URLDecoder.decode(x.getValue(), "UTF-8");
			}
			// conditional statement does same thing, just written differently
			else if (x.getName().equals("myProfile.favHobby")) {
				favHobby = URLDecoder.decode(x.getValue(), "UTF-8");
			}
		}
	}
%>

<body>
	<h1 align="center">My Profile</h1>

	<!-- Display a personalized page based on user's selections -->
	<h2><%= fullName %></h2>
	<%= gender %> interested in <%= seeking %>.
	<hr>
	
	<h4>Ethnicity</h4>
	<ul>
		<li><%= ethnicity %>
	</ul>
	
	<h4>Favorite Movie</h4>
	<ul>
		<li><%= favMovie %></li>
	</ul>
	
	<h4>Spirit Animal</h4>
	<ul>
		<li><%= favAnimal %></li>
	</ul>
	
	<h4>Favorite Hobby</h4>
	<ul>
		<li><%= favHobby %></li>
	</ul>
	
	<!-- Add link to myProfile.html to edit page -->
	<hr>
	<a href="myProfile.html">Edit my Profile</a>
	
</body>

</html>