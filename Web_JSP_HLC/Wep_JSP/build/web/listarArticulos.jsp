<%@page import="java.util.Hashtable"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.*"%>
<%@page import="java.util.HashMap"%>
<%@page import="fecha.listaComida"%>
<%@ page import="java.text.SimpleDateFormat" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <jsp:useBean id="fecha" class="fecha.listaComida" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar tablas con hashmap</title>
        <style>


           body {
                font-family: Arial, sans-serif; /* Establece la fuente del texto */
                background-color: #e7e7e7; /* Establece el color de fondo de la página */
                margin: 50px; /* Elimina el margen predeterminado del body */
                padding: 0; /* Elimina el relleno predeterminado del body */
            }
            header {
                background-color: #ccfff3;
                text-align: center;
                font-size: 30px;
                padding: 50px;
                color: black;		}


            h1 {
                font-size: 36px; /* Establece el tamaño de fuente del encabezado */
                text-align: center; /* Centra el encabezado */
            }
            
            footer {
                background-color: #000000;
                padding: 10px;
                text-align: center;
                color: black;
            }
            
            span{
                color: #FFFFFF;
            }
            table {
                
                width: 100%; /* Establece el ancho de la tabla al 100% */
                max-width: 800px; /* Establece el ancho máximo de la tabla */
                margin: 0 auto; /* Centra la tabla en la página */
                margin-bottom: 20px; /* Agrega un espacio en blanco debajo de la tabla */
                background-color: #ftg; /* Establece el color de fondo de la tabla */
            }

            th, td {
                text-align: left; 
                padding: 12px; /* Agrega un relleno interno de 12 píxeles */
                border-bottom: 2px solid #ddd; 
            }

            th {
                background-color: #7500fc; /* Establece el color de fondo del encabezado de la tabla */
                color: #fff; /* Establece el color del texto del encabezado de la tabla */
            }

            tr:nth-child(even) {
                background-color: #937ffa; /* Establece el color de fondo de las filas pares */
            }

            tr{
                background-color: #cecece;
                opacity: 80%;
            }

            tr:hover {
                background-color:  #ff5900; /* Establece el color de fondo de las filas al pasar el ratón */
            }


        </style>
    </head>

    <body> 
        
        <%
            SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
        %>

        <% Map<Integer, fecha.listaComida> countries = new Hashtable<Integer, fecha.listaComida>();

            countries.put(1, new listaComida("Tortilla de patatas", "España.jpg", 369, new GregorianCalendar(1798, 3, 11)));
            countries.put(2, new listaComida("Pie floater", "Australia.jpg", 594, new GregorianCalendar(1877, 6, 15)));
            countries.put(3, new listaComida("Asado de argentina", "Argentina.jpg", 978, new GregorianCalendar(1890, 7, 28)));
            countries.put(4, new listaComida("Cangrejo al chili", "Singapur.jpg", 563, new GregorianCalendar(1950, 3, 28)));
            countries.put(5, new listaComida("Zurek", "Polonia.jpg", 607, new GregorianCalendar(1999, 12, 28)));
            countries.put(6, new listaComida("Moros y cristianos", "Cuba.jpg", 420, new GregorianCalendar(1976, 3, 28)));
            countries.put(7, new listaComida("Jamon de parma", "Italia.jpg", 468, new GregorianCalendar(1975, 3, 30)));
            countries.put(8, new listaComida("Goi cuon", "Vietnam.jpg", 373, new GregorianCalendar(1975, 5, 28)));
            countries.put(9, new listaComida("Xiaolongbao", "China.jpg", 347, new GregorianCalendar(1976, 3, 28)));
            countries.put(10, new listaComida("Papa a la huancaina", "Peru.jpg", 452, new GregorianCalendar(1975, 3, 28)));
            pageContext.setAttribute("sharePrice", countries);
        %>

    <header>
        Practica 4 HLC
    </header>    
    <%-- JSTL foreach tag example to loop Hashtable in JSP --%>
    </br></br>
    <h1>Listar tablas con <b>HASHMAP</b></h1>
    <div class="responsive-table">
        <table>
            <tr>
                <th>ID</th>
                <th>Comida</th>
                <th>Calorias</th>
                <th>Fecha</th>

            </tr>

            <c:forEach var="entry" items="${pageScope.sharePrice}">

                <tr>
                    <td><c:out value="${entry.key}"/></td>
                    <td><c:out value="${entry.value.nombre}"/></td>
                    <td><c:out value="${entry.value.calorias}"/> </td>
                    <td><c:out value="${entry.value.fecha}" /> </td>
                </tr>
            </c:forEach>

        </table>


    </div>
    <p>Volver a la principal. <a href="index.jsp"> Pinche aquí</a> </p>
    <footer>
        <span>&copy; Derechos reservados a los programadores de 2 DAM Majuelo</span>
    </footer>   
</body>
</html>


