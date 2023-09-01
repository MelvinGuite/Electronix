<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <script src="script.js"></script>
    <title>Tienda de Tecnología</title>
    
    <style type="text/css">
 /* ... (código anterior) ... */

body {
    font-family: Arial, sans-serif;
    background-color: #f7f7f7;
    color: #333;
    margin: 0;
    padding: 0;
}

.header {
    background-color: #222;
    color: white;
    padding: 10px 0;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.logo {
    font-size: 1.5rem;
    margin-left: 20px;
}

.nav-list {
    list-style: none;
    display: flex;
    gap: 20px;
    margin-right: 20px;
}

.nav-list li a {
    text-decoration: none;
    color: white;
    font-weight: bold;
}

.registration-form {
    background-color: white;
    border: 1px solid #eee;
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
    border: 1px solid #ccc;
    border-radius: 3px;
}

.registration-form button {
    background-color: #007BFF;
    color: white;
    border: none;
    cursor: pointer;
}

.footer {
    text-align: center;
    background-color: #222;
    color: white;
    padding: 10px;
}

/* ... (código posterior) ... */

   
    </style>
</head>

<body>
    <header class="header">
        <div class="logo">Electronix GT</div>
        <nav class="nav">
            <ul class="nav-list">
                <li><a href="#">Inicio</a></li>
                <li><a href="Computadoras.jsp">Computadoras</a></li>
                <li><a href="#">Accesorios</a></li>
                <li><a href="#">Ofertas</a></li>
                <li><a href="#">Soporte</a></li>
            </ul>
        </nav>
    </header>
    
    <section class="registration-form">
        <h2>Regístrate</h2>
        <form id="registration">
            <input type="number" id="dpi" name="dpi" placeholder="Ingrese su DPI sin guiones">
            <input type="text" id="nombre" name="nombre" placeholder="Nombre">
            <input type="text" id="apellido" name="apellido" placeholder="Apellido">
            <input type="email" id="correo" name="correo" placeholder="Correo Electrónico">
            <input type="password" id="password" name="password" placeholder="Contraseña">
            <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Confirmar Contraseña">
            <input type="text" id="direccion" name="direccion" placeholder="Dirección">
            <input type="number" id="nit" name="nit" placeholder="NIT">
            <button type="submit">Registrarse</button>
        </form>
    </section>

    <footer class="footer">
        <p>&copy; 2023 Tienda de Tecnología. Todos los derechos reservados.</p>
    </footer>
</body>
</html>

