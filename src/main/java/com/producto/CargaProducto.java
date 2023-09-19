package com.producto;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.mysql.Connmysql;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CargaProducto
 */
@WebServlet("/CargaProducto")
public class CargaProducto extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<String> arrProducto = new ArrayList<String>();
		try {
			Connmysql conn = new Connmysql();
			ResultSet rsProducto = conn.VerProducto();
			while(rsProducto.next()) {
				arrProducto.add(rsProducto.getString("id_producto"));
				arrProducto.add(rsProducto.getString("nombre"));
				arrProducto.add(rsProducto.getString("descripcion"));
				arrProducto.add(rsProducto.getString("precio_venta"));
				arrProducto.add(rsProducto.getString("imagen"));
			}
			conn.cerrarConexion();
			request.setAttribute("productos", arrProducto);
			System.out.println("Productos Cargados");
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("PaginaProducto.jsp").forward(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
