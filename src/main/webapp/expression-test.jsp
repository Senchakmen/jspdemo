<%@ page import="java.io.IOException" %><%--
  Created by IntelliJ IDEA.
  User: asench
  Date: 11-Jul-22
  Time: 12:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP Expression</title>
</head>
<body>
    Convert String: andrii to uppercase = <%= "andrii".toUpperCase()%>
    <br/>
    100.1 < 100.01 = <%= 100.1 < 100.01 %>
    <br/>
    100.01 < 100.01 = <%= 100.01 < 100.01 %>
    <br/>
    Loop example:
    <%

        for (int i = 1; i < 4; i++) {
            try {
                out.println("<br/>Andrii loves Nastia");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    %>

</body>
</html>
