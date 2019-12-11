<%--
  Created by IntelliJ IDEA.
  User: maxitron
  Date: 12/11/2019
  Time: 4:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Student Registration Form</title>
  </head>
  <body>
  <h1>Student Registration Form</h1>
  <p>The form data will go to student-response.jsp</p>
  <p>The data will get sent through params</p>
  <form action="student-response.jsp">
    <p>First name: <input type="text" name="firstName" /></p>
    <p>Last name: <input type="text" name="lastName" /></p>
    <select name="country">
      <option value="Brazil">Brazil</option>
      <option value="Mexico">Mexico</option>
      <option value="Canada">Canada</option>
      <option value="Madagascar">Madagascar</option>
      <option value="France">France</option>
      <option value="USA">USA</option>
      <option value="New Zealand">New Zealand</option>
    </select>
    <br>
    <br>
    <input type="radio" name="favouriteLanguage" value="Java"> Java
    <input type="radio" name="favouriteLanguage" value="Ruby"> Ruby
    <input type="radio" name="favouriteLanguage" value="Python"> Python
    <input type="radio" name="favouriteLanguage" value="JavaScript"> JavaScript
    <br>
    <br>
    <input type="checkbox" name="options" value="Option 1"> Option 1
    <input type="checkbox" name="options" value="Option 2"> Option 2
    <input type="checkbox" name="options" value="Option 3"> Option 3
    <input type="checkbox" name="options" value="Option 4"> Option 4
    <input type="checkbox" name="options" value="Option 5"> Option 5
    <br>
    <br>
    <input type="submit" value="Submit" />
  </form>

  </body>
</html>
