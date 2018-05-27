<%-- 
    Document   : test
    Created on : 16/05/2018, 03:15:59 PM
    Author     : VictorAbel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="POST" action="addToCart">
            <input type="number" name="id" value="0"><br>
            <input type="radio" name="tamanio" value="Mediana"><br>
            <input type="radio" name="tamanio" value="Grande"><br>
            <input type="radio" name="tamanio" value="Familiar"><br>
            <input type="checkbox" name="extraTopping" value="1"><br>
            <input type="checkbox" name="extraTopping" value="2"><br>
            <input type="checkbox" name="extraTopping" value="3"><br>
            <input type="checkbox" name="extraTopping" value="4"><br>
            <input type="checkbox" name="extraTopping" value="5"><br>
            <input type="checkbox" name="extraTopping" value="6"><br>
            <input type="submit" value="Submit">
        </form>
    </body>
</html>
