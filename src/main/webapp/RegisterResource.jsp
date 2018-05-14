<%@ page import="org.servlet.Resource" %><%--
  Created by IntelliJ IDEA.
  User: isuri
  Date: 5/3/18
  Time: 8:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>RegisterResource</title>
</head>
<body>
<h1>----- Register Resource -----</h1>
<br>
<form id="form-resource" action="/register" method="post">
    <%-- Enter resource details which should be added --%>
    Add resource Name : <input type="text" name="resource_name" id="resource_name"><br><br>
    Add resource Scopes : <input type="text" name="scopes" id="scopes"><br><br>
    Add resource type : <input type="text" name="type" id="type"><br><br>
    Add resource icon uri: <input type="text" name="icon_uri" id="icon_uri"><br><br>
    Add resource description : <input type="text" name="description" id="description"><br><br>
    <input type="submit" value="Register Resource" name="reg_reso"><br><br>
    <%-- redirect page to the policy creation --%>
</form>


<%
    if (request.getAttribute("resource") != null) {
        Resource resource= (Resource) request.getAttribute("resource");
%>
<h3>Register Resource</h3>
<div>Resource Id: <%= resource.getResourceId()%></div>

<% } %>

<%--
<hr>
<form action="" method="get">
    Get resource Id : <input type="text" name="reso_ID">
</form>
<hr>
--%>
<a href="AdminHomePage.jsp"><input type="submit" value="Back" name=BackButton></a>
</body>
</html>
