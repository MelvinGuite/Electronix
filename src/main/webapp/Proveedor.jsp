<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
/* Estilos del formulario */
.registration-form {
    background-color: #222; 
    color: white;
    border: 1px solid #444;
    border-radius: 5px;
    padding: 20px;
    margin: 20px auto;
    max-width: 500px;
    box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
}

.registration-form h2 {
    margin-bottom: 10px;
}

.registration-form input,
.registration-form button {
    display: block;
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #444;
    border-radius: 3px;
    background-color: #333;
    color: white;
}

.registration-form input::placeholder {
    color: #777;
}

.registration-form button {
    background-color: #007BFF;
    color: white;
    border: none;
    cursor: pointer;
}

.registration-form button:hover {
    background-color: #0056b3;
}

</style>
</head>
<body>
<h1>${exito}</h1> 
<section class="registration-form">
    <h2>Registro proveedor</h2>
    <form id="customer-registration" action="RegistraProveedor" method="get"> 
        <input type="text" id="razon_social" name="razon_social" placeholder="Razón Social" required="required">
        <input type="text" id="nombre" name="nombre" placeholder="Nombre" required="required">
        <input type="text" id="apellido" name="apellido" placeholder="Apellido" required="required">
        <input type="number" id="nit" name="nit" placeholder="NIT" required="required">
        <input type="number" id="telefono" name="telefono" placeholder="Teléfono" required="required">
        <input type="email" id="correo" name="correo" placeholder="Correo Electrónico" required="required">
        <input type="text" id="direccion" name="direccion" placeholder="Dirección" required="required">
        <button type="submit" name="registrar" id="registrar">Registrarse</button>
        <button type="submit" name="ver" id="ver" formnovalidate="formnovalidate">Ver Proveedores</button>
    </form>
</section>

<%
Object objproveedor = request.getAttribute("proveedores");
List<String> proveedores = null;

if(objproveedor instanceof List) {
	proveedores = (List<String>) objproveedor;
	
	if(proveedores != null ) {   %>
		<h2>Listado de Proveedores </h2>
<section class="registration-form"></section>
    <h2>Lista de proveedores</h2>
<ul>
<%		for(int i = 0; i < proveedores.size(); i+=4){       
			String id = proveedores.get(i);
			String razon = proveedores.get(i + 1);
			String nombre = proveedores.get(i + 2);
			String apellido = proveedores.get(i + 3);
	%>
	<li><%=id%> <%=razon%> <%=nombre%> <%=apellido %></li>
	<%	} %>
</ul>
<%
	}
}
%>
</body>
</html>