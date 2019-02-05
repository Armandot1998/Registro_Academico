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
            pkgMenu.ADM p = new pkgMenu.ADM();
            p.setUsuario(request.getParameter("usuario"));
            p.setcontrasena(request.getParameter("contrasena"));
            String res = p.insertar3();
            if (res.equals("-1")) {
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
                                <img alt="Bootstrap Image Preview"  src="../imagenes/admin.jpg" 
                                     class="" height="540" width="1220" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%
} else if (res.equals("1")) {%>
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
                        </div>
                    </div>
                </div>
            </div>
        </div><br>
        <header align="right"></header>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="row">
                                <div class="col-md-6">
                                </div>
                                <div class="col-md-6"><br>
                                    <form role="form" action="validardatos.jsp" method="post" >
                                        <center><h4>Bienvenido Administrador </h4></center>   
                                        <hr align="left" noshade="noshade" size="3" width="100%" />
                                        <div class="input-group margin-bottom-sm">
                                            <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                                            <input class="form-control" name="usuario" type="text"  placeholder="Usuario" required="true">
                                        </div><br>
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-key fa-fw"></i></span>
                                            <input class="form-control" name="contrasena" type="password" placeholder="Contraseña" required="true">
                                        </div><br>
                                        <button type="submit" class="btn btn-primary">
                                            Entrar
                                        </button>
                                        <div class="btn-group">
                                            <a class="btn btn-default" href="../index.jsp">
                                                <i class="fa fa-sign-out fa-lg"></i>&nbsp;Salir</a>
                                        </div>
                                    </form>
                                    <hr align="left" noshade="noshade" size="3" width="100%" />
                                    <div class="alert alert-danger" role="alert">
                                        <% out.print("El usuario o la clave son incorrectos");%>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <img alt="Bootstrap Image Preview" src="../imagenes/Geston.png" height="440" width="800"  /> 
                        </div>                 
                        <div class="col-md-4">      
                        </div>               
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                </div>
            </div>
        </div>
        <%}%>
    </body>
</html>
</body>
</html>