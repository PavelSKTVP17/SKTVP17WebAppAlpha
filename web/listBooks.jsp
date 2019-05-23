<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Список книг в библиотеке</title>
    </head>
    <body>
        <h1>Список книг в библиотеке</h1>
        <table>
            <tr>
                <th>Название</th>
                <th>Автор</th>
            </tr>
            <c:forEach var="book" items="${listBooks}">
            <tr>
                <td>${book.name}</td>
                <td>${book.author}</td>
            </tr>
            </c:forEach>
        </table>
    </body>
</html>
