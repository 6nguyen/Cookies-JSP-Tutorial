<html>
<head>
	<title>My Profile</title>
	<h1 align="center">My Profile</h1>
</head>

<!-- Read the favorite color cookie -->
<%
	// set the default to red (if there are no cookies)
	String favColor = "Red";

	// get cookies from the browser request
	Cookie[] cookiesArray = request.getCookies();
	
	// find the favorite color cookie
	if (cookiesArray != null) {
		for (Cookie x : cookiesArray){
			if ("myProfile.favColor".equals(x.getName())){
				favColor = x.getValue();
				break;
			}
		}
	}
%>

<body>
	<!-- Display a personalized page based on user's selections -->
	<h4>Favorite Color</h4>
	<ul>
		<li><%= favColor %>
	</ul>
	
	<!-- Add link to myProfile.html to edit page -->
	<hr>
	<a href="myProfile.html">Edit my Profile</a>
	
</body>

</html>