<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Ingresar producto al inventario</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        h1 {
            text-align: center;
        }

        form {
            width: 400px;
            margin: 0 auto;
        }

        label {
            display: block;
            margin-top: 10px;
        }

        input[type="text"],
        input[type="number"],
        select {
            width: 100%;
            padding: 5px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        select {
            height: 30px;
        }

        button {
            margin-top: 10px;
            background-color: #007BFF;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 3px;
            cursor: pointer;
        }
    </style>
        <script>
        function mostrarVistaPrevia() {
            var imagenInput = document.getElementById('imagen');
            var vistaPrevia = document.getElementById('vista-previa');

            if (imagenInput.files && imagenInput.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    vistaPrevia.src = e.target.result;
                };

                reader.readAsDataURL(imagenInput.files[0]);
                vistaPrevia.style.display = 'block';
            }
        }
    </script>
</head>
<body>

<h1>Registro de Producto</h1>
<h2>${Producto}</h2>
    <form method="post" action="RegistraProducto" enctype="multipart/form-data">
        <label for="nombreproducto">Nombre de Producto</label>
        <input name="nombreproducto" id="nombreproducto" type="text" placeholder="Ingrese el nombre del producto">
        
        <label for="descripcion">Descripcion</label>
        <input name="descripcion" id="descripcion" type="text" placeholder="Ingrese una descripción para el producto">
        
        <label for="codigo">Codigo de Producto</label>
        <input name="codigo" id="codigo" type="text" placeholder="Ingrese un código para producto">
        
        <label for="precio_v">Precio de venta</label>
        <input name="precio_v" id="precio_v" type="number" placeholder="Ingrese el precio de venta">
        
        <label for="precio_c">Precio de compra</label>
        <input name="precio_c" id="precio_c" type="number" placeholder="Ingrese el precio de compra">
        
        <label for="existencia">Existencia</label>
        <input name="existencia" id="existencia" type="number" placeholder="Ingrese la cantidad de producto disponible">
        
        <label for="tipo_producto">Seleccione el tipo de producto</label>
        <select id="tipo_producto" name="tipo_producto">
            <option value="1">Accesorios</option>
            <option value="2">Laptop</option>
            <option value="3">Desktop</option>
        </select>
        
        <label for="id_proveedor">Seleccione el proveedor</label>
        <select name="id_proveedor" id="id_proveedor">
            <option value="5">Productos varios</option>
            <option value="4">Importadores</option>
        </select>
        
        <label for="id_bodega">Seleccione el numero de bodega</label>
        <select name="id_bodega" id="id_bodega">
            <option value="1">1</option>
            <option value="2">2</option>
        </select>
        
        <label for="imagen">Imagen del producto</label>
        <input type="file" id="imagen" name="imagen" onchange="mostrarVistaPrevia()">
        <img id="vista-previa" src="#" alt="Vista previa de la imagen" style="display:none; max-width:200px;">
        
        <button name="guardar" id="guardar" type="submit">Guardar producto</button>
    </form>
</body>
</html>
