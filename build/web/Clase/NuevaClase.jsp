<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Nueva Clase</title>
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
            //Emnpezamos Listando los Datos de la Tabla Usuario pero de la fila seleccionada
            PreparedStatement al, c, ps;
            ResultSet ral, rc;
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
                                        <form >
                                            <div class="form-group">
                                                <h2>
                                                    Requisitos de la Clase
                                                </h2><br>
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-md-3">
                                                            <div class="list-group">
                                                                <a class="list-group-item" href="#"><i class="fa fa-user-circle fa-fw" aria-hidden="true"></i>&nbsp; Asignatura</a>
                                                            </div>
                                                            <div class="caja">
                                                                <select name="txtAsi">
                                                                    <option>...</option>
                                                                    <%
                                                                        al = con.prepareStatement("select * from asignatura;");
                                                                        ral = al.executeQuery();
                                                                        while (ral.next()) {
                                                                    %> 
                                                                    <option><%= ral.getString("asignatura")%></option><%}%>
                                                                </select>
                                                            </div><br> 
                                                        </div>
                                                        <div class="col-md-3">      
                                                            <div class="list-group">
                                                                <a class="list-group-item" href="#"><i class="fa fa-user fa-fw" aria-hidden="true"></i>&nbsp; Curso</a>
                                                            </div>
                                                            <div class="caja">
                                                                <select name="txtCur">
                                                                    <option >...</option>
                                                                    <%
                                                                        c = con.prepareStatement("select * from curso;");
                                                                        rc = c.executeQuery();
                                                                        while (rc.next()) {
                                                                    %> 
                                                                    <option><%= rc.getString("curso")%></option><%}%>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                        </div>
                                                        <div class="col-md-3">
                                                        </div>
                                                    </div>
                                                </div>
                                                <button type="submit" class="btn btn-primary">Guardar</button>
                                                <a class="btn btn-default" href="index.jsp">
                                                    <i class="fa fa-sign-out fa-lg"></i> Atras</a>
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
    </div>
</body>

<%  String asignatura, curso;

    asignatura = request.getParameter("txtAsi");
    curso = request.getParameter("txtCur");

    if (asignatura != null && curso != null) {
        ps = con.prepareStatement("insert into clase (asignatura, curso) values ( '" + asignatura + "', '" + curso + "' );");
        ps.executeUpdate();
        response.sendRedirect("Clases.jsp");
    }
%>
</html>
