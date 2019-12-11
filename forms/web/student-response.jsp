<html>
<head>
    <title>Student Confirmation Page</title>
</head>
<body>
    <p>The data has been accessed from params</p>
    <h3>The student has been confirmed:</h3>
    <p>First name: ${param.firstName}</p>
    <p>Last name: ${param.lastName}</p>
    <p>Country of Origin: ${param.country}</p>
    <p>Favourite Language: ${param.favouriteLanguage}</p>
    <ul>
        <%
            String[] options = request.getParameterValues("options");
            if (options != null) {
                for(String option : options) {
                    out.println("<li>" + option + "</li>");
                }
            } else {
                out.println("<li>No options selected</li>");
            }
        %>
    </ul>

</body>
</html>