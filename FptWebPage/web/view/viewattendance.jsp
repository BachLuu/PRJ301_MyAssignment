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
        <div style="display: flex; flex-direction: column;">
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
            <div>
                <table border="1px">
                    <tr>
                        <th>Student Id</th>
                        <th>Student Name</th>
                            <c:forEach items="${requestScope.group.sessions}"
                                       var="ses">
                            <th>Lesson No.${ses.index}</th>
                            </c:forEach>
                        <th>Total Absent</th>
                    </tr>
                    <c:forEach items="${requestScope.group.students}" var="stu">
                        <tr>
                            <td>${stu.id}</td>
                            <td>${stu.name}</td>
                            <c:forEach items="${requestScope.group.sessions}" var="ses">
                                <c:forEach items="${ses.atts}" var="att">
                                    <c:if test="${att.student.id eq stu.id}">
                                        <td>${att.status ? 'present' : 'absent'}</td>
                                    </c:if>
                                </c:forEach>
                            </c:forEach>
                            <td <c:if test="${stu.absentPercent > 20}">style="color: red"</c:if>>
                                ${stu.absentPercent}%
                            </td>                            
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </body>
</html>
