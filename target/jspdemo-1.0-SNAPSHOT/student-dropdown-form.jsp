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
    <form action="student-dropdown-response.jsp">
        <label for="firstName">First Name:</label>
        <input type="text" name="firstName" id="firstName"/>
        <br/>
        <label for="lastName">Last name:</label>
        <input type="text" name="lastName" id="lastName"/>
        <br/>
        <label for="selectCountry">Last name:</label>
        <select name="country" id="selectCountry">
            <option>Ukraine</option>
            <option>United Kingdom</option>
            <option>Poland</option>
            <option>USA</option>
        </select>
        <br/>
        <input type="submit" value="Submit">
    </form>
    <jsp:include page="my-footer.jsp"/>
</body>
</html>
