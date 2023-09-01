<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <title>Tienda de Tecnolog�a</title>
</head>
<style>
/* ... (c�digo anterior) ... */

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

/* ... (c�digo anterior) ... */

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

/* ... (c�digo anterior) ... */

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

/* ... (c�digo anterior) ... */

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

/* ... (c�digo posterior) ... */

/* ... (c�digo anterior) ... */

.product-list {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 66px; /* Aumentar el espacio entre elementos */
    margin: 20px auto;
    max-width: 1200px;
}



/* ... (c�digo posterior) ... */

</style>
</head>
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
    
    <section class="product-list">
        <div class="product-card">
            <img src="computer1.png" alt="Computadora 1">
            <h3>Computadora de Alta Gama</h3>
            <p>Potente computadora para tareas intensivas.</p>
            <span class="price">$1,299.99</span>
            <form action="" method="POST">
                <input type="hidden" name="producto_id" value="1">
                <input type="hidden" name="producto_nombre" value="Computadora de Alta Gama">
                <input type="hidden" name="producto_precio" value="1299.99">
                <button type="submit" class="add-to-cart">Agregar al Carrito</button>
            </form>
        </div>
                <div class="product-card">
            <img src="computer1.png" alt="Computadora 1">
            <h3>Computadora de Alta Gama</h3>
            <p>Potente computadora para tareas intensivas.</p>
            <span class="price">$1,299.99</span>
            <form action="" method="POST">
                <input type="hidden" name="producto_id" value="1">
                <input type="hidden" name="producto_nombre" value="Computadora de Alta Gama">
                <input type="hidden" name="producto_precio" value="1299.99">
                <button type="submit" class="add-to-cart">Agregar al Carrito</button>
            </form>
        </div>
                <div class="product-card">
            <img src="computer1.png" alt="Computadora 1">
            <h3>Computadora de Alta Gama</h3>
            <p>Potente computadora para tareas intensivas.</p>
            <span class="price">$1,299.99</span>
            <form action="" method="POST">
                <input type="hidden" name="producto_id" value="1">
                <input type="hidden" name="producto_nombre" value="Computadora de Alta Gama">
                <input type="hidden" name="producto_precio" value="1299.99">
                <button type="submit" class="add-to-cart">Agregar al Carrito</button>
            </form>
        </div>
                <div class="product-card">
            <img src="computer1.png" alt="Computadora 1">
            <h3>Computadora de Alta Gama</h3>
            <p>Potente computadora para tareas intensivas.</p>
            <span class="price">$1,299.99</span>
            <form action="" method="POST">
                <input type="hidden" name="producto_id" value="1">
                <input type="hidden" name="producto_nombre" value="Computadora de Alta Gama">
                <input type="hidden" name="producto_precio" value="1299.99">
                <button type="submit" class="add-to-cart">Agregar al Carrito</button>
            </form>
        </div>
                <div class="product-card">
            <img src="computer1.png" alt="Computadora 1">
            <h3>Computadora de Alta Gama</h3>
            <p>Potente computadora para tareas intensivas.</p>
            <span class="price">$1,299.99</span>
            <form action="" method="POST">
                <input type="hidden" name="producto_id" value="1">
                <input type="hidden" name="producto_nombre" value="Computadora de Alta Gama">
                <input type="hidden" name="producto_precio" value="1299.99">
                <button type="submit" class="add-to-cart">Agregar al Carrito</button>
            </form>
        </div>
                <div class="product-card">
            <img src="computer1.png" alt="Computadora 1">
            <h3>Computadora de Alta Gama</h3>
            <p>Potente computadora para tareas intensivas.</p>
            <span class="price">$1,299.99</span>
            <form action="" method="POST">
                <input type="hidden" name="producto_id" value="1">
                <input type="hidden" name="producto_nombre" value="Computadora de Alta Gama">
                <input type="hidden" name="producto_precio" value="1299.99">
                <button type="submit" class="add-to-cart">Agregar al Carrito</button>
            </form>
        </div>
                <div class="product-card">
            <img src="computer1.png" alt="Computadora 1">
            <h3>Computadora de Alta Gama</h3>
            <p>Potente computadora para tareas intensivas.</p>
            <span class="price">$1,299.99</span>
            <form action="" method="POST">
                <input type="hidden" name="producto_id" value="1">
                <input type="hidden" name="producto_nombre" value="Computadora de Alta Gama">
                <input type="hidden" name="producto_precio" value="1299.99">
                <button type="submit" class="add-to-cart">Agregar al Carrito</button>
            </form>
        </div>
                <div class="product-card">
            <img src="computer1.png" alt="Computadora 1">
            <h3>Computadora de Alta Gama</h3>
            <p>Potente computadora para tareas intensivas.</p>
            <span class="price">$1,299.99</span>
            <form action="" method="POST">
                <input type="hidden" name="producto_id" value="1">
                <input type="hidden" name="producto_nombre" value="Computadora de Alta Gama">
                <input type="hidden" name="producto_precio" value="1299.99">
                <button type="submit" class="add-to-cart">Agregar al Carrito</button>
            </form>
        </div>
                <div class="product-card">
            <img src="computer1.png" alt="Computadora 1">
            <h3>Computadora de Alta Gama</h3>
            <p>Potente computadora para tareas intensivas.</p>
            <span class="price">$1,299.99</span>
            <form action="" method="POST">
                <input type="hidden" name="producto_id" value="1">
                <input type="hidden" name="producto_nombre" value="Computadora de Alta Gama">
                <input type="hidden" name="producto_precio" value="1299.99">
                <button type="submit" class="add-to-cart">Agregar al Carrito</button>
            </form>
        </div>
                <div class="product-card">
            <img src="computer1.png" alt="Computadora 1">
            <h3>Computadora de Alta Gama</h3>
            <p>Potente computadora para tareas intensivas.</p>
            <span class="price">$1,299.99</span>
            <form action="" method="POST">
                <input type="hidden" name="producto_id" value="1">
                <input type="hidden" name="producto_nombre" value="Computadora de Alta Gama">
                <input type="hidden" name="producto_precio" value="1299.99">
                <button type="submit" class="add-to-cart">Agregar al Carrito</button>
            </form>
        </div>        <div class="product-card">
            <img src="computer1.png" alt="Computadora 1">
            <h3>Computadora de Alta Gama</h3>
            <p>Potente computadora para tareas intensivas.</p>
            <span class="price">$1,299.99</span>
            <form action="" method="POST">
                <input type="hidden" name="producto_id" value="1">
                <input type="hidden" name="producto_nombre" value="Computadora de Alta Gama">
                <input type="hidden" name="producto_precio" value="1299.99">
                <button type="submit" class="add-to-cart">Agregar al Carrito</button>
            </form>
        </div>
        <!-- Agregar m�s productos aqu� -->
    </section>

    <footer class="footer">
        <p>&copy; 2023 Tienda de Tecnolog�a. Todos los derechos reservados.</p>
    </footer>
</body>
</html>


