<%@ page import="com.tap.Model.User" %>

<%
User user = (User) session.getAttribute("user");

if (user == null) {
    response.sendRedirect("login.html");
    return;
}
%>

<!DOCTYPE html>
<html>
<head>
    <title>My Profile</title>
</head>
<body>

<h2>My Profile</h2>

<p><b>Username:</b> <%= user.getUserName() %></p>
<p><b>Email:</b> <%= user.getEmail() %></p>
<p><b>Address:</b> <%= user.getAddress() %></p>
<p><b>Role:</b> <%= user.getRole() %></p>

<a href="index.jsp">Back to Home</a>

</body>
</html>