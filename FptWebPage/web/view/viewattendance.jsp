<%--
Document : viewattendance
Created on : Oct 28, 2023, 8:03:56 PM
Author : Luu Bach
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style/view-attendance.css">
        <title>View Attendance</title>
    </head>
    <body>
        <div class="choose-class">
            <form action="view-attendance" method="POST">
                <table border="1px">
                    <tr>
                        <th>Class</th>
                    </tr>
                    <c:forEach items="${requestScope.groups}" var="g">
                        <tr>
                            <td><input type="radio" name="class"
                                       value="${g.name}-${g.subject.name}" />${g.name}-${g.subject.name}
                            </td>
                        </tr>
                    </c:forEach>
                </table>
                <input type="submit" value="View" />
            </form>
        </div>
        <table>
            <tr>
                <th>Student Id</th>
                <th>Student Name</th>
                <th>Lession Number</th>
                <th>Total Absent</th>
                <th>Status</th>
            </tr>
            <tr>
                <c:forEach items="requestScope.group.sessions.atts.student" var="stu" >
                    <td>${stu.id}</td>
                    <td>${stu.name}</td>
                </c:forEach>
            </tr>


        </table>

    </body>
</html>
