<html>
<head>
	<title>My Profile</title>
	<h1 align="center">My Profile</h1>
</head>

<body>
	<!-- Read the favorite color cookie -->
	<%
		// set the default to red (if there are no cookies)
		String favCookie = "Red";
	
		// get cookies from the browser request
		Cookie[] cookiesArray = request.getCookies();
		
		// find the favorite color cookie
		if (cookiesArray != null) {
			for (Cookie x : cookiesArray){
				if ("myProfile.favColor".equals(x.getName())){
					favCookie = x.getValue();
				}
			}
		}
	%>
</body>

</html>