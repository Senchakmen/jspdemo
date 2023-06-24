<%--
  Created by IntelliJ IDEA.
  User: asench
  Date: 12-Jul-22
  Time: 1:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h3>JSP Build-In objects</h3>
    Requested user agent: <%= request.getHeader("User-Agent")%>
    <br/>
    Requested user headers: <%= request.getHeaderNames().nextElement()%>
    <br/>
    Requested user language: <%= request.getLocale()%>

</body>
</html>
