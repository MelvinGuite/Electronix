package com.producto;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.google.gson.Gson;
import com.mysql.Connmysql;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class VerProducto
 */
@WebServlet("/VerProducto")
public class VerProducto extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Connmysql conn = new Connmysql();
			ResultSet rsProductos = conn.VerProducto();
			List<Map<String, Object>> MpProducto = new ArrayList<>();
			while(rsProductos.next()) {
				Map<String, Object> mapa = new HashMap<>();
				mapa.put("id_producto", rsProductos.getString("id_producto"));
				mapa.put("nombre", rsProductos.getString("nombre"));
				mapa.put("descripcion", rsProductos.getString("descripcion"));
				mapa.put("precio_venta",rsProductos.getString("precio_venta"));
				mapa.put("imagen", rsProductos.getString("imagen"));
				MpProducto.add(mapa);
			}
			
			Gson GsonData = new Gson();
			String JsonData = GsonData.toJson(MpProducto);
			
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
				
			PrintWriter out = response.getWriter();
			out.print(JsonData);
			out.flush();
			System.out.println("Mostrando productcos");
			System.out.println("JSON Data: " + JsonData); // Agrega esta línea para depurar

			conn.cerrarConexion();
		}catch(Exception e) {
			e.printStackTrace();
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
