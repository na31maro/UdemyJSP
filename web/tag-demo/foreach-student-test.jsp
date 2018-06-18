<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page import="java.util.*,com.luv2code.jsp.tagdemo.Student" %>

<%
    //sample data. normally MVC
    List<Student> data = new ArrayList<Student>();

    data.add(new Student("John","Doe",false));
    data.add(new Student("Maxwell","Johnson",false));
    data.add(new Student("Mary","Public",true));

    pageContext.setAttribute("myStudents", data);

%>


<html>

<body>

    <table>
    <tr>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Gold Customer</th>
    </tr>
        <c:forEach var="tempStudent" items="${myStudents}">
            <tr>
                <%--behind the scenes, this is actually calling the appropriate getter methods--%>
                <td> ${tempStudent.firstName}</td>
                <td>${tempStudent.lastName}</td>
                <td>
                    <c:choose>
                        <c:when test="${tempStudent.goldCustomer}">
                            Special Discount
                        </c:when>

                        <c:otherwise>
                            -
                        </c:otherwise>
                    </c:choose>

                </td>
            </tr>
        </c:forEach>
    </table>

</body>

</html>