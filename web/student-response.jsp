<html>

<head>
    <title>Student Confirmation Title</title>
</head>

<body>
    The student is confirmed: ${param.firstName} ${param.lastName}
    <br><br>
    The student's country: ${param.country}
    <br><br>
    Programming Languages: <br>
    <ul>
        <%
            String[] langs = request.getParameterValues("favoriteLanguage");

            if(langs != null) {
                for (String s : langs) {
                    out.println("<li>" + s + "</li>");
                }
            }
        %>
    </ul>



</body>
</html>