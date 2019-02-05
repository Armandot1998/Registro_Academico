<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="">
    <head>
        <title>Admin</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link rel="stylesheet" type="text/css" href="../styles/bootstrap4/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="../styles/main_styles.css">
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
            Statement smt;
            ResultSet rs;
            smt = con.createStatement();

        %>    
        <div class="super_container">
            <header class="header d-flex flex-row justify-content-end align-items-center trans_300">
                <div class="logo mr-auto">
                    <a href="#">Puntuación</a>
                </div>
                <!-- Navigation -->
                <nav class="main_nav justify-self-end text-right">
                    <ul>
                        <li><a href="../index.jsp">Inicio</a></li>
                    </ul>
                </nav>
            </header>
            <div class="home">
                <div class="home_background_container prlx_parent">
                    <div class="home_background prlx" style="background-image:url(../imagenes/slider_background.jpg)"></div>
                </div>
                <div class="container">
                    <div class="container"><br><br>
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="container-fluid">
                                        <br>
                                        <div class="row">
                                            <div class="col-md-4">
                                            </div>
                                            <div class="col-md-4">
                                                <h3 class="text-right text-muted">
                                                    Bienvenido Administrador
                                                </h3>
                                            </div>
                                            <div class="col-md-4">
                                            </div>
                                        </div>
                                        <br>
                                    </div>
                                   <ul class="pagination">
                                        <li><a href="../Admin/InicioAdm.jsp">Agregar Estudiantes &emsp;|&emsp; </a></li>
                                        <li class="active"><a href="../Admin/IngCursos.jsp">Agregar Cursos&emsp;|&emsp; </a></li>
                                        <li><a href="../Admin/IngAsign.jsp">Agregar Asignaturas&emsp;|&emsp; </a></li>
                                        <li><a href="../Admin/EditEst.jsp">Editar Estudiantes&emsp;|&emsp; </a></li>
                                        <li><a href="../Admin/EditCur.jsp">Editar Cursos&emsp;|&emsp; </a></li>
                                        <li><a href="../Admin/EditAsig.jsp">Editar asignaturas</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br>
                <div class="hero_side_text_container">
                    <div class="double_arrow_container d-flex flex-column">
                        <div class="double_arrow nav_links" data-scroll-to=".icon_boxes">
                        </div>
                    </div>
                    <div class="hero_side_text">
                        <h2>&emsp;&emsp;Instituto Tecnológico Superior</h2>
                        <h2>&emsp;&emsp;YAVIRAC</h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                    </div>
                    <div class="col-md-4">
                        <form >
                            <div class="form-group">   
                                <b>  Nombres Completos:</b>
                                <input type="text" name="txtNom" class="form-control" required="true" />
                            </div>
                            <div class="form-group">
                                <b>Apellidos Completos:</b>
                                <input type="text" name="txtApe" class="form-control" required="true" />
                            </div>
                            <div class="form-group">
                                <b>Cedula de Identidad:</b>
                                <input type="text" name="txtCed" class="form-control" required="true" />
                            </div>
                            <button type="submit" class="btn btn-primary">Guardar</button>
                        </form>
                        <br><br><br><br><br><br>
                    </div>
                </div>
                </body>

                <%  String nombres, apellidos, cedula, estado;

                    nombres = request.getParameter("txtNom");
                    apellidos = request.getParameter("txtApe");
                    cedula = request.getParameter("txtCed");
                    estado = "Activo";

                    if (nombres != null && apellidos != null && cedula != null && estado != null) {
                        ps = con.prepareStatement("insert into alumno(Nombres, Apellidos, Cedula, Estado)values('" + nombres + "','" + apellidos + "','" + cedula + "','" + estado + "')");
                        ps.executeUpdate();
                        response.sendRedirect("InicioAdm.jsp");
                    }
                %>