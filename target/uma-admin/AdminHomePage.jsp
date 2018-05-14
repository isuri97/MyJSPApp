<%--
  Created by IntelliJ IDEA.
  User: isuri
  Date: 5/3/18
  Time: 10:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin Home Page</title>
    <%--This class is use on behalf of resource owner when ccollabarating with authorization server --%>
</head>
<body>
<h2>-----Admin Home Page---------</h2>
    <a href="RegisterResource.jsp"> <input type="submit" value="Register Resource" name="reg_reso" ></a><br> <br>
    <a href="GetResource.jsp"><input type="submit" value="Get_Resource" name="get_reso" ></a><br><br>
    <a href="DeleteResource.jsp"><input type="submit" value="Delete_Resource" name="del_reso" ></a><br><br>
    <a href="UpdateResource.jsp"><input type="submit" value="Update_Resource" name="upd_reso"></a><br><br>
    <a href="GetAllResources.jsp"><input type="submit" value="Get_All_Resource" name="getA_reso" ></a><br><br>
</body>
</html>
