<%--
  Created by IntelliJ IDEA.
  User: asench
  Date: 13-Jul-22
  Time: 11:13 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    String MY_TODO_LIST = "myTodoList";
%>
<jsp:include page="my-header.jsp"/>
<form action="todo-demo.jsp">
    <label>
        Add new item:
        <input type="text" name="theItem"/>
    </label>
    <input type="submit" value="Submit">
</form>

<br/>
Item entered: <%=request.getParameter("theItem")%>
<%
    List<String> items = (List<String>) session.getAttribute(MY_TODO_LIST);

    if (items == null) {
        items = new ArrayList<>();
        session.setAttribute(MY_TODO_LIST, items);
    }

    String theItem = request.getParameter("theItem");
    boolean isItemEmpty = theItem != null && theItem.trim().equals("");
    boolean isDuplicate = theItem != null && items.contains(theItem.trim());
    if (theItem != null && !isItemEmpty && !isDuplicate)
        items.add(theItem);
%>

<hr>
<b>To Do List items:</b>
<ol>
    <%
        for (String item: items) {
            out.println("<li>" + item + "</li>");
        }
    %>
</ol>
<jsp:include page="my-footer.jsp"/>
</body>
</html>
