<%--
  Created by IntelliJ IDEA.
  User: asench
  Date: 12-Jul-22
  Time: 3:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student registration form</title>
</head>
<body>
    <jsp:include page="my-header.jsp"/>
    <form action="student-checkbox-response.jsp">
        <label for="firstName">First Name:</label>
        <input type="text" name="firstName" id="firstName"/>
        <br/>
        <label for="lastName">Last name:</label>
        <input type="text" name="lastName" id="lastName"/>
        <br/>
        <label>
            <input type="checkbox" name="favoriteLanguage" id="Java" value="JAVA">
            Java
        </label>
        <label>
            <input type="checkbox" name="favoriteLanguage" id="C#" value="C#">
            C#
        </label>
        <label>
            <input type="checkbox" name="favoriteLanguage" id="C++" value="C++">
            C++
        </label>
        <label>
            <input type="checkbox" name="favoriteLanguage" id="Python" value="Python">
            Python
        </label>
        <label>
            <input type="checkbox" name="favoriteLanguage" id="Progress" value="Progress">
            Progress
        </label>
        <br/>
        <input type="submit" value="Submit">
    </form>
    <jsp:include page="my-footer.jsp"/>
</body>
</html>
