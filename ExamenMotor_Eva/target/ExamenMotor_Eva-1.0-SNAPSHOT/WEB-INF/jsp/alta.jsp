 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"   %>
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>
<!--Añadimos las tag necesarias para poder trabajar con el tag de formulario por ejemplo-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
        <title>Alta Motor</title>
    </head>
    <body>
        <div class="container">
            <ol class="breadcrumb">
                <!--Añadimos un enlace para poder ir al listado en caso de equivocación-->
                <li><a href="listado.htm?opcion=0">Listado de motores</a></li>
                
            </ol>
                              <!--Creamos un formulario con el tag form, en el cual añadamos arriba los errores al dar de alta un nuevo
                              motor y no pase nuestra validación, después creamos cada una de las propiedades del motor que queramos rellenar
                              y añadimos unas clases para que nos lo haga más bonito con bootstrap-->
                        <form:form method="post" commandName="motor">
                              <form:errors path="*" element="div" cssClass="alert alert-danger" />
                            <h1>Complete el formulario para dar de alta un nuevo motor</h1>
                            
                                                       
                            <p>
                                <form:label path="modelo">MODELO:</form:label>
                                <form:input path="modelo" cssClass="form-control"/>
                                
                            </p>
                            
                            <p>
                                <form:label path="fabricante">FABRICANTE:</form:label>
                                <form:input path="fabricante" cssClass="form-control" />
                            </p>
                            
                            <p>
                                <form:label path="potencia">POTENCIA:</form:label>
                                <form:input path="potencia" cssClass="form-control" />
                            </p>
                            <p>
                                <form:label path="peso">PESO:</form:label>
                                <form:input path="peso" cssClass="form-control" />
                            </p>
                            <p>
                                <form:label path="cantidad">CANTIDAD:</form:label>
                                <form:input path="cantidad" cssClass="form-control" />
                            </p>
                            <br/>
                            <input type="submit" value="Enviar" class="btn btn-danger" />
                        </form:form>
                </div>
    </body>
</html>
