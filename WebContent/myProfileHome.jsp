<html>
<head>
	<title>My Profile</title>
</head>

<!-- Read and get cookies from browser -->
<%
	// set the default cookie values (if there are no cookies)
	String favColor = "Red";
	String favMovie = "N/A";

	// get all cookies from the browser request
	Cookie[] cookiesArray = request.getCookies();
	
	// find the cookies and set their corresponding values
	if (cookiesArray != null) {
		for (Cookie x : cookiesArray){
			if ("myProfile.favColor".equals(x.getName())){
				favColor = x.getValue();
			}
			if ("myProfile.favMovie".equals(x.getName())){
				favMovie = x.getValue();
				break;
			}
		}
	}
%>

<body>
	<h1 align="center">My Profile</h1>

	<!-- Display a personalized page based on user's selections -->
	<h4>Favorite Color</h4>
	<ul>
		<li><%= favColor %>
	</ul>
	
	<h4>Favorite Movie</h4>
	<ul>
		<li><%= favMovie %></li>
	</ul>
	
	<!-- Add link to myProfile.html to edit page -->
	<hr>
	<a href="myProfile.html">Edit my Profile</a>
	
</body>

</html>