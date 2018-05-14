<%--
  Created by IntelliJ IDEA.
  User: isuri
  Date: 5/3/18
  Time: 11:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>UpdateResource</title>
</head>
<body>
<h2>------Update Resource Details------</h2>
Enter resource ID : <input type="text" name="reso_Id"><br><br>
<input type="submit" value="OK" name="reso_Id">
<h4>-----Enter resource details------</h4>
<form action="" method="post">
    <%-- Enter resource details which should be added --%>
    Add resource Name : <input type="text" name="resource_name" ><br><br>
    Add resource Scopes : <input type="text" name="scopes"><br><br>
    Add resource type : <input type="text" name="type"><br><br>
    Add resource icon uri: <input type="text" name="icon_uri"><br><br>
    Add resource description : <input type="text" name="description"><br><br>
    <input type="submit" value="Update Resource" name="upd_reso"><br><br>
    <%-- redirect page to the policy creation --%>
</form>
<hr>
<a href="AdminHomePage.jsp"><input type="submit" value="Back" name=BackButton></a>
</body>
</html>
