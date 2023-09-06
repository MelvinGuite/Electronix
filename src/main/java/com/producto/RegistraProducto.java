package com.producto;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.Connmysql;

import java.io.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
/**
 * Servlet implementation class RegistraProducto
 */
@WebServlet("/RegistraProducto")
@MultipartConfig
public class RegistraProducto extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    // Obtiene el Part correspondiente al campo de entrada "imagen"
	    Part filePart = request.getPart("imagen");

	    // Obtiene el nombre original del archivo
	    String originalFileName = getFileName(filePart);

	    // Verifica si se ha seleccionado un archivo de imagen
	    if (originalFileName != null && !originalFileName.isEmpty()) {
	        // Construye la ruta completa donde se almacenará el archivo
	        String rutaAlmacenamiento = "C:\\Users\\perez\\OneDrive\\Imágenes\\Productos imagenes";
	        String rutaCompleta = rutaAlmacenamiento + File.separator + originalFileName;

	        // Abre un flujo de entrada para el archivo cargado
	        InputStream fileContent = filePart.getInputStream();

	        // Crea un archivo en la ubicación deseada y copia el contenido
	        File file = new File(rutaCompleta);
	        try (OutputStream out = new FileOutputStream(file)) {
	            int read;
	            final byte[] bytes = new byte[1024];
	            while ((read = fileContent.read(bytes)) != -1) {
	                out.write(bytes, 0, read);
	            }
	        }

	        // Ahora, el archivo se ha almacenado en la ubicación especificada
	        System.out.println("Archivo almacenado en: " + rutaCompleta);
	    
	

            // Continúa con el resto de tu lógica, por ejemplo, almacenar otros datos en una base de datos
            ArrayList<String> lista_p = new ArrayList<String>();
            lista_p.add(request.getParameter("nombreproducto"));
            lista_p.add(request.getParameter("descripcion"));
            lista_p.add(request.getParameter("codigo"));
            lista_p.add(request.getParameter("precio_v"));
            lista_p.add(request.getParameter("precio_c"));
            lista_p.add(request.getParameter("existencia"));
            lista_p.add(request.getParameter("tipo_producto"));
            lista_p.add(request.getParameter("id_proveedor"));
            lista_p.add(request.getParameter("id_bodega"));
            lista_p.add(originalFileName);
            
            Connmysql conn = null;
			try {
				conn = new Connmysql();
			
				conn.RegistraProducto(lista_p);
				conn.cerrarConexion();
	            request.setAttribute("Producto", "Producto registrado");
			} catch (SQLException e) {

				e.printStackTrace();
			}
            
        } else {
            // No se seleccionó ningún archivo, puedes manejar esto en consecuencia
            System.out.println("No se seleccionó ningún archivo.");
            request.setAttribute("Producto", "No seleccionó un archivo para cargar");
        }
        request.getRequestDispatcher("RegistroProducto.jsp").forward(request, response);
    }

    private String getFileName(Part part) {
        String contentDisposition = part.getHeader("content-disposition");
        String[] tokens = contentDisposition.split(";");
        for (String token : tokens) {
            if (token.trim().startsWith("filename")) {
                return token.substring(token.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return null;
    }
}
