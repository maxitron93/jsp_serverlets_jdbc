<%--
  Created by IntelliJ IDEA.
  User: maxitron
  Date: 12/13/2019
  Time: 9:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Cookies</title>
  </head>
  <body>
  <h3>Cookies</h3>
  <p>Cookies allow us to personalize a website for a user. For example, by keeping track of preferences</p>
  <p>It's text data that can be exchanged between the web browser and a server</p>
  <p>It's a name-value pair.</p>
  <p>Multiple cookies can be used per page, up to about 20 cookies</p>
  <p>We get the Cookie class is the JSP page</p>

  <br>
  <h3>Cookie example</h3>
  <%-- 1: Set Country of Origin --%>
  <p>Country of Origin:</p>
  <form action="index.jsp">
    <select name="countryOfOrigin">
      <option value="Brazil"> Brazil
      <option value="France"> France
      <option value="China"> China
      <option value="Australia"> Australia
      <option value="USA"> USA
    </select>
    <br>
    <br>
    <input type="submit" value="Submit">
  </form>

  <%-- 2: Set cookie from params --%>
  <%
    // Read country of origin from params
    String countryOfOrigin = request.getParameter("countryOfOrigin");

    // Create the cookie
    Cookie newCookie = new Cookie("myApp.countryOfOrigin", countryOfOrigin);

    // Set the life span of the cookie to one year
    newCookie.setMaxAge(60*60*24*365);

    // Send the cookie to the browser
    response.addCookie(newCookie);

    // If there is something in the params, redirect
    if (countryOfOrigin != null) {
      response.sendRedirect("/cookies_war_exploded/index.jsp"); // Remove params from URL
    }
  %>

  <%-- 3: Read the data from the cookie  --%>
  <%
    String countryOfOriginFromCookie;
    Cookie[] cookies = request.getCookies();

    if (cookies != null) {
      for (Cookie cookie : cookies) {
        if(cookie.getName().equals("myApp.countryOfOrigin")) {
          countryOfOriginFromCookie = cookie.getValue();
          out.println("Country of Origin: " + countryOfOriginFromCookie);
        }
      }
    } else {
      out.println("No Cookies Found");
    }
  %>

  </body>
</html>
