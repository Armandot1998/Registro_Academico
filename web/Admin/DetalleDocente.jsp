<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Inicio</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <link rel="shortcut icon" href="../imagenes/Logo.png">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
        <link rel="stylesheet" href="../css/style.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" 
              integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    </head>
    <body>
        <%
            //CONECTANOD A LA BASE DE DATOS:
            Connection con;
            String url = "jdbc:postgresql://localhost:5432/RegistroAcad";
            String Driver = "org.postgresql.Driver";
            String user = "postgres";
            String clave = "12345";
            Class.forName(Driver);
            con = DriverManager.getConnection(url, user, clave);
            PreparedStatement ps;
            //Emnpezamos Listando los Datos de la Tabla Usuario
            Statement smt;
            ResultSet rs;
            smt = con.createStatement();
            String id = request.getParameter("id");
            rs = smt.executeQuery("select  * from usuario where cedula_us=" + id + ";");
        %>    
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="row">
                                <div class="col-md-4">
                                </div>
                                <div class="col-md-4">
                                    <br><img alt="Bootstrap Image Preview"  src="../imagenes/Yavirac3.jpg" 
                                             class="" height="80" width="120" />
                                </div>
                                <div class="col-md-4">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                        </div>
                        <div class="col-md-4">
                            <br><img alt="Bootstrap Image Preview"  src="../imagenes/Geston.png" 
                                     class="" height="80" width="170" />
                        </div>
                    </div>
                </div>
            </div>
        </div><br>
        <header align="right"></header><br>
        <div class="container-fluid">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-2">
                        <div class="list-group">
                            <a class="list-group-item" > <h4> <i class="fa fa-list fa-fw" aria-hidden="true"></i>&nbsp; Datos Generales</h4></a>
                            <a class="list-group-item" href="Docentes.jsp"><i class="fa fa-user-circle fa-fw" aria-hidden="true"></i>&nbsp;Docentes</a>
                            <a class="list-group-item" href="Alumnos.jsp"><i class="fa fa-user-circle-o fa-fw" aria-hidden="true"></i>&nbsp;Alumnos</a>
                            <a class="list-group-item" href="Cursos.jsp"><i class="fa fa-bookmark-o fa-fw" aria-hidden="true"></i>&nbsp;Cursos</a>
                            <a class="list-group-item" href="Asignaturas.jsp"><i class="fa fa-window-restore fa-fw" aria-hidden="true"></i>&nbsp;Asignaturas</a>
                        </div>
                        <div class="list-group">
                            <a class="list-group-item" href="#"> <h3> <i class="fa fa-cog fa-fw" aria-hidden="true"></i>&nbsp; Ajustes</h3></a>
                            <a class="list-group-item" href="Admins.jsp"><i class="fa fa-address-book-o fa-fw" aria-hidden="true"></i>&nbsp; Administradores</a>
                        </div>
                    </div>
                    <div class="col-md-10">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="container-fluid">
                                    <div class="jumbotron">
                                        <div class="container-fluid">
                                            <div class="col-md-2">
                                                <div class="list-group">
                                                    <a class="btn btn-primary" href="../index.jsp"><i class="fa fa-power-off" aria-hidden="true"></i>&nbsp; Salir</a>
                                                </div>
                                            </div>
                                            <div class="col-md-8">
                                                <h3 class="text-center text-primary">
                                                    Información - Docente
                                                </h3>
                                            </div>
                                            <div class="col-md-2">                                                
                                            </div>
                                        </div> 
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="row">
                                                        <div class="col-md-1">
                                                        </div>
                                                        <div class="col-md-10">
                                                            <div class="container-fluid">
                                                                <div class="row">
                                                                    <div class="col-md-12">
                                                                        <div class="container-fluid">
                                                                            <div class="row">
                                                                                <div class="col-md-12">
                                                                                    <h3 class="text-center text-primary">
                                                                                        Detalle - Docentes
                                                                                    </h3>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div><br>
                                                            <form>
                                                                <%
                                                                    while (rs.next()) {
                                                                %>
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group"> 
                                                                            <label>Primer Nombre:</label>  
                                                                            <div class="input-group margin-bottom-sm">
                                                                                <span class="input-group-addon"><i class="fa fa-user-circle fa-fw"></i></span>
                                                                                <input class="form-control" name="txtNom1" type="text"  value="<%= rs.getString("primernombre_us")%>"  readonly="true"required="true">
                                                                            </div><br>
                                                                            <label>Segundo Nombre:</label> 
                                                                            <div class="input-group margin-bottom-sm">
                                                                                <span class="input-group-addon"><i class="fa fa-user-circle fa-fw"></i></span>
                                                                                <input class="form-control" name="txtNom2" type="text"  value="<%= rs.getString("segundonombre_us")%>" readonly="true" required="true">
                                                                            </div><br>
                                                                            <label>Primer Apellido:</label> 
                                                                            <div class="input-group margin-bottom-sm">
                                                                                <span class="input-group-addon"><i class="fa fa-user-circle fa-fw"></i></span>
                                                                                <input class="form-control" name="txtApe1" type="text" name="txtApe1" value="<%= rs.getString("primerapellido_us")%>"readonly="true"  required="true">
                                                                            </div><br>
                                                                            <label>Segundo Apellido:</label> 
                                                                            <div class="input-group margin-bottom-sm">
                                                                                <span class="input-group-addon"><i class="fa fa-user-circle fa-fw"></i></span>
                                                                                <input class="form-control" name="txtApe2" type="text" name="txtApe2" value="<%= rs.getString("segundoapellido_us")%>" readonly="true" required="true">
                                                                            </div><br>
                                                                            <label>Cédula de Identidad:</label> 
                                                                            <div class="input-group margin-bottom-sm">
                                                                                <span class="input-group-addon"><i class="fa fa-user-circle fa-fw"></i></span>
                                                                                <input class="form-control" name="txtCed" type="text" name="txtApe2" value="<%= rs.getString("cedula_us")%>" required="true" readonly="true" maxlength="10">
                                                                            </div><br>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <div class="form-group"> 
                                                                            <label>Correo Electrónico:</label>  
                                                                            <div class="input-group margin-bottom-sm">
                                                                                <span class="input-group-addon"><i class="fa fa-user-circle fa-fw"></i></span>
                                                                                <input class="form-control" name="txtCor" type="email"  value="<%= rs.getString("correo_us")%>" readonly="true" required="true">
                                                                            </div><br>
                                                                            <label>Nombre de Usuario:</label> 
                                                                            <div class="input-group margin-bottom-sm">
                                                                                <span class="input-group-addon"><i class="fa fa-user-circle fa-fw"></i></span>
                                                                                <input class="form-control" name="txtUse" type="text"  value="<%= rs.getString("username_us")%>" readonly="true" required="true">
                                                                            </div><br>
                                                                            <label>Clave de Ingreso:</label> 
                                                                            <div class="input-group margin-bottom-sm">
                                                                                <span class="input-group-addon"><i class="fa fa-user-circle fa-fw"></i></span>
                                                                                <input class="form-control" name="txtCla" type="text" name="txtApe1" value="<%= rs.getString("clave_us")%>" readonly="true" required="true">
                                                                            </div><br>                                                                                  
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="container-fluid">
                                                                    <div class="row">
                                                                        <div class="col-md-12">
                                                                            <div class="row">
                                                                                <div class="col-md-1">
                                                                                </div>
                                                                                <div class="col-md-10">
                                                                                </div>
                                                                                <div class="col-md-1">
                                                                                    <a class="btn btn-default" href="Docentes.jsp"><i class="fa fa-sign-out fa-lg"></i>&nbsp;Volver</a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                        </div>
                                                        <%}%>
                                                        </form>
                                                        <div class="col-md-1">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>