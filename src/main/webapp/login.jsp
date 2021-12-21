<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
    </head>
    <body>
        <h1>Вход</h1>

        <form action="/my-app/login" method="post">
            Login: <input type="text" name="login"/><br>
            Password: <input type="password" name="pass"/><br>
            <input class="button" type="submit" value="Войти"/>
        </form>
        <a href='registration'>Регистрация</a>
    </body>
</html>