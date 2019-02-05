<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
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
            //CONECTANOD A LA BASE DE DATOS:
            Connection con;
            String url = "jdbc:postgresql://localhost:5432/RegistroAcad";
            String Driver = "org.postgresql.Driver";
            String user = "postgres";
            String clave = "12345";
            Class.forName(Driver);
            con = DriverManager.getConnection(url, user, clave);
            //Emnpezamos Listando los Datos de la Tabla Usuario
            PreparedStatement ps;
            Statement smt;
            ResultSet rs;
            smt = con.createStatement();
            String id = request.getParameter("id");
            String ts = request.getParameter("ts");
            rs = smt.executeQuery("select alumno.*, clase.asignatura  from clase inner join alumno on clase.curso = alumno.curso where alumno.curso = " + id + "and clase.asignatura = " + ts + ";");
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
                            <a class="list-group-item" > <h3> <i class="fa fa-list fa-fw" aria-hidden="true"></i>&nbsp; Clases</h3></a>
                            <a class="list-group-item" href="NuevaClase.jsp"><i class="fa fa-plus fa-fw" aria-hidden="true"></i>&nbsp; Nueva Clase</a>
                            <a class="list-group-item" href="Clases.jsp"><i class="fa fa-bars fa-fw" aria-hidden="true"></i>&nbsp; Clases Existentes</a>
                        </div>
                        <div class="list-group">
                            <a class="list-group-item" href="#"><h4><i class="fa fa-bell fa-fw" aria-hidden="true"></i>&nbsp; Recordatorios</h4></a>
                            <a class="list-group-item" href="../Recordatorio/Recordatorio.jsp"><i class="fa fa-address-book-o fa-fw" aria-hidden="true"></i>&nbsp; Recordatorios</a>
                            <br><a class="btn btn-danger" href="../index.jsp"><i class="fa fa-power-off fa-fw"></i>&nbsp;Salir</a>
                        </div>
                    </div>
                    <div class="col-md-10">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="container-fluid">
                                    <div class="jumbotron">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <h3 class="text-center text-primary">
                                                        Información - Alumnos
                                                    </h3>
                                                </div>
                                            </div>
                                            <div class="container-fluid">
                                                <div class="col-md-2">
                                                </div>
                                                <div class="col-md-8">
                                                </div>
                                                <div class="col-md-2">
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
                                                            <th class="text-center"><h4>OPCIONES</h4></th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="tbodys">
                                                        <%
                                                            while (rs.next()) {
                                                        %>
                                                        <tr><form>
                                                        <td><%= rs.getString("primerapellido_al")%>&nbsp;<%= rs.getString("segundoapellido_al")%></td>
                                                        <td><%= rs.getString("primernombre_al")%>&nbsp;<%= rs.getString("segundonombre_al")%></td>
                                                        <td class="text-center"> <input type="text"  name="txtCed" readonly="" class="form-control" value="<%= rs.getString("cedula_al")%>"/></td>   
                                                        <td class="text-center">
                                                            <a href="AlumNota.jsp?id='<%=rs.getString("curso")%>'&&ts='<%=rs.getString("asignatura")%>'&&cd='<%=rs.getString("cedula_al")%>'" class="btn btn-primary btn-sm"><i class="fa fa-pencil-square-o">&nbsp;</i>Progreso</a>
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
                    <%  String nota, tipon, cedula, asignatura;

                        nota = request.getParameter("txtNot");
                        tipon = request.getParameter("txtTip");
                        cedula = request.getParameter("txtCed");
                        asignatura = request.getParameter("txtAsi");

                        if (nota != null && tipon != null && cedula != null && asignatura != null) {
                            ps = con.prepareStatement(" insert into nota (nota, tiponota, cedula_al, asignatura) values (9, 'vinculacion', '1726850660', 'Legislacion Informatica');");
                            ps.executeUpdate();
                            response.sendRedirect("Clases.jsp");
                        }
                    %>