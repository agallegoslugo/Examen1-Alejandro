<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : response
    Created on : 27-ago-2014, 12:44:02
    Author     : agallegos
--%>

<sql:query var="DirectorQuery" dataSource="jdbc/Alejandro">
    SELECT Nombre, Carrera FROM Director, Carrera
    WHERE Carrera.ClaveCarrera = Director.Carrera
    AND Director.NumDirector= ? <sql:param value="${param.NumDirector}"/>
</sql:query>

<c:set var="DirectorDetails" value="${DirectorQuery.rows[0]}"/>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>${DirectorDetails.Nombre}</title>
    </head>

    <body>
        <table>
            <tr>
                <th colspan="2">${DirectorDetails.Nombre}</th>
            </tr>
            <tr>
                <td><strong>Carrera </strong></td>
                <td><strong>${DirectorDetails.Carrera}</strong></td>
            </tr>
        </table>
    </body>
</html>