<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="">
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
            //CONECTANDO A LA BASE DE DATOS:
            Connection con;
            String url = "jdbc:postgresql://localhost:5432/RegistroAcad";
            String Driver = "org.postgresql.Driver";
            String user = "postgres";
            String clave = "12345";
            Class.forName(Driver);
            con = DriverManager.getConnection(url, user, clave);
            PreparedStatement ps;
            Statement smt;
            smt = con.createStatement();

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
        <header align="right">         
        </header>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="row">
                                <div class="col-md-6">
                                </div>
                                <div class="col-md-6">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="row">
                                <div class="col-md-8">
                                    <div class="row">
                                        <div class="col-md-8">
                                            <form>
                                                <div class="form-group">   
                                                    <h3 class="text-right text-muted">Registro de Docentes</h3>
                                                    <hr align="left" noshade="noshade" size="3" width="100%" /><br>
                                                    <div class="input-group margin-bottom-sm">
                                                        <span class="input-group-addon"><i class="fa fa-user-circle fa-fw"></i></span>
                                                        <input class="form-control" name="txtNom1" type="text"  placeholder="Ingrese su primer nombre" required="true">
                                                    </div><br>
                                                    <div class="input-group margin-bottom-sm">
                                                        <span class="input-group-addon"><i class="fa fa-user-circle fa-fw"></i></span>
                                                        <input class="form-control" name="txtNom2" type="text"  placeholder="Ingrese su segundo nombre" required="true">
                                                    </div><br>
                                                    <div class="input-group margin-bottom-sm">
                                                        <span class="input-group-addon"><i class="fa fa-user-circle fa-fw"></i></span>
                                                        <input class="form-control" name="txtApe1" type="text" name="txtApe1" placeholder="Ingrese su primer apellido" required="true">
                                                    </div><br>
                                                     <div class="input-group margin-bottom-sm">
                                                        <span class="input-group-addon"><i class="fa fa-user-circle fa-fw"></i></span>
                                                        <input class="form-control" name="txtApe2" type="text" name="txtApe2" placeholder="Ingrese su segundo apellido" required="true">
                                                    </div><br>
                                                    <div class="input-group margin-bottom-sm">
                                                        <span class="input-group-addon"><i class="fa fa-id-card fa-fw" ></i></span>
                                                        <input class="form-control" name="txtCed" type="text"  placeholder="Ingrese su cédula de identidad"  maxlength="10" required="true">
                                                    </div><br>
                                                    <div class="input-group margin-bottom-sm">
                                                        <span class="input-group-addon"><i class="fa fa-envelope fa-fw"></i></span>
                                                        <input class="form-control" name="txtCor" type="text"  placeholder="Ingrese su correo electrónico" required="true">
                                                    </div><br>
                                                    <div class="input-group margin-bottom-sm">
                                                        <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                                                        <input class="form-control" name="txtUse" type="text"  placeholder="Ingrese sus nombre de usuario" required="true">
                                                    </div><br>
                                                    <div class="input-group margin-bottom-sm">
                                                        <span class="input-group-addon"><i class="fa fa-unlock-alt fa-fw"></i></span>
                                                        <input class="form-control" name="txtCla" type="text"  placeholder="Ingrese su contraseña" required="true">
                                                    </div><br>
                                                    <button type="submit" class="btn btn-primary">Guardar</button>
                                                    <a class="btn btn-default" href="../index.jsp">
                                                        <i class="fa fa-sign-out fa-lg"></i> Salir</a>
                                            </form>  
                                        </div>
                                        <div class="col-md-4">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>

    <%  String nombre1, nombre2, apellido1, apellido2, cedula, correo, username, contra, estado;

        nombre1 = request.getParameter("txtNom1");
        nombre2 = request.getParameter("txtNom2");
        apellido1 = request.getParameter("txtApe1");
        apellido2 = request.getParameter("txtApe2");
        cedula = request.getParameter("txtCed");
        correo = request.getParameter("txtCor");
        username = request.getParameter("txtUse");
        contra = request.getParameter("txtCla");
        estado = "Activo";

        if (nombre1 != null && nombre2 != null && apellido1 != null && apellido2 != null && cedula != null && correo != null && username != null && contra != null && estado != null) {
            ps = con.prepareStatement("insert into usuario values('" + nombre1 + "','" + nombre2 + "','" + apellido1 + "', '" + apellido2 + "','" + cedula + "','" + correo + "','" + username + "','" + contra + "','" + estado + "');");
            ps.executeUpdate();
            response.sendRedirect("../index.jsp");
        }
    %>
