

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alta Motor</title>
    </head>
    <body>
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="<c:url value="/listado.htm" />">Listado de motores</a></li>
                <li class="active">Alta motor</li>
            </ol>
                              
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
