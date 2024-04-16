<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.Registro"%>
<%
    if (session.getAttribute("lista") == null) {
        ArrayList<Registro> listaAux = new ArrayList<Registro>(); 
        session.setAttribute("lista", listaAux); 

    }
    List<Registro> lista = (ArrayList<Registro>) session.getAttribute("lista");
%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listado de Inscritos</h1>
<button onclick="window.location.href='MainServlet?action=nuevo'">Nuevo</button>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Fecha</th>
                <th>Nombre</th>
                <th>Apellidos</th>
                <th>Turno</th>
                <th>Seminarios</th>
                <th></th>
                <th></th>
            </tr>
            <%
                for (Registro sem : lista) {
                String fechaFormateada = "";
                try {
                    SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
                    fechaFormateada = dateFormat.format(sem.getFecha());
                } catch (Exception e) {
                    fechaFormateada = "Error en formato de fecha";
                }

            %>          
            <tr>
                <td><%= sem.getId()%></td>
                <td><%= fechaFormateada%></td>
                <td><%= sem.getNombre()%></td>
                <td><%= sem.getApellidos()%></td>
                <td><%= sem.getTurno()%></td>
                <td><%= sem.getSeminario()%></td>
                
                <td><a href="MainServlet?action=editar&id=<%= sem.getId()%>">Editar</a></td>
                <td><a href="MainServlet?action=eliminar&id=<%= sem.getId()%>">Eliminar</a></td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
