<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ventana Emergente</title>
    <style>
        /* Estilo para la ventana emergente */
        .popup {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5); /* Fondo semi-transparente */
            z-index: 1;
            justify-content: center;
            align-items: center;
        }

        /* Estilo para el contenido de la ventana emergente */
        .popup-content {
            background-color: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.5);
        }
    </style>
</head>
<body>
    <!-- Botón para abrir la ventana emergente y cargar los datos -->
    <button onclick="mostrarVentana()">Ver Detalle</button>

    <!-- Ventana emergente (igual que antes) -->
    <div id="miVentana" class="popup">
        <div class="popup-content">
            <!-- Contenido de la ventana emergente donde se mostrarán los datos de la base de datos -->
            <h2>Detalle del Producto</h2>
            <div id="detalleProducto"></div>
            <button onclick="cerrarVentana()">Cerrar</button>
        </div>
    </div>

    <!-- JavaScript para hacer la solicitud al Servlet y mostrar los datos -->
    <script>
        function mostrarVentana() {
            var ventanaEmergente = document.getElementById("miVentana");
            ventanaEmergente.style.display = "block";

            // Realiza una solicitud al Servlet para obtener los datos
            fetch('DetalleProductoServlet')
                .then(response => response.json())
                .then(data => {
                    // Actualiza el contenido de la ventana emergente con los datos recibidos
                    var detalleProductoElement = document.getElementById("detalleProducto");
                    detalleProductoElement.innerHTML = `
                        <p>Nombre: ${data.nombre}</p>
                        <p>Precio: ${data.precio}</p>
                        <!-- Agrega otros campos aquí -->
                    `;
                })
                .catch(error => console.error('Error:', error));
        }

        function cerrarVentana() {
            var ventanaEmergente = document.getElementById("miVentana");
            ventanaEmergente.style.display = "none";
        }
    </script>
</body>
</html>
</html>
    