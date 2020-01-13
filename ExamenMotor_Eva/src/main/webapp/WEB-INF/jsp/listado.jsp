<%-- 
    Document   : listado
    Created on : 13-ene-2020, 12:22:01
    Author     : Pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado Motores</title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
       
    </head>
    <body>
        <div class="hueco" style="height:50px;">
        <div class="mensaje contenedor">
            ${cartel}
        </div> 
        </div>
        <div class="contenedor">
            <div class="row">
                <h1>Listado motores</h1>
               
                <table class="table table-bordered table-striped table-hover">
                    <thead>
                        <tr>
                            <th>Modelo</th>
                            <th>Fabricante</th>
                            <th>Potencia</th>
                            <th>Peso</th>
                            <th>Cantidad</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${motores}" var="cliente">
                            <tr>
                                <td><c:out value="${motor.modelo}" /></td>
                                <td><c:out value="${motor.fabricante}" /></td>
                                <td><c:out value="${motor.potencia}" /></td>
                                <td><c:out value="${motor.peso}" /></td>
                                <td><c:out value="${motor.cantidad}" /></td>
                             </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
             <p>
                    <a href="alta.htm" class="btn btn-primary"><i class="fas fa-plus-square"></i> Nuevo</a>
                </p>
        </div>
        
</div>
    </body>
</html>
