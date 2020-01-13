<%-- 
    Antes de nada añadimos los tag y los link que necesitamos para trabjar con bootstrap, script y todo lo que precisemos
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado Motores</title>
         <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
       <script
			  src="https://code.jquery.com/jquery-3.3.1.min.js"
			  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
			  crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<script>
    // En nuestro apartado de Scrip creamos dos funciones para poder ocultar el mensaje que mandamos sobre si el alta está realizada 
function ocultar() 
{
    $(".mensaje").fadeOut(2000);
} 
setTimeout("ocultar()", 2000);
    var parametro;
    function dato(p)
    {
        parametro=p
    }
    
        </script>
    </head>
    <%--A continuación creamos el listado de todos los objetos que nos aparecen en nuestra base de datos y el cartel arriba de la tabla --%>
    <body>
        <div class="hueco" style="height:50px;">
        <div class="mensaje contenedor">
            ${cartel}
        </div> 
        </div>
        <div class="contenedor">
            <div class="row col-8 offset-2">
                <h1>Listado motores</h1>
               <p class="col-8 offset-2">
                    <a href="alta.htm" class="btn btn-primary"><i class="fas fa-plus-square"></i> Nuevo</a>
                </p>
                <table class="table table-bordered table-striped table-hover">
                    <thead>
                        <tr>
                            <th>Modelo</th>
                            <th>Fabricante</th>
                            <th>Potencia</th>
                            <th>Peso</th>
                            <th>Cantidad</th>
                            <th>Óptimo</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%--Creamos un bucle con todos los motores de la lista para que nos aparezcan en la tabla sus propiedades--%>
                        <c:forEach items="${motores}" var="motor">
                            <tr>
                                <td><c:out value="${motor.modelo}" /></td>
                                <td><c:out value="${motor.fabricante}" /></td>
                                <td><c:out value="${motor.potencia}" /></td>
                                <td><c:out value="${motor.peso}" /></td>
                                <td><c:out value="${motor.cantidad}" /></td>
                                <%--Gracias a los tag de Spring podemos realizar una diferencia para rellenar la opción de óptimo
                                donde si la division del peso entre potencia es menos que 10 nos aparece que sino y un no en caso contrario--%>
                                <td><c:choose>
                                    <c:when test="${motor.peso/motor.potencia<'10'}">
                                        Sí 
                                        
                                    </c:when>    
                                    <c:otherwise>
                                        No 
                                        
                                    </c:otherwise>
                                </c:choose></td>
                             </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            
        </div>
        
</div>
    </body>
</html>
