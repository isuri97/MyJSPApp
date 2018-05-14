<%@ page import="org.servlet.Resource" %><%--
  Created by IntelliJ IDEA.
  User: isuri
  Date: 5/3/18
  Time: 11:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>GetAllResource</title>
</head>
<body>
<h2>-------Get All Resources-------</h2>
<form id="form-resource" action="" method="post">
    <input type="submit" value="Submit">
</form>


<%
    if (request.getAttribute("resource") != null) {
        Resource resource= (Resource) request.getAttribute("resource");
%>
<h3>resource_id</h3>
<div>Resource_Id: <%= resource.getResourceId()%></div>
<%--<input type="text" name="get_all_reso">--%>
<% } %>
</body>
<hr>
<a href="AdminHomePage.jsp"><input type="submit" value="Back" name=BackButton></a>
</html>