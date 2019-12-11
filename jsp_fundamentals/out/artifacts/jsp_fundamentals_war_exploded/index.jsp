<%--
  Created by IntelliJ IDEA.
  User: maxitron
  Date: 12/11/2019
  Time: 1:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>First Java App</title>
  </head>
  <body>

    <h3>Hello World of Java!</h3>
    <p>The time on the server is <%= new java.util.Date() %></p>

    <br>
    <h3>JSP Expressions</h3>
    <p>Computes an expression and renders the result in the browser is a String:</p>
    <p>2 + 2 = <%= 2 + 2 %></p>
    <p>Converting a string to uppercase: <%= new String("Hello World").toUpperCase() %></p>
    <p>25 multiplied by 4 equals <%= 25 * 4 %></p>
    <p>Is 75 less than 69? <%= 75 < 69 %></p>

    <br>
    <h3>JSP Scriplets</h3>
    <p>Allows us to insert 1 to many lines of Java code. We can use out.println() to render content to the screen</p>
    <ul>
      <%
        for(int i = 1; i <= 5; i++) {
          out.println("<li>" + i + "</li>");
        }
      %>
    </ul>
    <p>Best practice is to minimize the use of scriplets in a .jsp file. Large chunks of code and logic goes elsewhere</p>

  </body>
</html>
