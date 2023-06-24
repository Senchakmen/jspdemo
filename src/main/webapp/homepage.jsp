<%@ page import="java.io.File" %>
<%@ page import="java.io.FilenameFilter" %>
<%@ page import="java.util.Objects" %>
<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: asench
  Date: 12-Jul-22
  Time: 2:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Java JSP</title>
    <style>
        .wrapper {
            display: grid;
            grid-template-columns: 1fr 1fr;
        }
    </style>
</head>
<body>
<jsp:include page="my-header.jsp"/>
<div class="wrapper">
    <div>
        <h1>JSP programs:</h1>
        <ul>
            <%
                File jsp = new File(request.getSession().getServletContext().getRealPath(request.getServletPath()));
                File dir = jsp.getParentFile();
                File[] list;
                list = dir.listFiles((dir1, name) -> name.endsWith(".jsp"));
                for (File jspFile : Objects.requireNonNull(list)) {
                    out.println("<li>" +
                            "<a href=" + request.getContextPath() + "/" + jspFile.getName() + ">" + jspFile.getName() + "</a>" +
                            "</li>");
                }
            %>
        </ul>
    </div>
    <div>
        <h1>Training Portal</h1>
        <%
            String languagePreference = "Java";
            Cookie[] cookies = request.getCookies();
            if (cookies != null) {
                Cookie cookie = Arrays.stream(cookies)
                        .filter(c -> "asench.favoriteLanguage".equals(c.getName()))
                        .findFirst()
                        .orElse(null);
                if (cookie != null)
                    languagePreference = cookie.getValue();
            }
        %>
        <h4>New books for <%= languagePreference%>
        </h4>
        <ul>
            <li>Text Text Text</li>
            <li>Text Text Text</li>
            <li>Text Text Text</li>
        </ul>
        <h4>Latest news reports for <%= languagePreference%>
        </h4>
        <ul>
            <li>Text Text Text</li>
            <li>Text Text Text</li>
            <li>Text Text Text</li>
        </ul>
        <h4>Hot Jobs for <%= languagePreference%>
        </h4>
        <ul>
            <li>Text Text Text</li>
            <li>Text Text Text</li>
            <li>Text Text Text</li>
        </ul>
        <hr>
        <a href=<%=request.getContextPath() + "/cookies-personalize-form.jsp"%>>Personalize this page</a>
    </div>
</div>
<jsp:include page="my-footer.jsp"/>
</body>
</html>
