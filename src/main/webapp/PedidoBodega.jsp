<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Solicitud de productos</title>
    <link rel="stylesheet" href="styles.css">
    <style type="text/css">
    /* Estilos generales */
body {
    font-family: Arial, sans-serif;
    margin: 0;
    p adding: 0;
    background-color: #f0f0f0;
}

header {
    background-color: #0078d4;
    color: white;
    text-align: center;
    padding: 10px 0;
}

main {
    max-width: 600px;
    margin: 20px auto;
    background-color: white;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h2 {
    font-size: 24px;
    margin-bottom: 20px;
}

/* Estilos para el formulario */
.form-group {
    margin-bottom: 20px;
}

label {
    display: block;
    font-weight: bold;
    margin-bottom: 5px;
}

input {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 3px;
}

.button-group {
    text-align: center;
}

button {
    padding: 10px 20px;
    background-color: #0078d4;
    color: white;
    border: none;
    border-radius: 3px;
    cursor: pointer;
    margin-right: 10px;
}

#cancelar {
    background-color: #ccc;
}
    </style>
</head>
<body>
<div class="loader"></div>
    <header>
        <h1>Empresa de Equipos de Cómputo</h1>
    </header>
    <main>
<h1>${registro}</h1>
        <h2>Registro de Entrada de Productos</h2>
        <form action="RegistraBodega" method="POST">
            <div class="form-group">
                <label for="producto">Producto:</label>
                <input type="text" id="producto" name="producto" required>
            </div>
            <div class="form-group">
                <label for="cantidad">Cantidad:</label>
                <input type="number" id="cantidad" name="cantidad" required>
            </div>
            <div class="form-group">
                <label for="proveedor">Proveedor:</label>
				<%
                Object objproveedor = request.getAttribute("proveedores");
                List<String> listaproveedores = null;
                if(objproveedor instanceof List){
                	listaproveedores = (List<String>) objproveedor;   %>
                <select name="Proveedor" id="Proveedor">
				<%  	if(listaproveedores != null ){  
				for(int i = 0; i<listaproveedores.size(); i += 2){ 
				String id = listaproveedores.get(i);
				String nombre = listaproveedores.get(i + 1);
				%>
                <option value="<%=id%>"><%=id+ " " +  nombre %></option>
				<%  		} %>
				<%
				}
				%>
				<%
				} else { %>
					<p>No hay registro de proveedores</p>
		<%		}
				%>
				</select>
			</div>
            <div class="button-group">
                 <button type="submit" id="ver" name="ver" formnovalidate="formnovalidate">Ver Proveedores</button>
                <button type="submit" id="guardar" name="guardar">Guardar</button>
            </div>
        </form>
    </main>
    <script>
    // Esta función se ejecutará cuando la página esté completamente cargada
    window.addEventListener('load', function () {
        // Ocultar el loader
        var loader = document.querySelector('.loader');
        loader.style.display = 'none';
    });
</script>
    
</body>

</html>
