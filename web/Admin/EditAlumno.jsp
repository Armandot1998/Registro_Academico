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
            PreparedStatement c;
            Statement smt;
            ResultSet rs, rc;
            smt = con.createStatement();
            String id = request.getParameter("id");
            rs = smt.executeQuery("select  * from alumno where cedula_al=" + id + ";");
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
                                                    Información - Alumnos
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
                                                                                <input class="form-control" name="txtNom1" type="text"  value="<%= rs.getString("primernombre_al")%>" required="true">
                                                                            </div><br>
                                                                            <label>Segundo Nombre:</label> 
                                                                            <div class="input-group margin-bottom-sm">
                                                                                <span class="input-group-addon"><i class="fa fa-user-circle fa-fw"></i></span>
                                                                                <input class="form-control" name="txtNom2" type="text"  value="<%= rs.getString("segundonombre_al")%>" required="true">
                                                                            </div><br>
                                                                            <label>Primer Apellido:</label> 
                                                                            <div class="input-group margin-bottom-sm">
                                                                                <span class="input-group-addon"><i class="fa fa-user-circle fa-fw"></i></span>
                                                                                <input class="form-control" name="txtApe1" type="text" name="txtApe1" value="<%= rs.getString("primerapellido_al")%>" required="true">
                                                                            </div><br>
                                                                            <label>Segundo Apellido:</label> 
                                                                            <div class="input-group margin-bottom-sm">
                                                                                <span class="input-group-addon"><i class="fa fa-user-circle fa-fw"></i></span>
                                                                                <input class="form-control" name="txtApe2" type="text" name="txtApe2" value="<%= rs.getString("segundoapellido_al")%>" required="true">
                                                                            </div><br>
                                                                            <label>Cédula de Identidad:</label> 
                                                                            <div class="input-group margin-bottom-sm">
                                                                                <span class="input-group-addon"><i class="fa fa-user-circle fa-fw"></i></span>
                                                                                <input class="form-control" name="txtCed" type="text" name="txtApe2" value="<%= rs.getString("cedula_al")%>" required="true" maxlength="10">
                                                                            </div><br>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <div class="form-group"> 
                                                                            <div class="caja" >
                                                                                <select name="txtCur">
                                                                                    <option ><%= rs.getString("curso")%></option>
                                                                                    <%
                                                                                        c = con.prepareStatement("select * from curso;");
                                                                                        rc = c.executeQuery();
                                                                                        while (rc.next()) {
                                                                                    %>
                                                                                    <option><%= rc.getString("curso")%></option><%}%>
                                                                                </select>
                                                                            </div>                                                                                                                                                          
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="container-fluid">
                                                                    <div class="row">
                                                                        <div class="col-md-12">
                                                                            <div class="row">
                                                                                <div class="col-md-1">
                                                                                    <button type="submit" class="btn btn-primary">Actualizar</button> 
                                                                                </div>
                                                                                <div class="col-md-10">
                                                                                </div>
                                                                                <div class="col-md-1">
                                                                                    <a class="btn btn-default" href="Alumnos.jsp"><i class="fa fa-sign-out fa-lg"></i>&nbsp;Cancelar</a>                                                                                   
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
    <%  String nombre1, nombre2, apellido1, apellido2, cedula, curso;

        nombre1 = request.getParameter("txtNom1");
        nombre2 = request.getParameter("txtNom2");
        apellido1 = request.getParameter("txtApe1");
        apellido2 = request.getParameter("txtApe2");
        cedula = request.getParameter("txtCed");
        curso = request.getParameter("txtCur");

        if (nombre1 != null && nombre2 != null && apellido1 != null && apellido2 != null && cedula != null && curso != null) {
            ps = con.prepareStatement("update alumno set primernombre_al='" + nombre1 + "', segundonombre_al='" + nombre2 + "', primerapellido_al='" + apellido1 + "', segundoapellido_al='" + apellido2 + "', cedula_al='" + cedula + "',curso='" + curso + "'where cedula_al='" + cedula + "';");
            ps.executeUpdate();
            response.sendRedirect("Alumnos.jsp");
        }
    %>