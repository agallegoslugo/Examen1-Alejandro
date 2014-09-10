<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : index
    Created on : 27/08/2014, 12:21:47 PM
    Author     : agallegos
--%>
<sql:query var="subjects" dataSource="jdbc/Alejandro">
    SELECT ClaveCarrera, NombreCarrera FROM carrera
</sql:query>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dirección de Carreras</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <h1>Alejandro Gallegos Lugo A01232722</h1>
        <table border="0">
            <thead>
                <tr>
                    <th>Aquí encontrarás la lista de carrera y la información de cada carrera</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Para ver información de tu director de carrera selecciona tu carrera a continuación:</td>
                </tr>
                <tr>
                    <td><form action="response.jsp">
                            <strong>Selecciona Carrera:</strong>
                            <select name="Subject_id">
                                <c:forEach var="row" items="${subjects.rows}">
                                    <option value="${row.ClaveCarrera}">${row.NombreCarrera}</option>
                                </c:forEach>
                            </select>
                            <input type="submit" value="Consultar" name="submit" />
                        </form>
                    </td>
                </tr>
            </tbody>
        </table>

    </body>
</html>
