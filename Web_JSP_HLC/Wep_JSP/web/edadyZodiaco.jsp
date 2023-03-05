<!DOCTYPE html>
<html  lang="es">
    <head>
        <title>Edades y Horóscopos</title>
        <style>
            h4 {

                text-align: center;
                font-weight: bold;
                color: #FFFFFF;
            }

            p{
                text-align: center;
            }

            html {
                position: relative;
            }

            body {
                background-color: rgb(80, 80, 80);
            }

            header {
                background-color: #ccfff3;
                text-align: center;
                font-size: 30px;
                padding: 50px;
                color: black;
            }

            section {
                margin: 50px;
                border: 8px double #888;
                border-radius: 200px 50px 200px 50px;
                padding: 80px;
                background-color: #ccc;
            }


            article {
                font-family: Verdana;
                font-size: 18px;
                font-weight: 400;
                color: #ffffff;
                background:#925178;
                padding: 20px;
                margin: 0 0 25px;
                overflow: visible;
                border-radius: 35px 0px 35px 0px;
            }

            footer {
                background-color: #00FFFF;
                padding: 10px;
                text-align: center;
                color: black;
            }
        </style>
    </head>
    <body>

        <header>EDADES Y HORÓSCOPOS DE LOS CREADORES DE ESTA WEB</header>
            <%@page language="java" import="java.util.*" %>
            <jsp:useBean id="clock" class="ejercicio.JspCalendar" />

        <%
            String[] nombres = new String[3];
            nombres[0] = request.getParameter("nombre1");
            nombres[1] = request.getParameter("nombre2");
            nombres[2] = request.getParameter("nombre3");

            String[] fechas = new String[3];
            fechas[0] = request.getParameter("fecha1");
            fechas[1] = request.getParameter("fecha2");
            fechas[2] = request.getParameter("fecha3");

            String[] fechaDividida = new String[3];

            fechaDividida = fechas[0].split("/");
        %>
        <section>
            <article>
                <h4><% out.println(nombres[0]);%>: <%= clock.SignoZodiaco(Integer.parseInt(fechaDividida[0]), Integer.parseInt(fechaDividida[1]))%></h4>
                <h4><%= clock.calcularEdad(Integer.parseInt(fechaDividida[0]), Integer.parseInt(fechaDividida[1]), Integer.parseInt(fechaDividida[2]))%></h4>
                <% fechaDividida = fechas[1].split("/"); %>
            </article>

            <article>
                <h4><% out.println(nombres[1]);%>: <%= clock.SignoZodiaco(Integer.parseInt(fechaDividida[0]), Integer.parseInt(fechaDividida[1]))%></h4>
                <h4><%= clock.calcularEdad(Integer.parseInt(fechaDividida[0]), Integer.parseInt(fechaDividida[1]), Integer.parseInt(fechaDividida[2]))%></h4>
                <% fechaDividida = fechas[2].split("/"); %>
            </article>

            <article>
                <h4><% out.println(nombres[2]);%>: <%= clock.SignoZodiaco(Integer.parseInt(fechaDividida[0]), Integer.parseInt(fechaDividida[1]))%></h4>
                <h4><%= clock.calcularEdad(Integer.parseInt(fechaDividida[0]), Integer.parseInt(fechaDividida[1]), Integer.parseInt(fechaDividida[2]))%></h4>
            </article>

            <article>
                <p>Volver a la principal>>>>>>>>>>>>>>>>>>>><a href="index.jsp"> Pinche aquí</a> </p>
            </article>
        </section>

    </body>

    <footer>
        <p>SEGUIMOS ESPERANDO QUE TE GUSTE TOMÁS</p>
    </footer>

</html> 
