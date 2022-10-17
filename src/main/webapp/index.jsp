<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Web App</title>
</head>
<body>
<h1><%= "Simple Form" %>
</h1>
<br/>
<form method="post" action="webServlet" autocomplete="off">
    <label for="name">What's your name?</label><br>
    <input type="text" id="name" name="name"><br>
    <label for="fruit">What's your favorite fruit?</label><br>
    <input type="text" id="fruit" name="fruit"><br><br>
    <input type="submit" value="Submit">
</form>
</body>
</html>