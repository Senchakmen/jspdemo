<%--
  Created by IntelliJ IDEA.
  User: asench
  Date: 12-Jul-22
  Time: 1:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello Java</title>
</head>
<body>
    <%!
        String capitalizeFirstLetter(String word) {
            return word.substring(0, 1).toUpperCase() + word.substring(1);
        }
    %>

    Hello andrii, sorry,  <%= capitalizeFirstLetter("andrii")%>
</body>
</html>
