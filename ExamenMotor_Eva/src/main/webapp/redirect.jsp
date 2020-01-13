<%--
Para que nada más entrar en el proyecto al ejecutar el programa nos redireccione a nuestra página de inicio que es el listado en el este caso
Tenemos la opción 0 para que no nos añada ningún mensaje al entrar
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% response.sendRedirect("listado.htm?opcion=0"); %>
