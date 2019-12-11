<%@ page import="for_import.Utils" %><%--
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

    <br>
    <h3>Declarations</h3>
    <p>We can declare a method on the JSP page and call the method on the same JSP page</p>
    <%!
      String makeItLower(String data) {
        return data.toLowerCase();
      }
    %>
    <p>Using a function to make this lower case: <%= makeItLower("THIS WILL BE CONVERTED TO LWOER") %></p>
    <p>Just like scriplets, we want to minimize the use of code on the JSP page</p>

    <br>
    <h3>Calling a Class from JSP</h3>
    <p>We can put all the needed code in another .java file and call the class in this JSP page</p>
    <p>To do that, we need to import our Utils class above</p>
    <p>Taking the number 20, and adding 10 to it using an external method: <%= Utils.addTen(20) %></p>
    <p>Now adding 10 to 406: <%= Utils.addTen(406) %></p>

    <br>
    <h3>Built in server Objects</h3>
    <p>These come by default, and include: 'request', 'response', 'out', 'sessions' and 'application'</p>
    <ul>
      <li>request</li>
      <li>response</li>
      <li>out</li>
      <li>sessions</li>
      <li>application</li>
    </ul>
    <p>Request user agent: <%= request.getHeader("User-Agent") %></p>
    <p>Request language: <%= request.getLocale()  %></p>

    <br>
    <h3>Including Files in JSP</h3>
    <p>The common use case for for including headers and footers</p>
    <p>This is adding common components</p>
    <p>The footer title below is added from another .jsp file:</p>
    <jsp:include page="my-footer.jsp" />


  </body>
</html>
