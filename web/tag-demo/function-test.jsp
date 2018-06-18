<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<html>

<body>

    <h3>Function Tests</h3>

    <c:set var="data" value="luv2code" />

    Length of the string <b>${data}</b>: ${fn:length(data)}
    <br><br>
    Uppercase version of the string <b>${data}</b>: ${fn:toUpperCase(data)}
    <br><br>
    Does the string <b>${data}</b> start with <b>luv</b>?: ${fn:startsWith(data,"luv")}

    <h3>Split Join Tests</h3>

    <h4>Original</h4>
    <c:set var="data2" value="Singapore,Tokyo,Mumbai,London" />
    ${data2}<br>
    <h4>Split</h4>
    <c:set var="citiesArray" value="${fn:split(data2,',')}" />
    <c:forEach var="tempCity" items="${citiesArray}">
        ${tempCity}<br>
    </c:forEach>
    <h4>Joined</h4>
    <c:set var="citiesArrayJoined" value="${fn:join(citiesArray,'*')}" />
    ${citiesArrayJoined}



</body>


</html>