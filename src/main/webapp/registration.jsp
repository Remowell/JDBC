<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
    </head>
    <body>
        <h1>Регистрация</h1>

        <form action="/my-app/registration" method="post">
			Email: <input type="text" name="email"/><br>
            Login: <input type="text" name="login"/><br>
            Password: <input type="password" name="pass"/><br>
            <button class="button" type="submit" value="Зарегистрироваться">Зарегистрироваться</button>
        </form>
    </body>
</html>