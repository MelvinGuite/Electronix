package com.mysql;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class Connmysql {
	private String url = "jdbc:mysql://database-1.clrghkrtdl1q.us-east-2.rds.amazonaws.com:3306/Electronix";
	private String usuario = "admin";
    private String password = "1829372MG";
    private Connection conexion = null;
    
    //___________________________Conexion a la base de datos_____________________________________//
    public Connmysql() throws SQLException {    
    	try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conexion = DriverManager.getConnection(url, usuario, password);
           // System.out.println("Conexión establecida");
        } catch (ClassNotFoundException e) {
            System.out.println("Error al cargar el driver");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("Error en la conexión");
            e.printStackTrace();
        }
    }
    	public void cerrarConexion() {
            try {
                conexion.close();
        //        System.out.println("Conexión cerrada");
            } catch (SQLException e) {
                System.out.println("Error al cerrar la conexión");
                e.printStackTrace();
            }
        }
    	
    	//Registrar proveedor
    	
    	public void RegistraProveedor (ArrayList<String> listaProveedor) throws SQLException{
    		CallableStatement cl = conexion.prepareCall(" { call RegistraProveedor (?, ?, ?, ?, ?, ?, ? ) }");
    		cl.setString(1, listaProveedor.get(0));
    		cl.setString(2, listaProveedor.get(1));
    		cl.setString(3, listaProveedor.get(2));
    		cl.setInt(4, Integer.parseInt(listaProveedor.get(3)));
    		cl.setInt(5, Integer.parseInt(listaProveedor.get(4)));
    		cl.setString(6, listaProveedor.get(5));
    		cl.setString(7,listaProveedor.get(6));
    		cl.execute();
    		cl.close();
    	}
    	
    	//Muestra Proveedores
    	
    	public ResultSet muestra_proveedor() throws SQLException {
    		String consulta = "SELECT * FROM proveedor;";
    		Statement st = conexion.createStatement();		
    		return st.executeQuery(consulta);
    	}
    	
    	//Registro de bodega
    	public void RegistraBodega (ArrayList<String> lista) throws SQLException {
    		CallableStatement cl = conexion.prepareCall(" { CALL RegistraBodega (?, ?, ?) } ");
    		cl.setString(1, lista.get(0));
    		cl.setInt(2, Integer.parseInt(lista.get(1)));
    		cl.setInt(3, Integer.parseInt(lista.get(2)));
    		cl.execute();
    		cl.close();
    	}
    	
    	//Registro Producto 
    	public void RegistraProducto(ArrayList<String> datos) throws SQLException {
    	    CallableStatement cl = conexion.prepareCall("{call RegistraProducto (?, ?, ?, ?, ?, ?, ?, ?, ?, ?) }");
    	    cl.setString(1, datos.get(0));
    	    cl.setString(2, datos.get(1));
    	    cl.setString(3, datos.get(2));
    	    cl.setInt(4, Integer.parseInt(datos.get(3)));
    	    cl.setInt(5, Integer.parseInt(datos.get(4)));
    	    cl.setInt(6, Integer.parseInt(datos.get(5)));
    	    cl.setInt(7, Integer.parseInt(datos.get(6)));
    	    cl.setInt(8, Integer.parseInt(datos.get(7)));
    	    cl.setInt(9, Integer.parseInt(datos.get(8)));
    	    cl.setString(10, datos.get(9));
    	    
    	    // Ejecuta el procedimiento almacenado
    	    cl.execute();
    	    System.out.println("Procedimiento almacenado ejecutado");
    	    // Cierra el CallableStatement
    	    cl.close();
    	}
    	
    	//ver productos
    	public ResultSet VerProducto() throws SQLException{
    		String consulta = "select * from producto p ;";
    		PreparedStatement ps = conexion.prepareStatement(consulta);
    		return ps.executeQuery();
    	}

}



