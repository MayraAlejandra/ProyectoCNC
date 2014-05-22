<%-- 
    Document   : crearModelo
    Created on : 19/05/2014, 12:55:11 AM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear Modelo</title>
        <link href="${pageContext.request.contextPath}/resources/css/start/jquery-ui-1.10.4.custom.css" rel="stylesheet">
         
	<script src="${pageContext.request.contextPath}/resources/js/jquery-1.10.2.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery-ui-1.10.4.custom.js"></script>
        <script>
            $(document).ready(function() {
			$("#botonGuardarModelo").button();
                    $("#formaModelo").form();
                    
                    
		});
        </script>
    </head>
    <body>
        <h1>Crear Modelo</h1>
        <a id="botonNuevo" href="${pageContext.request.contextPath}/modelo/abrir.htm" >Abrir Proyecto existente.</a>
        <form:form id="formaModelo" action="${pageContext.request.contextPath}/modelo/guardarModelo.htm" 
                   method="POST"
                   commandName="modelo">
            <p>
		<label for="nombre">Nombre de Modelo</label>
                <input type="text" name="nombre" value="" />
            </p>
            <p>
		<label for="descripcion">Descripcion de modelo</label>
                <textarea name="descripcion" rows="4" cols="5">
                </textarea>
            </p>
            <p>
		<label for="creadoPor">Creado por: </label>
                <input type="text" name="creadoPor" value="" />
            </p>
            <p>
		<label for="unidadMedida">Unidad Medida</label>
                <select name="unidadMedida">
                    <option>milimetros</option>
                    <option>Pulgadas</option>
                </select>
            </p>
            <p>
		<label for="tipoMaquina">Tipo de Maquina</label>
                <select name="tipoMaquina">
                    <option>Fresadora</option>
                    <option>Torno</option>
                </select>
            </p>
            <p>
                <label from="puntoCeroMaquinaX">Punto Cero Maquina X: </label>
                <input type="text" name="puntoCeroMaquinaX" value="0" />
            </p>
            <p>
                <label from="puntoCeroMaquinaY">Punto Cero Maquina Y: </label>
                <input type="text" name="puntoCeroMaquinaY" value="0" />
            </p>
             <p>
                <label from="piezaAncho">Pieza Ancho: </label>
                <input type="text" name="piezaAncho" value="0" />
            </p>
             <p>
                <label from="piezaLargo">Pieza Largo: </label>
                <input type="text" name="piezaLargo" value="0" />
            </p>
            
            
            <input id="botonGuardarModelo" type="submit" value="Guardar Modelo" />
        </form:form>
    </body>
</html>