<!-- This is how you import classes in JSP. -->
<%@ page import="com.luv2code.jsp.*,java.util.ArrayList" %>
<html>

    <body>

        <h3>Hello World</h3>

        The time on the server is <%= new java.util.Date() %>

        <br/><br/><br/>

        <h4>Scriptlet Example</h4>
        <p>
            <%
                for (int i=1; i<=5; i++){
                    out.println("<br/>code: " + i);
                }
            %>
        </p>

        <br/><br/><br/>

        <!-- Class Declaration -->
        <%!
            String makeItLower(String data) {
                return data.toLowerCase();
            }
        %>

        <!--External Class Declaration -->
        <h4>Class Declaration Test</h4>
        <p>Lower case "Hello World": <%= makeItLower("Hello World")%></p>

        <h4>External Class Declaration Test</h4>
        <p>Lower case "EXTERNAL Hello World": <%= com.luv2code.jsp.FunUtils.makeItLower("EXTERNAL Hello World")%></p>

        <!--JSP Built-In Objects-->
        <p>Request user agent: <%= request.getHeader("User-Agent")%> <br>
        Request language: <%= request.getLocale()%></p>


    </body>

</html>