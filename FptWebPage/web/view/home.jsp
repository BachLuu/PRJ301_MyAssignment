<%-- 
    Document   : home
    Created on : Oct 23, 2023, 10:46:31 AM
    Author     : Luu Bach
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Home Page</title>
        <link rel="stylesheet" type="text/css" href="../style/home.css">
    </head>
    <body>
        <header class="header">
            <div class="logo">
                <img src="../img/LOGO-FPT-University.jpg" alt="FPT Logo">
            </div>
            <div class="nav-links">
                <a href="../timetable?iid=${sessionScope.iid}">Schedule</a>
                <a href="../view-attendance">Attendance</a>
            </div>
        </header>
    </body>
</html>
