<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Users</title>

    <style>
        .fig {
            text-align: center; /* Выравнивание по центру */
        }
    </style>

</head>
<body bgcolor="#00CED1">
<div align="center">
    <h2>Users List</h2>
    <p><a href='<c:url value="/admin/create" />'>Create new</a></p>
    <table border="1" cellpadding="5">
        <tr>
            <th>Name</th>
            <th>Nickname</th>
            <th>Role</th>
            <th>Password</th>
            <th>Action</th>
        </tr>
        <c:forEach var="user" items="${users}">
            <tr>
                <td>${user.name}</td>
                <td>${user.nickname}</td>
                <td>${user.role}</td>
                <td>${user.password}</td>
                <td>
                        <%--                    <a href='<c:url value="/edit?id=${user.id}" />'>Edit</a>--%>
                    <form method="get" action='<c:url value="/admin/edit?id=${user.id}" />' style="display:inline;">
                        <input type="hidden" name="id" value="${user.id}">
                        <input type="submit" value="Edit">
                    </form>
                    <form method="post" action='<c:url value="/admin/delete" />' style="display:inline;">
                        <input type="hidden" name="id" value="${user.id}">
                        <input type="submit" value="Delete">
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
    <h6>&#169; 2019 SPstudio for JM. ALL RIGHTS RESERVED.</h6>
</div>
</body>
</html>