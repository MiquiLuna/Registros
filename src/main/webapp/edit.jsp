<%@page import="com.emergentes.Registro"%>
<%
    Registro sem = (Registro) request.getAttribute("seminario");//en cal esta el atributo recuperado
%>

<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro en seminarios</h1>
 
        <form action="MainServlet" method="post">

            <!--id-->
            <input type="hidden" name="id" value="<%= sem.getId()%>">
            <div style="display: flex;">
                <!-- Primer recuadro -->
                <div style="border: 1px solid #ccc; padding: 10px; width: 50%;">
                    <h2>Datos</h2>
                    <table border="0">
                        <tr>
                            <td>Fecha</td>
                            <td><input type="date" name="fecha" value="<%= request.getAttribute("fechaFormateada")%>"></td>
                        </tr>
                        <tr>
                            <td>Nombre</td>
                            <td><input type="text" name="nombre" value="<%= sem.getNombre()%>"></td>
                        </tr>
                        <tr>
                            <td>Apellidos</td>
                            <td><input type="text" name="apellidos" value="<%= sem.getApellidos()%>"></td>
                        </tr>
                        <tr>
                            <td>Turno</td>


                            <td>
                                <input type="radio" name="turno" value="mañana" <%= (sem.getTurno().equals("mañana")) ? "checked" : ""%>>Mañana
                                <input type="radio" name="turno" value="tarde" <%= (sem.getTurno().equals("tarde")) ? "checked" : ""%>>Tarde
                                <input type="radio" name="turno" value="noche" <%= (sem.getTurno().equals("noche")) ? "checked" : ""%>>Noche
                            </td>
                        </tr>



                    </table>
                </div>
                <div style="border: 1px solid #ccc; padding: 10px; width: 50%;">
                    <h2>Seminarios Disponibles</h2>
                    <table border="0">
                        <tr>
                            <td>
                        <input type="checkbox" name="seminario" value="Inteligencia Artificial"> Inteligencia Artificial<br>
                        <input type="checkbox" name="seminario" value="Machine Learning"> Machine Learning<br>
                        <input type="checkbox" name="seminario" value="Simulacion con Arena"> Simulación con Arena<br>
                        <input type="checkbox" name="seminario" value="Robotica Educativa"> Robótica Educativa<br>
                        </td>
                        </tr>
                    </table>
                </div>
            </div>
            <center>
  <button type="submit" class="boton-rectangular">Enviar registro</button>
</center>

        </form>
    </body>
</html>
