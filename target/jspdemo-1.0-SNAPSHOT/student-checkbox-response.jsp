<%--
  Created by IntelliJ IDEA.
  User: asench
  Date: 12-Jul-22
  Time: 3:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student response for registration form</title>
</head>
<body>
    <jsp:include page="my-header.jsp"/>
    User is confirmed:
    <br/>
    Name ${param.firstName}
    <br/>
    Last Name ${param.lastName}
    <br/>
    Student's favourite programming languages are
    <ul>
    <%
        String[] languages = request.getParameterValues("favoriteLanguage") == null ? new String[]{} : request.getParameterValues("favoriteLanguage");
        for (String language :
                languages) {
            out.println("<li>" + language + "</li>");
        }
    %>
    </ul>
    <jsp:include page="my-footer.jsp"/>
</body>
</html>
