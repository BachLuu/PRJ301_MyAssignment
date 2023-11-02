<%-- 
    Document   : home
    Created on : Oct 23, 2023, 10:46:31 AM
    Author     : Luu Bach
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Trang chủ - Điểm danh</title>        
        <link rel="stylesheet" type="text/css" href="../style/home.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap">        
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>       
    </head>

    <body>
        <header>
            <div class="header-content">
                <img src="../img/LOGO-FPT-University.jpg" class="logo" />
                <h2>Welcome to FPT University</h2>
            </div>
        </header>
        <nav>
            <div class="links-container">
                <div class="main-links">
                    <a href="../timetable?iid=${sessionScope.iid}">Schedule</a>
                    <a href="../view-attendance">Attendance Report</a>
                    <div class="user-menu">
                        <a href="#" class="user-icon"><i class="fas fa-user"></i></a>
                        <div class="dropdown">
                            <a href="../login"><i class="fas fa-sign-in-alt"></i> Change Account</a>
                            <a href="../logout"><i class="fas fa-sign-out-alt"></i> Log out</a>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
        <div class="content">
            <img src="../img/fpt_university.jpg" alt="Image Description" />
        </div>
        <footer>
            <p>FPT University</p>
        </footer>

        <script>
            $(document).ready(function () {
                $(".user-menu").hover(function () {
                    $(".dropdown").toggle();
                });

                $(".user-icon").click(function (event) {
                    event.preventDefault();
                    $(".dropdown").toggle();
                });
            });
        </script>

    </body>
</html>
