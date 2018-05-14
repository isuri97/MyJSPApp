<%@ page import="org.servlet.Resource" %><%--
  Created by IntelliJ IDEA.
  User: isuri
  Date: 5/3/18
  Time: 10:21 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>GetResource</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
<h2>-----Get resource details-----</h2>
<br>
<%-- submit resourceID relavent to the resource --%>
<%--Enter Resource_ID : <input type="text" name="resource_ID"><br>--%>
<%--<input type="submit" value="OK" name="IdButton">--%>
<br>
<hr>
<%-- Display the resource details --%>
<form id="form-resource" action="/display" method="post">
    Resource ID : <input type="text" name="resource_id" id="resource_id"><br><br>
    <input type="submit" value="Submit">
</form>
    <%
        if (request.getAttribute("resource") != null) {
            Resource resource= (Resource) request.getAttribute("resource");
    %>


<h1>Resource</h1>
<div>Name: <%= resource.getName()%></div>
<div>Scopes: <%= resource.getResource_scope()%></div>
<div>Type: <%= resource.getType()%></div>
<div>Icon URI: <%= resource.getIcon_uri()%></div>
<div>Description: <%= resource.getDescription()%></div>
<% } %>

<hr>
<a href="AdminHomePage.jsp"><input type="submit" value="Back" name=BackButton></a>
</body>

</html>
