<%@ page import="org.servlet.Resource" %><%--
  Created by IntelliJ IDEA.
  User: isuri
  Date: 5/3/18
  Time: 11:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DeleteResource</title>
</head>
<body>
<h2>-------Delete Resource---------</h2>
<form id="form-dresource" action="/dresource" method="post">
Add resource Id : <input type="text" name="resource_id" id="resource_id"><br><br>
<input type="submit" name="del_reso" value="Delete resource">
</form>
<%
    if (request.getAttribute("resource") != null) {
        Resource resource= (Resource) request.getAttribute("resource");
%>

<h1>Resource</h1>
<p>resource got deleted.</p>
<% } %>

<hr>
<a href="AdminHomePage.jsp"><input type="submit" value="Back" name=BackButton></a>
</body>
</html>
