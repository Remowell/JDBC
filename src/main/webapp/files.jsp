<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <title>MyFiles</title>
        <link rel="stylesheet" href="style.css">
    </head>

    <body>
        <p>${generatedTime}</p>
        <p>${path}</p>
        <hr/>
        <a href="/my-app/files?path=${backPath}">Назад</a>
        <hr/>

        <table>
            <tr>
                <th>Файл</th>
                <th>Размер</th>
                <th>Дата</th>
            </tr>

            <c:forEach var="directory" items="${directories}">
                <tr>
                    <td>
                        <a href="/my-app/files?path=${directory.getAbsolutePath()}"> ${directory.getFileName()}</a>
                    </td>
                    <td>${directory.getSize()}B</td>
                    <td>${directory.getCreationDate()}</td>
                </tr>
            </c:forEach>

            <c:forEach var="binaryFile" items="${binaryFiles}">
                <tr>
                    <td>
                        <a href="/my-app/download?path=${binaryFile.getAbsolutePath()}"> ${binaryFile.getFileName()}</a>
                    </td>
                    <td>${binaryFile.getSize()}B</td>
                    <td>${binaryFile.getCreationDate()}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
