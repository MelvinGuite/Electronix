package com.bodega;

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
 * Servlet implementation class RegistraBodega
 */
@WebServlet("/RegistraBodega")
public class RegistraBodega extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<String> ListaPedido = new ArrayList<String>();
		
		if(request.getParameter("guardar") != null ) {
			ListaPedido.add(request.getParameter("producto"));
			ListaPedido.add(request.getParameter("cantidad"));
			ListaPedido.add(request.getParameter("Proveedor"));
			try {
				Connmysql conn = new Connmysql();
				conn.RegistraBodega(ListaPedido);
				conn.cerrarConexion();
				request.setAttribute("registro", "Pedido registrado");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		if(request.getParameter("ver") != null ) {
			ArrayList<String> listaproveedor = new ArrayList<String>();
			
			try {
				Connmysql conn = new Connmysql();
				ResultSet proveedores =  conn.muestra_proveedor();
				while(proveedores.next()) {
					listaproveedor.add(proveedores.getString("id_proveedor"));
					listaproveedor.add(proveedores.getString("razon_social"));
				}
				conn.cerrarConexion();
				request.setAttribute("proveedores", listaproveedor);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		request.getRequestDispatcher("PedidoBodega.jsp").forward(request, response);
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
