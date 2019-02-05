<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Calificaciones</title>
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
            ResultSet rs, rc;
            smt = con.createStatement();
            String id = request.getParameter("id");
            String ts = request.getParameter("ts");
            String cd = request.getParameter("cd");
            rs = smt.executeQuery("select alumno.*, clase.asignatura  from clase inner join alumno on clase.curso = alumno.curso where alumno.curso = " + id + " and clase.asignatura = " + ts + " and cedula_al=" + cd + ";");
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
                                                                                        Progreso del Estudiante
                                                                                    </h3>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div><br>

                                                            <%
                                                                while (rs.next()) {
                                                            %>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="form-group"> 
                                                                        <label><h4>Nombres y Apellidos:</h4></label>  
                                                                        <div class="input-group margin-bottom-sm">
                                                                            <span class="input-group-addon"><i class="fa fa-user-circle fa-fw"></i></span>
                                                                            <input class="form-control" name="txtNom1" type="text"  value="<%= rs.getString("primernombre_al")%> <%=rs.getString("segundonombre_al")%> <%= rs.getString("primerapellido_al")%> <%= rs.getString("segundoapellido_al")%>" readonly='' required="true">
                                                                        </div><br>
                                                                        <div class="input-group margin-bottom-sm">
                                                                            <span class="input-group-addon"><i class="fa fa-address-card-o fa-fw"></i></span>
                                                                            <input class="form-control" name="txtNom1" type="text"  value="<%= rs.getString("cedula_al")%>" readonly='' required="true">
                                                                        </div><br>
                                                                    </div><br>
                                                                    <table class="table table-bordered">
                                                                        <h3 class="text-center text-primary">
                                                                            Promedios Generales
                                                                        </h3>
                                                                        <div class="col-md-12">
                                                                            ________________________________________________
                                                                        </div><br>
                                                                        <thead>
                                                                            <tr> 
                                                                                <th class="text-center"><h4>VINCULACION</h4></th>
                                                                                <th class="text-center"><h4>EXÁENES</h4></th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody id="tbodys">                                                                                
                                                                        <%rs = smt.executeQuery(" select (sum(nota)/( select count(nota) from nota where tiponota = 'Vinculacion' and cedula_al = " + cd + " and asignatura = " + ts + ")) as promedio  from nota where cedula_al = " + cd + " and asignatura =  " + ts + " and  tiponota = 'Vinculacion';");
                                                                                while (rs.next()) {%> <td name="txtid"><%= rs.getString("promedio")%></td><%}%>

                                                                        <%rs = smt.executeQuery(" select (sum(nota)/( select count(nota) from nota where tiponota = 'Examen' and cedula_al = " + cd + " and asignatura = " + ts + ")) as promedio  from nota where cedula_al = " + cd + " and asignatura =  " + ts + " and  tiponota = 'Examen';");
                                                                            while (rs.next()) {%> <td name="txtid"><%= rs.getString("promedio")%></td><%}%>                                                                              
                                                                        </tr>                                                                        
                                                                    </table>
                                                                    <br>
                                                                    <table class="table table-bordered">                                                                        
                                                                        <thead>
                                                                            <tr> 
                                                                                <th class="text-center"><h4>PRUEBAS</h4></th>
                                                                                <th class="text-center"><h4>DEBERES</h4></th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody id="tbodys">                                                                                
                                                                        <%rs = smt.executeQuery(" select (sum(nota)/( select count(nota) from nota where tiponota = 'Pruebas' and cedula_al = " + cd + " and asignatura = " + ts + ")) as promedio  from nota where cedula_al = " + cd + " and asignatura =  " + ts + " and  tiponota = 'Pruebas';");
                                                                                while (rs.next()) {%> <td name="txtid"><%= rs.getString("promedio")%></td><%}%>

                                                                        <%rs = smt.executeQuery(" select (sum(nota)/( select count(nota) from nota where tiponota = 'Deberes' and cedula_al = " + cd + " and asignatura = " + ts + ")) as promedio  from nota where cedula_al = " + cd + " and asignatura =  " + ts + " and  tiponota = 'Deberes';");
                                                                            while (rs.next()) {%> <td name="txtid"><%= rs.getString("promedio")%></td><%}%>                                                                              
                                                                        </tr>                                                                        
                                                                    </table
                                                                    <br>
                                                                    <table class="table table-bordered">                                                                        
                                                                        <thead>
                                                                            <tr> 
                                                                                <th class="text-center"><h4>INVESTIGACIÓN</h4></th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody id="tbodys"> 
                                                                            <tr>
                                                                                <%rs = smt.executeQuery(" select (sum(nota)/( select count(nota) from nota where tiponota = 'Investigacion' and cedula_al = " + cd + " and asignatura = " + ts + ")) as promedio  from nota where cedula_al = " + cd + " and asignatura =  " + ts + " and  tiponota = 'Investigacion';");
                                                                                    while (rs.next()) {%> <td name="txtid"><%= rs.getString("promedio")%></td><%}%></tr>                                                                      
                                                                    </table>
                                                                    <div class="col-md-12">
                                                                        ________________________________________________
                                                                    </div><br>
                                                                    <table class="table table-bordered">
                                                                        <h3 class="text-center text-primary">
                                                                            Notas de Deberes
                                                                            <thead>
                                                                                <tr> 
                                                                                    <th class="text-center"><h4>ID</h4></th>
                                                                        </h3>
                                                                        <th class="text-center"><h4>NOMBRE</h4></th>
                                                                        <th class="text-center"><h4>CALIFICACION</h4></th>
                                                                        </tr>
                                                                        </thead><form>
                                                                            <tbody id="tbodys">
                                                                                <%
                                                                                    rs = smt.executeQuery(" select * from nota where cedula_al = " + cd + " and asignatura=" + ts + " and tiponota='Deberes';");
                                                                                    while (rs.next()) {
                                                                                %>
                                                                                <tr>
                                                                                    <td name="txtid"><%= rs.getString("idnota")%></td>
                                                                                    <td><%= rs.getString("tiponota")%></td>
                                                                                    <td class="text-center"><%= rs.getString("nota")%></td>  
                                                                        </form>                                                                                    
                                                                        </tr>
                                                                        <%}%>
                                                                    </table> 
                                                                    <div class="col-md-5">

                                                                    </div><br>

                                                                    <div class="container">
                                                                        <div class=""> <br>
                                                                            <div class="col-md-12">
                                                                                ________________________________________________
                                                                            </div><br>
                                                                            <table class="table table-bordered">
                                                                                <h3 class="text-center text-primary">
                                                                                    Notas de Investigacion
                                                                                </h3>
                                                                                <thead>
                                                                                    <tr> 
                                                                                        <th class="text-center"><h4>ID</h4></th>
                                                                                        <th class="text-center"><h4>NOMBRE</h4></th>
                                                                                        <th class="text-center"><h4>CALIFICACION</h4></th>
                                                                                    </tr>
                                                                                </thead><form>
                                                                                    <tbody id="tbodys">
                                                                                        <%
                                                                                            rs = smt.executeQuery(" select * from nota where cedula_al = " + cd + " and asignatura=" + ts + " and tiponota='Investigacion';");
                                                                                            while (rs.next()) {
                                                                                        %>
                                                                                        <tr>
                                                                                            <td name="txtid"><%= rs.getString("idnota")%></td>
                                                                                            <td><%= rs.getString("tiponota")%></td>
                                                                                            <td class="text-center"><%= rs.getString("nota")%></td>  
                                                                                </form>                                                                                    
                                                                                </tr>
                                                                                <%}%>
                                                                            </table>
                                                                            <div class="col-md-5">

                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="col-md-7">
                                                                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">+ Calificacion</button><br>
                                                                    </div>
                                                                    <div class="container">
                                                                        <div class=""> <br>                                                                           
                                                                            <table class="table table-bordered">
                                                                                <h3 class="text-center text-primary">
                                                                                    Notas de Vinculacion
                                                                                </h3>
                                                                                <thead>
                                                                                    <tr> 
                                                                                        <th class="text-center"><h4>ID</h4></th>
                                                                                        <th class="text-center"><h4>NOMBRE</h4></th>
                                                                                        <th class="text-center"><h4>CALIFICACION</h4></th>
                                                                                    </tr>
                                                                                </thead><form>
                                                                                    <tbody id="tbodys">
                                                                                        <%
                                                                                            rs = smt.executeQuery(" select * from nota where cedula_al = " + cd + " and asignatura=" + ts + " and tiponota='Vinculacion';");
                                                                                            while (rs.next()) {
                                                                                        %>
                                                                                        <tr>
                                                                                            <td name="txtid"><%= rs.getString("idnota")%></td>
                                                                                            <td><%= rs.getString("tiponota")%></td>
                                                                                            <td class="text-center"><%= rs.getString("nota")%></td>  
                                                                                </form>                                                                                    
                                                                                </tr>
                                                                                <%}%>
                                                                            </table>
                                                                            <div class="col-md-5">

                                                                            </div>
                                                                        </div>
                                                                    </div><br>
                                                                    <div class="container">
                                                                        <div class="">                                                                        
                                                                            <table class="table table-bordered">
                                                                                <div class="col-md-12">
                                                                                    ________________________________________________
                                                                                </div><br>
                                                                                <h3 class="text-center text-primary">
                                                                                    Notas de Pruebas
                                                                                </h3>
                                                                                <thead>
                                                                                    <tr> 
                                                                                        <th class="text-center"><h4>ID</h4></th>
                                                                                        <th class="text-center"><h4>NOMBRE</h4></th>
                                                                                        <th class="text-center"><h4>CALIFICACION</h4></th>
                                                                                    </tr>
                                                                                </thead><form>
                                                                                    <tbody id="tbodys">
                                                                                        <%
                                                                                            rs = smt.executeQuery(" select * from nota where cedula_al = " + cd + " and asignatura=" + ts + " and tiponota='Pruebas';");
                                                                                            while (rs.next()) {
                                                                                        %>
                                                                                        <tr>
                                                                                            <td name="txtid"><%= rs.getString("idnota")%></td>
                                                                                            <td><%= rs.getString("tiponota")%></td>
                                                                                            <td class="text-center"><%= rs.getString("nota")%></td>   
                                                                                </form>                                                                                    
                                                                                </tr>
                                                                                <%}%>
                                                                            </table>
                                                                            <div class="col-md-5">

                                                                            </div>
                                                                        </div>
                                                                    </div><br>
                                                                    <div class="container">
                                                                        <div class=""> <br>
                                                                            <table class="table table-bordered">
                                                                                <div class="col-md-12">
                                                                                    ________________________________________________
                                                                                </div><br>
                                                                                <h3 class="text-center text-primary">
                                                                                    Notas de Examenes
                                                                                </h3>
                                                                                <thead>
                                                                                    <tr> 
                                                                                        <th class="text-center"><h4>ID</h4></th>
                                                                                        <th class="text-center"><h4>NOMBRE</h4></th>
                                                                                        <th class="text-center"><h4>CALIFICACION</h4></th>
                                                                                    </tr>
                                                                                </thead><form>
                                                                                    <tbody id="tbodys">
                                                                                        <%
                                                                                            rs = smt.executeQuery(" select * from nota where cedula_al = " + cd + " and asignatura=" + ts + " and tiponota='Examen';");
                                                                                            while (rs.next()) {
                                                                                        %>
                                                                                        <tr>
                                                                                            <td name="txtid"><%= rs.getString("idnota")%></td>
                                                                                            <td><%= rs.getString("tiponota")%></td>
                                                                                            <td class="text-center"><%= rs.getString("nota")%></td>  
                                                                                </form>                                                                                    
                                                                                </tr>
                                                                                <%}%>
                                                                            </table>
                                                                            <div class="col-md-5">

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
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document" style="z-index: 9999; width: 450px">
                <div class="modal-content">
                    <div class="modal-header">                            
                        <h4 class="modal-title" id="myModalLabel">Registrar nuevo Alumno</h4>
                    </div>
                    <div class="modal-body">
                        <form>
                            <%
                                rs = smt.executeQuery("select alumno.*, clase.asignatura  from clase inner join alumno on clase.curso = alumno.curso where alumno.curso = " + id + " and clase.asignatura = " + ts + " and cedula_al=" + cd + ";");
                                while (rs.next()) {
                            %>

                            <div class="form-group"> 
                                <label>Tipo de Calificacion:</label>  
                                <div class="caja">
                                    <select name="txtTip">
                                        <option >Vinculacion</option>
                                        <option> Investigacion</option>
                                        <option> Pruebas</option>
                                        <option> Deberes</option>
                                        <option> Examen</option>
                                    </select>
                                </div><br>
                                <label>Calificacion:</label> 
                                <div class="input-group margin-bottom-sm">
                                    <span class="input-group-addon"><i class="fa fa-user-circle fa-fw"></i></span>
                                    <input class="form-control" name="txtNot" type="text"  required="true">
                                </div><br>
                                <label>Asignatura:</label> 
                                <div class="input-group margin-bottom-sm">
                                    <span class="input-group-addon"><i class="fa fa-user-circle fa-fw"></i></span>
                                    <input class="form-control" name="txtAsig" type="text" value="<%= rs.getString("asignatura")%>"  required="true">
                                </div><br>
                                <label>Cedula:</label> 
                                <div class="input-group margin-bottom-sm">
                                    <span class="input-group-addon"><i class="fa fa-user-circle fa-fw"></i></span>
                                    <input class="form-control" name="txtCedu" type="text" value="<%= rs.getString("cedula_al")%>" required="true">
                                </div><br>
                                <label>Curso:</label> 
                                <div class="input-group margin-bottom-sm">
                                    <span class="input-group-addon"><i class="fa fa-user-circle fa-fw"></i></span>
                                    <input class="form-control" name="txtCur" type="text" value="<%= rs.getString("curso")%>" required="true">
                                </div><br>
                            </div><%}%>
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
    </body>
    <%  String tiponota, nota, cedula, asignatura, curso;

        nota = request.getParameter("txtNot");
        tiponota = request.getParameter("txtTip");
        cedula = request.getParameter("txtCedu");
        asignatura = request.getParameter("txtAsig");
        curso = request.getParameter("txtCur");

        if (nota != null && tiponota != null && cedula != null && asignatura != null) {
            ps = con.prepareStatement(" insert into nota (nota, tiponota, cedula_al, asignatura) values (" + nota + ", '" + tiponota + "', '" + cedula + "', '" + asignatura + "');");
            ps.executeUpdate();
            response.sendRedirect("http://localhost:21672/RegistroAcademico/Clase/AlumNota.jsp?id='" + curso + "'&&ts='" + asignatura + "'&&cd='" + cedula + "'");
        }
    %>