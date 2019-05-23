<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Библеотека История выдачи книг</title>
        <style>
            table , td , th
            {border: 1px solid green}
        </style>
    </head>
    <body>
        <h1>История выдачи книг</h1>
        <table>
            <tr>
                <th></th>
                <th>Читатель</th>
                <th>Книга</th>
                <th>Выдача</th>
                <th>Возврат</th>
                <th></th>
            </tr>
        <c:forEach var="history" items="${listHistory}">
            <tr>
                <td>${history.id}</td>
                <td>${history.reader.name} ${history.reader.surname}</td>
                <td>${history.book.name}</td>
                <td>${history.dateKateBook}</td>
                <td>${history.dateReturnBook}</td>
                <c:if test="${history.dateReturnBook==null}">You guessed my number!
                    <td><a href="returnBook?id=${history.id}">Вернуть</a></td>
                </c:if>
                <c:if test="${history.dateReturnBook!=null}">You guessed my number!
                    <td></td>
                </c:if>
                
            </tr>
        </c:forEach>
        </table>
        <!--div style="display:flex; border: 2px solid gray;">
            <p>${history.id}  |Reader:${history.reader.name} ${history.reader.surname}  Book:${history.book.name}  | <a href="returnBook?id=${history.id}">Вернуть</a></p>
            </div-->
    </body>
</html>
