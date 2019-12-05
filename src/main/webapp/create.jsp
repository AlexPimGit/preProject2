<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add agent</title>
</head>
<body>
<h3>New agent</h3>
<form method="post" action='<c:url value="/create" />'>
    <label>Name</label><br>
    <input name="name"/><br><br>
    <label>Nickname</label><br>
    <input name="nickname" /><br><br>
    <input type="submit" value="Add" />
</form>
</body>
</html>