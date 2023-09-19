<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Ver Producto</title>
    <style>
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
<div id="product-container"></div>

<div class="product-card">
    <img src="" alt="">
    <h3></h3>
    <p></p>
    <span class="price"></span>
    <form action="" method="POST">
        <input type="hidden" name="producto_id" value="">
        <input type="hidden" name="producto_nombre" value="">
        <input type="hidden" name="producto_precio" value="">
        <button type="submit" class="add-to-cart">Agregar al Carrito</button>
    </form>
</div>
    </section>
        <footer class="footer">
        <p>&copy; 2023 Tienda de Tecnología. Todos los derechos reservados.</p>
    </footer>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function() {
    $.ajax({
        type: "GET",
        url: "VerProducto", // URL del servlet
        dataType: "json",
        success: function(data) {
            // Recorrer los datos JSON y llenar las tarjetas de producto
            for (var i = 0; i < data.length; i++) {
                var product = data[i];
                var productCard = $(".product-card").eq(i);
                productCard.find("img").attr("src", product.imagen);
                productCard.find("img").attr("alt", product.nombre);
                productCard.find("h3").text(product.nombre);
                productCard.find("p").text(product.descripcion);
                productCard.find(".price").text("$" + product.precio_venta.toFixed(2));
                productCard.find("input[name='producto_id']").val(product.id_producto);
                productCard.find("input[name='producto_nombre']").val(product.nombre);
                productCard.find("input[name='producto_precio']").val(product.precio_venta.toFixed(2));
            }
        },
        error: function() {
            alert("Error al cargar los datos.");
        }
    });
});
</script>

</body>
</html>