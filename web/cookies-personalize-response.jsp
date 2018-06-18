<html>

<%
    //read form data
    String favLang = request.getParameter("favoriteLanguage");

    //create the cookie
    Cookie theCookie = new Cookie("myApp.favoriteLanguage", favLang);

    //set the lifespan total number of seconds
    theCookie.setMaxAge(60*60*24);

    //send cookie to browser
    response.addCookie(theCookie);
%>

<body>
    Thanks! We set your favorite language to: ${param.favoriteLanguage}
    <br><br>
</body>

</html>