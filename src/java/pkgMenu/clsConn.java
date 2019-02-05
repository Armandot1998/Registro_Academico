package pkgMenu;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class clsConn implements Serializable{
    ResultSet res=null;
    private Connection con= null;
    Statement st=null;
    
    String driver="org.postgresql.Driver";
    String url="jdbc:postgresql://localhost:5432/RegistroAcad";
    String userDB="postgres";
    String passDB="12345";

    public clsConn(){
        conectar();
    }
    public int conectar(){
        try{
            Class.forName(driver);
        }
        catch (ClassNotFoundException e){
            System.out.println("No se pudo cargal el driver :-( "+driver);
			return -1;

        }
        try{
            con=DriverManager.getConnection(url,userDB,passDB);
        }
        catch(SQLException e){
            System.out.println("No se pudo realizar la conexion :-(");
			return -2;
        }
	return 1;
    }

    public String buscarS(String sql){
        try{
            ResultSet r=null;
            st=getCon().createStatement();
            r=st.executeQuery(sql);
            r.next();
            return r.getString(1);
        }
        catch(SQLException e){
            return "-1";
        }
    }

    public String buscarC(String sql, int c){
        try{
            ResultSet r=null;
            st=getCon().createStatement();
            r=st.executeQuery(sql);
            if (r.next());
                return r.getString(c);
        }
        catch(SQLException e){
            return "-1";
        }
    }

    public SQLException insertar(String sql){
        try{
            st=getCon().createStatement();
            st.execute(sql);
            st.close();
            return null;
         }
        catch(SQLException e){
	    return e;
        }
     }

     public ResultSet consultar(String sql){
         try{
            st=getCon().createStatement();
            res= st.executeQuery(sql);
         }
        catch(SQLException e){
            return null;
        }
         return res;
     }

    public int verificar(String sql){
        try{
            st=getCon().createStatement();
            res= st.executeQuery(sql);
            if (res.next())
                return 1;
            st.close();
        }
        catch(SQLException e){
            System.out.println(e);
        }
        return -1;
    }

    public int actualizar(String sql){
        try{
            st=getCon().createStatement();
            st.executeUpdate(sql);
            st.close();
            return 1;
         }
        catch(SQLException e){
            System.out.println(e);
        }
        return -1;
    }
    public Connection getCon() {
        return con;
    }
}