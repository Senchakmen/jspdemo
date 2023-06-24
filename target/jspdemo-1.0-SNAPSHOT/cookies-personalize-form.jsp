<%--
  Created by IntelliJ IDEA.
  User: asench
  Date: 16-Jul-22
  Time: 7:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cookies personalized form</title>
</head>
<body>
<jsp:include page="my-header.jsp"/>

<form action="cookies-personalize-response.jsp">
    <label>
        Select your favorite programming language
        <select name="favoriteLanguage">
            <option>Java</option>
            <option>C#</option>
            <option>Python</option>
            <option>Progress</option>
        </select>
    </label>
    <br/>
    <input type="submit" value="Submit">
</form>

<jsp:include page="my-footer.jsp"/>
</body>
</html>
