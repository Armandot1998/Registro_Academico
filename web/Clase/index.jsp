<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>GestoN</title>
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
                            <a class="list-group-item" href="Recordatorio/Recordatorio.jsp"><i class="fa fa-address-book-o fa-fw" aria-hidden="true"></i>&nbsp; Recordatorios</a><br>
                            <a class="btn btn-danger" href="../index.jsp"><i class="fa fa-power-off fa-fw"></i>&nbsp;Salir</a>
                        </div>
                    </div>
                    <div class="col-md-10">
                        <div class="row">
                            <div class="col-md-12">
                                <img alt="Bootstrap Image Preview"  src="../imagenes/clase.jpg" 
                                     class="" height="540" width="1220" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
