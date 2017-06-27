<html>
<head>
	<title>My Profile</title>
</head>

<!-- Read and get cookies from browser -->
<%
	// set the default cookie values (if there are no cookies)
	String fullName = "N/A";
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
				fullName = x.getValue();
			}
			if ("myProfile.ethnicity".equals(x.getName())){
				ethnicity = x.getValue();
			}
			else if ("myProfile.favMovie".equals(x.getName())){
				favMovie = x.getValue();
			}
			else if ("myProfile.favAnimal".equals(x.getName())){
				favAnimal = x.getValue();
			}
			// conditional statement does same thing, just written differently
			else if (x.getName().equals("myProfile.favHobby")) {
				favHobby = x.getValue();
			}
		}
	}
%>

<body>
	<h1 align="center">My Profile</h1>

	<!-- Display a personalized page based on user's selections -->
	<h2><%= fullName %></h2>
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