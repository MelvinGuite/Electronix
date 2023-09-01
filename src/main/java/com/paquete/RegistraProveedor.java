package com.paquete;

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
 * Servlet implementation class RegistraProveedor
 */
@WebServlet("/RegistraProveedor")
public class RegistraProveedor extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getParameter("registrar") != null) {
			ArrayList<String> listaprove = new ArrayList<String>();
			listaprove.add(request.getParameter("razon_social"));
			listaprove.add(request.getParameter("nombre"));
			listaprove.add(request.getParameter("apellido"));
			listaprove.add(request.getParameter("nit"));
			listaprove.add(request.getParameter("telefono"));
			listaprove.add(request.getParameter("correo"));
			listaprove.add(request.getParameter("direccion"));
			try {
				Connmysql conn = new Connmysql();
				conn.RegistraProveedor(listaprove);
				System.out.println("Proveedor registrado con exito");
				request.setAttribute("exito", "Proveedor registrado con exito");
				conn.cerrarConexion();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		if(request.getParameter("ver") != null ) {
			ArrayList<String>listadato = new ArrayList<String>();
			try {
				Connmysql conn = new Connmysql();
				ResultSet proveedores = conn.muestra_proveedor();
				while(proveedores.next()) {
					listadato.add(proveedores.getString("id_proveedor"));
					listadato.add(proveedores.getString("razon_social"));
					listadato.add(proveedores.getString("nombre"));
					listadato.add(proveedores.getString("apellido"));
			//		listadato.add(proveedores.getString("nit"));
			//		listadato.add(proveedores.getString("telefono"));
			//		listadato.add(proveedores.getString("correo"));
			//		listadato.add(proveedores.getString("direccion"));
				}
				conn.cerrarConexion();
				request.setAttribute("proveedores",listadato);
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
		request.getRequestDispatcher("Proveedor.jsp").forward(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
