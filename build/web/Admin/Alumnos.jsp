<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Alumnos</title>
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
            rs = smt.executeQuery("select  primernombre_al||' '||segundonombre_al as nombres, primerapellido_al||' '||segundoapellido_al as apellidos, cedula_al, estado from alumno order by primerapellido_al;");
            //Creamo la Tabla:     
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
                                            <div class="row">                                               
                                            </div>
                                            <div class="container-fluid">
                                                <div class="col-md-2">
                                                </div>
                                                <div class="col-md-8">
                                                </div>
                                                <div class="col-md-2">
                                                    <div class="list-group">
                                                        <a class="list-group-item" data-toggle="modal" data-target="#myModal"><i class="fa fa-plus fa-fw" aria-hidden="true"></i>&nbsp; Nuevo</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="container">
                                            <div class="">
                                                <table class="table table-bordered">
                                                    <thead>
                                                        <tr>
                                                            <th><h4>APELLIDOS</h4></th>
                                                            <th class="text-center"><h4>NOMBRES</h4></th>
                                                            <th class="text-center"><h4>CEDULA</h4></th>
                                                            <th class="text-center"><h4>ESTADO</h4></th>
                                                            <th class="text-center"><h4>OPCIONES</h4></th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="tbodys">
                                                        <%
                                                            while (rs.next()) {
                                                        %>
                                                        <tr><form>
                                                        <td><%= rs.getString("apellidos")%></td>
                                                        <td class="text-center"><%= rs.getString("nombres")%></td>
                                                        <td class="text-center"> <input type="text"  name="txtCed" readonly="" class="form-control" value="<%= rs.getString("cedula_al")%>"/></td>
                                                        <td class="text-center">
                                                            <div class="container-fluid">
                                                                <div class="row">
                                                                    <select name="txtEst">
                                                                        <option><%= rs.getString("estado")%></option>
                                                                        <option>Activo</option>
                                                                        <option>Inactivo</option>
                                                                    </select>                                                                        
                                                                    <button type="submit" class="btn btn-default btn-xs">Actualizar</button>
                                                                </div>
                                                            </div>
                                                    </form>
                                                    </td>    
                                                    <td class="text-center">
                                                        <a href="EditAlumno.jsp?id='<%=rs.getString("cedula_al")%>'" class="btn btn-primary btn-sm"><i class="fa fa-pencil-square-o"></i> Editar</a>
                                                        <a href="DetalleAlumno.jsp?id='<%=rs.getString("cedula_al")%>'" class="btn btn-default btn-sm"><i class="fa fa-eye"></i> Detalles</a>
                                                    </td>
                                                    </tr>
                                                    <%}%>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%  String estado, cedula, nombre1, nombre2, apellido1, apellido2, cedula1, curso, estado1;

            estado = request.getParameter("txtEst");
            cedula = request.getParameter("txtCed");

            nombre1 = request.getParameter("txtNom1");
            nombre2 = request.getParameter("txtNom2");
            apellido1 = request.getParameter("txtApe1");
            apellido2 = request.getParameter("txtApe2");
            cedula1 = request.getParameter("txtCed1");
            curso = request.getParameter("txtCur");
            estado1 = "Activo";

            if (estado != null && cedula != null) {
                ps = con.prepareStatement("update alumno set estado='" + estado + "' where cedula_al='" + cedula + "';");
                ps.executeUpdate();
                response.sendRedirect("Alumnos.jsp");
            }
        %>
    </div> 
    <div class="container">          
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document" style="z-index: 9999; width: 450px">
                <div class="modal-content">
                    <div class="modal-header">                            
                        <h4 class="modal-title" id="myModalLabel">Registrar nuevo Alumno</h4>
                    </div>
                    <div class="modal-body">
                        <form action="" method="post">
                            <div class="form-group"> 
                                <label>Primer Nombre:</label>  
                                <div class="input-group margin-bottom-sm">
                                    <span class="input-group-addon"><i class="fa fa-user-circle fa-fw"></i></span>
                                    <input class="form-control" name="txtNom1" type="text" required="true">
                                </div><br>
                                <label>Segundo Nombre:</label> 
                                <div class="input-group margin-bottom-sm">
                                    <span class="input-group-addon"><i class="fa fa-user-circle fa-fw"></i></span>
                                    <input class="form-control" name="txtNom2" type="text"  required="true">
                                </div><br>
                                <label>Primer Apellido:</label> 
                                <div class="input-group margin-bottom-sm">
                                    <span class="input-group-addon"><i class="fa fa-user-circle fa-fw"></i></span>
                                    <input class="form-control" name="txtApe1" type="text" name="txtApe1" required="true">
                                </div><br>
                                <label>Segundo Apellido:</label> 
                                <div class="input-group margin-bottom-sm">
                                    <span class="input-group-addon"><i class="fa fa-user-circle fa-fw"></i></span>
                                    <input class="form-control" name="txtApe2" type="text" name="txtApe2"  required="true">
                                </div><br>
                                <label>Cédula de Identidad:</label> 
                                <div class="input-group margin-bottom-sm">
                                    <span class="input-group-addon"><i class="fa fa-user-circle fa-fw"></i></span>
                                    <input class="form-control" name="txtCed1" type="text" name="txtApe2"  required="true" maxlength="10">
                                </div><br>
                                <hr align="left" noshade="noshade" size="3" width="100%" />
                                <label>Curso:</label>
                                <select name="txtCur">
                                    <option >...................</option>
                                    <%
                                        c = con.prepareStatement("select * from curso;");
                                        rc = c.executeQuery();
                                        while (rc.next()) {
                                    %>
                                    <option><%= rc.getString("curso")%></option><%}%>
                                </select> 
                            </div>
                            <hr align="left" noshade="noshade" size="3" width="100%" />
                            <div class="row">
                                <div class="col-md-6">
                                    <button type="submit" class="btn btn-primary">Guardar</button> 
                                </div>
                                <div class="col-md-6">
                                    <a class="btn btn-default" href="Alumnos.jsp"><i class="fa fa-sign-out fa-lg"></i>&nbsp;Cancelar</a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>                    
            </div>
        </div>
        <%

            if (nombre1 != null && nombre2 != null && apellido1 != null && apellido2 != null && cedula1 != null && curso != null) {
                ps = con.prepareStatement("insert into alumno values ( '" + nombre1 + "', '" + nombre2 + "', '" + apellido1 + "','" + apellido2 + "','" + cedula1 + "','" + curso + "','" + estado1 + "');");
                ps.executeUpdate();
                response.sendRedirect("Alumnos.jsp");
            }
        %>
</body>
