<%--
  Created by IntelliJ IDEA.
  User: isuri
  Date: 5/3/18
  Time: 12:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>RequestingResource</title>
</head>
<body>
<h2>------Requesting permissions to view resource------</h2>
<form action="" method="post">
    Add resource Id : <input type="text" name="reso_id"><br><br>
    Add resource scopes :<input type="text" name="reso_scope"><br><br>
    <input type="submit" value="OK" name="okBtn">
</form>
<hr>
Get Permission Ticket : <input type="text" name="PTicket"><br><br>
<hr>
Get Resource Name :<input type="text" name="reso_name"><br>
</body>
</html>
