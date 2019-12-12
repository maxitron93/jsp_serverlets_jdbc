<%@ page import="java.util.*" %>
<%--
  Created by IntelliJ IDEA.
  User: maxitron
  Date: 12/13/2019
  Time: 8:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>State Management</title>
  </head>
  <body>
  <h3>Session tracking</h3>
  <p>JSP session is created once for user's browser session - it's unique for the user</p>
  <p>It's commonly used when you need to keep track of the user's action</p>
  <h4>Adding data to the session</h4>
  <p>Method: session.setAttribute(String name, Object value)</p>
  <p>For example: session.setAttribute("myToDoList", items)</p>
  <h4>Getting data from the session</h4>
  <p>Method: session.getAttribute(String name)</p>
  <p>List&lt;String&gt; myStuff = (List&lt;String&gt;) session.getAttribute("myToDoList")</p>
  <h4>Other useful methods that can be used on the session Object</h4>
  <ul>
    <li>isNew()</li>
    <li>getId()</li>
    <li>invalidate() : clear up the user's session</li>
    <li>setMaxInactiveInterval(long mils) : set the idle time for a session to expire</li>
  </ul>
  <h4>Session tracking example</h4>
  <%-- 1: Create the HTML Form--%>
  <form action="index.jsp">
    <label for="theItem">Add new item:</label>
    <input id="theItem" type="text" name="theItem" required>
    <input type="submit" value="Submit">
  </form>
  <p>To clear items, submit "clear"</p>
  <%-- 2: Add new item to "To Do" list --%>
  <%--  <p>Item entered: <%= request.getParameter("theItem") %></p>--%>
  <%
    // Get the TO DO items from the session
    List<String> items = (List<String>) session.getAttribute("myToDoList");

    // if the TO DO items don't exist, then create a new one
    if (items == null) {
      items = new ArrayList<String>();
      session.setAttribute("myToDoList", items);
    }

    // see of there is form data to add
    String theItem = request.getParameter("theItem");
    if (theItem != null) {
      if (theItem.equals("clear")) {
        items.clear();
        response.sendRedirect("/state_management_war_exploded/index.jsp"); // make sure refreshing the make doesn't add the item again
      } else {
        items.add(theItem);
        response.sendRedirect("/state_management_war_exploded/index.jsp"); // make sure refreshing the make doesn't add the item again
      }
    }
  %>

  <%-- 3: Display all "To Do" items from the session --%>
  <p>To Do List:</p>
  <ol>
    <%
      for (String item : items) {
        out.println("<li>" + item + "</li>");
      }
    %>
  </ol>
  </body>
</html>
