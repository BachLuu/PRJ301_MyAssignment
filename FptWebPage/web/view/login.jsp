<!DOCTYPE html>
<html>
    <head>
        <title>Teacher Login</title>
        <link rel="stylesheet" type="text/css" href="style/login.css">
    </head>
    <body>
<!--        <div>
            <img src="img/fpt_university.jpg" width="100%">
        </div>-->
        <div class="login-form">
            <h2>Teacher Login</h2>
            <form action="login" method="post">
                <div class="form-group">
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="username" required>
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required>
                </div>
                <button type="submit">Login</button>
            </form>
        </div>
    </body>
</html>
