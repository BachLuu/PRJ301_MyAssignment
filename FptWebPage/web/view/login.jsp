<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="style/login.css">
        <title>Login Form</title>
    </head>
    <body>
        <div class="wrapper">
            <div class="login-container">
                <img src="img/LOGO-FPT-University.jpg"/>
                <form action="login" method="post">
                    <input type="text" class="login-input" placeholder="Username" name="username">
                    <input type="password" class="login-input" placeholder="Password" name="password">
                    <div class="remember-section">
                        <input type="checkbox" name="remember" value="remember" id="remember-checkbox">
                        <label for="remember-checkbox">Remember in this computer.</label>
                    </div>
                    <button class="login-btn" type="submit">LOGIN</button>
                </form>
            </div>
            <img src="img/login_side.png" alt="Background Image"/>
        </div>
        <script>
            document.querySelector(".login-btn").addEventListener("mouseenter", function () {
                this.style.backgroundColor = "#004999";
                this.style.color = "#ffffff";
            });

            document.querySelector(".login-btn").addEventListener("mouseleave", function () {
                this.style.backgroundColor = "";
                this.style.color = "";
            });
            let inputs = document.querySelectorAll(".login-input");
            inputs.forEach(input => {
                input.addEventListener("mouseenter", function () {
                    this.style.boxShadow = "0 0 5px #007BFF";
                });
                input.addEventListener("mouseleave", function () {
                    this.style.boxShadow = "";
                });
            });
        </script>
    </body>
</html>
