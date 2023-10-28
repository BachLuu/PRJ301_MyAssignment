<%-- 
    Document   : timetable
    Created on : Oct 18, 2023, 2:16:05 PM
    Author     : sonnt
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Schedule</title>
        <link rel="stylesheet" type="text/css" href="style/timetable.css">
    </head>
    <body>
        <div style="text-align: center">
            <form action="timetable" method="GET">
                <input type="hidden" name="iid" value="${sessionScope.iid}"/>
                From <input type="date" value="${requestScope.from}" name="from"/> 
                To <input type="date" value="${requestScope.to}" name="to"/> 
                <input type="submit" value="View"/>
            </form>
        </div>
        <table border="1px">
            <tr>
                <th>Slot</th>
                    <c:forEach items="${requestScope.dates}" var="d">
                    <th>
                        ${d}
                    </th>
                </c:forEach>
            </tr>
            <c:forEach items="${requestScope.slots}" var="s">
                <tr>
                    <td>${s.id}.${s.description}</td>
                    <c:forEach items="${requestScope.dates}" var="d">
                        <td>
                            <c:forEach items="${requestScope.sessions}" var="k">
                                <c:if test="${k.date eq d and k.slot.id eq s.id}">
                                    <a href="attend?id=${k.id}">
                                        ${k.group.name}-${k.group.subject.name}-${k.room.id}
                                        <c:if test="${k.isAttend}">
                                            (attended)
                                        </c:if>
                                        <c:if test="${!k.isAttend}">
                                            (not yet)
                                        </c:if>
                                    </a>
                                </c:if>
                            </c:forEach>
                        </td>
                    </c:forEach>
                </tr>
            </c:forEach>

        </table>
    </body>
</html>
