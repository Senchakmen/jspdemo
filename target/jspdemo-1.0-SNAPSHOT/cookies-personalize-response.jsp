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
    <title>Cookies response form</title>
</head>
<%
    String favoriteLanguage = request.getParameter("favoriteLanguage");
    Cookie theCookie = null;
    if (favoriteLanguage != null && !favoriteLanguage.equals("")){
        theCookie = new Cookie("asench.favoriteLanguage", favoriteLanguage);
        theCookie.setMaxAge(60*60*24*365);
        response.addCookie(theCookie);
    }
%>
<body>
    <jsp:include page="my-header.jsp"/>
    <%
        if (theCookie != null)
            out.println("Thanks! You have set your favorite language to " + theCookie.getValue());
    %>
    <br/>
    <a href=<%=request.getContextPath() + "/homepage.jsp"%>>Return to home page</a>
    <jsp:include page="my-footer.jsp"/>
</body>
</html>
