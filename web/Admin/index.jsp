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
            String url = "jdbc:postgresql://localhost:5432/Registro";
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
            rs = smt.executeQuery("select * from profesor");
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
                            <a class="list-group-item" href="Alumnos.jsp"><i class="fa fa-bars fa-fw" aria-hidden="true"></i>&nbsp;Alumnos</a>
                            <a class="list-group-item" href="Cursos.jsp"><i class="fa fa-bars fa-fw" aria-hidden="true"></i>&nbsp;Cursos</a>
                            <a class="list-group-item" href="Asignaturas.jsp"><i class="fa fa-bars fa-fw" aria-hidden="true"></i>&nbsp;Asignaturas</a>
                        </div>
                        <div class="list-group">
                            <a class="list-group-item" href="#"> <h3> <i class="fa fa-bell fa-fw" aria-hidden="true"></i>&nbsp; Ajustes</h3></a>
                            <a class="list-group-item" href="Admins.jsp"><i class="fa fa-address-book-o fa-fw" aria-hidden="true"></i>&nbsp; Administradores</a>
                        </div>
                    </div>
                    <div class="col-md-10">
                        <div class="row">
                            <div class="col-md-12">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
