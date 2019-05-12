/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Cinthia Nava
 */
public class Acceso {
    DataBase db = new DataBase();
    String sql = "";
    Connection conexion;
    PreparedStatement pst;
    ResultSet res;
    public Acceso(){
        
    }
    public int validar(String correo, String contrasena){
        int rol = 0;
        try{
            Class.forName(db.getDriver());
            conexion = DriverManager.getConnection(db.getUrl(),db.getUser(),db.getPassword());
            sql="select rol from usuario where correo = '"+correo+"' and contrasena = '"+contrasena+"'";
            pst = conexion.prepareStatement(sql);
            res = pst.executeQuery();
            while(res.next()){
                rol = res.getInt(1);
            }
            conexion.close();
            res.close();
            return rol;
        }catch(SQLException | ClassNotFoundException e){
            return rol;
        }
    }
}
