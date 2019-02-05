
package pkgMenu;


public class ADM {
   
    private String usuarioADM;
    private String contrasenaADN;




   private clsConn cnn=new clsConn();
    
      public String insertar3(){
        if ((verificau(usuarioADM)==true)&&(verificac(contrasenaADN)==true)){
            return "-1";
        }

      return "1";
    }
      
      public boolean verificau(String key){
String sql="SELECT * From admin where username='"+key.toString()+"'";
if (    getCnn().verificar(sql) == 1)
return true;
return false;
}
public boolean verificac(String key){
String sql="SELECT * From admin where clave='"+key.toString()+"'";
if (    getCnn().verificar(sql) == 1)
return true;
return false;
}
 
      
      public String getUsuario() {
        return usuarioADM;
    }

    /**
     * @param usuario the usuario to set
     */
    public void setUsuario(String usuario) {
        this.usuarioADM = usuario;
    }

    /**
     * @return the contrasena
     */
    public String getcontrasena() {
        return contrasenaADN;
    }

    /**
     * @param contrasena the contrasena to set
     */
    public void setcontrasena(String contrasena) {
        this.contrasenaADN = contrasena;
    }
    
    
       public clsConn getCnn() {
        return cnn;
    }
}
