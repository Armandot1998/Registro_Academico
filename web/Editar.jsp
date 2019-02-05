
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //CONECTANOD A LA BASE DE DATOS:
            Connection con;
            String url = "jdbc:postgresql://localhost:5432/RegistroAcademico";
            String Driver = "org.postgresql.Driver";
            String user = "postgres";
            String clave = "12345";
            Class.forName(Driver);
            con = DriverManager.getConnection(url, user, clave);
            //Emnpezamos Listando los Datos de la Tabla Usuario pero de la fila seleccionada
            PreparedStatement ps;
            ResultSet rs;
            int id = Integer.parseInt(request.getParameter("id"));
            ps = con.prepareStatement("select * from alumno where Idalumno=" + id);
            rs = ps.executeQuery();
            while (rs.next()) {
        %>
        <div class="container">
            <h1>Modificar Registro</h1>
            <hr>
            <form action="" method="post" class="form-control" style="width: 500px; height: 400px">
                ID:
                <input type="text" readonly="" class="form-control" value="<%= rs.getInt("idalumno")%>"/>
                Nombres:
                <input type="text" name="txtNom" class="form-control" value="<%= rs.getString("nombres")%>"/><br>
                Apellidos:
                <input type="text" name="txtApe" class="form-control" value="<%= rs.getString("apellidos")%>"/>
                <br>
                Cédula:
                <input type="text" name="txtCed" class="form-control" value="<%= rs.getString("cedula")%>"/>
                <br>
                <b>Estado:</b>
                <select name="txtEst" required="true" class="from-control">
                    <option valor="Armando"> <%= rs.getString("Estado")%> </option>
                    <option valor="Armando"> Activo</option>
                    <option valor="Armando"> Inactivo</option>
                </select>
                    <br>
                    <br>
                    <input type="submit" value="Guardar" class="btn btn-primary btn-lg"/>

                    <a href="index.jsp">Regresar</a>
            </form>
            <%}%>
        </div>
    </body>
</html>
<%
    String nom, ape, ced, est;
    nom = request.getParameter("txtNom");
    ape = request.getParameter("txtApe");
    ced = request.getParameter("txtCed");
    est = request.getParameter("txtEst");
    if (nom != null && ape != null && ced != null && est != null) {
        ps = con.prepareStatement("update alumno set nombres='" + nom + "', apellidos='" + ape + "', cedula='" + ced + "', estado='" + est + "' where Idalumno=" + id);
        ps.executeUpdate();
        response.sendRedirect("Inicio.jsp");
    }


%>
