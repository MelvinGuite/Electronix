<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <title>Electronix GT - Iniciar Sesión</title>
</head>
<style>
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

/* ... (código anterior) ... */

.product-card {
    background-color: white;
    border: 1px solid #eee;
    border-radius: 5px;
    padding: 20px;
    margin: 15px;
    width: 300px;
    box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
    transition: transform 0.2s;
    display: flex;
    flex-direction: column;
}

.product-card:hover {
    transform: translateY(-5px);
    box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.2);
}

.product-card img {
    max-width: 100%;
    height: 180px;
    object-fit: cover;
    border-radius: 5px;
    margin-bottom: 10px;
}

.product-card h3 {
    font-size: 1.2rem;
    margin-bottom: 5px;
}

.product-card p {
    color: #777;
    margin-bottom: 10px;
    flex-grow: 1;
}

.product-card .price {
    font-size: 1.5rem;
    color: #007BFF;
    font-weight: bold;
    margin-bottom: 10px;
}

.add-to-cart {
    background-color: #007BFF;
    color: white;
    border: none;
    padding: 10px;
    border-radius: 3px;
    cursor: pointer;
    transition: background-color 0.3s;
}

.add-to-cart:hover {
    background-color: #0056b3;
}

.footer {
    text-align: center;
    background-color: #222;
    color: white;
    padding: 10px;
}

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

/* ... (código anterior) ... */

.product-card {
    background-color: white;
    border: 1px solid #eee;
    border-radius: 5px;
    padding: 20px;
    margin: 15px;
    width: 300px;
    box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
    transition: transform 0.2s;
    display: flex;
    flex-direction: column;
}

.product-card:hover {
    transform: translateY(-5px);
    box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.2);
}

.product-card img {
    max-width: 100%;
    height: 180px;
    object-fit: cover;
    border-radius: 5px;
    margin-bottom: 10px;
}

.product-card h3 {
    font-size: 1.2rem;
    margin-bottom: 5px;
}

.product-card p {
    color: #777;
    margin-bottom: 10px;
    flex-grow: 1;
}

.product-card .price {
    font-size: 1.5rem;
    color: #007BFF;
    font-weight: bold;
    margin-bottom: 10px;
}

.add-to-cart {
    background-color: #007BFF;
    color: white;
    border: none;
    padding: 10px;
    border-radius: 3px;
    cursor: pointer;
    transition: background-color 0.3s;
}

.add-to-cart:hover {
    background-color: #0056b3;
}

.footer {
    text-align: center;
    background-color: #222;
    color: white;
    padding: 10px;
}

/* ... (código posterior) ... */

/* ... (código anterior) ... */

.product-list {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 66px; /* Aumentar el espacio entre elementos */
    margin: 20px auto;
    max-width: 1200px;
}



/* ... (código posterior) ... */

</style>
<body>
    <header class="header">
        <div class="logo">Electronix GT</div>
        <nav class="nav">
            <ul class="nav-list">
                <li><a href="#">Inicio</a></li>
                <li><a href="#">Computadoras</a></li>
                <li><a href="#">Accesorios</a></li>
                <li><a href="#">Ofertas</a></li>
                <li><a href="#">Soporte</a></li>
            </ul>
        </nav>
    </header>
    
    <section class="login-form">
        <h2>Iniciar Sesión</h2>
        <form id="login">
            <input type="email" id="correo" name="correo" placeholder="Correo Electrónico">
            <input type="password" id="password" name="password" placeholder="Contraseña">
            <button type="submit">Iniciar Sesión</button>
        </form>
    </section>

    <footer class="footer">
        <p>&copy; 2023 Tienda de Tecnología. Todos los derechos reservados.</p>
    </footer>
</body>
</html>
