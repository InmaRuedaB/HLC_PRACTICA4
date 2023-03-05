<%@page import="java.util.Hashtable"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Date"%>
<%@page import="ejercicio.Comida"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:useBean id="ejercicio" class="ejercicio.Comida" />
        <title>Listar Tabla Comidas</title>
  
    <style>
          
            h1 {
                margin-bottom: 50px;
                text-align: center;
                font-weight: bold;
                color: #FFFFFF;
            }
            
            h2 {

                text-align: center;
                font-weight: bold;
                color: black;
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
                position: fixed;
                width: 100%;
                padding: 30px 100px;
                background: linear-gradient(45deg, white, transparent);
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
                font-weight: 200;
                color: #ffffff;
                background:#925178;
                padding: 20px;
                margin: 0 0 25px;
                overflow: visible;
                border-radius: 35px 0px 35px 0px;
                text-align: center;
            }
            
            table {           
                width: 100%;
                max-width: 1000px;
                margin: 0 auto;
                margin-bottom: 40px;
                background-color: #87CEEB; 
            }

            th, td {
                text-align: center;
                padding: 12px; 
                border-bottom: 2px solid white;
            }

            th {
                background-color: #FF00FF; 
                color: white; 
            }

            tr:nth-child(even) {
                background-color: #937ffa; 
            }

            tr{
                background-color: #cecece;
                opacity: 70%;
            }

            tr:hover {
                background-color:  #C0C0C0; 
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
        
        <%  Map<String, Comida> lista = new HashMap<String, Comida>();           
            Comida c1 = new Comida("Tortilla de patatas", "España", new Date(40, 01, 01), 300, "tortilla.jpg");
            Comida c2 = new Comida("Paella", "España", new Date(40, 01, 01), 500, "paella.jpg");
            Comida c3 = new Comida("Cocido", "España", new Date(40, 01, 01), 600, "cocido.jpg");
            Comida c4 = new Comida("Salmorejo", "España", new Date(40, 01, 01), 200, "salmorejo.jpg");
            Comida c5 = new Comida("Tacos", "México", new Date(40, 01, 01), 200, "tacos.jpg");
            Comida c6 = new Comida("Enchilada", "México", new Date(40, 01, 01), 400, "enchiladas.jpg");
            Comida c7 = new Comida("Burrito", "México", new Date(40, 01, 01), 600, "burritos.jpg");
            Comida c8 = new Comida("Pollo Tandoori", "India", new Date(40, 01, 01), 300, "pollotandoori.jpg");
            Comida c9 = new Comida("Curries", "India", new Date(40, 01, 01), 500, "curries.jpg");
            Comida c10 = new Comida("Lassi", "India", new Date(40, 01, 01), 200, "lassi.jpg");
            
            lista.put("Tortilla", c1);
            lista.put("Paella", c2);
            lista.put("Cocido", c3);
            lista.put("Salmorejo", c4);
            lista.put("Tacos", c5);
            lista.put("Enchilada", c6);
            lista.put("Burrito", c4);
            lista.put("Pollo Tandoori", c8);
            lista.put("Curries", c9);
            lista.put("Lassi", c10);
            pageContext.setAttribute("sharePrice", lista);
          %>
         
        <header>TABLA INFO DE COMIDAS</header>     
        <section>
                    <h2>Tabla Informativa de las Comidas</h2>
                    <div class="responsive-table">
                        <table>
                            <tr>
                                <th>Nº</th>
                                <th>Comida</th>
                                <th>Calorias</th>
                                <th>Fecha</th>
                            </tr>

                            <c:forEach var="entry" items="${pageScope.sharePrice}">
                                <tr>
                                    <td><c:out value="${entry.key}"/></td>
                                    <td><c:out value="${entry.value.nombre}"/></td>
                                    <td><c:out value="${entry.value.calorias}"/> </td>
                                    <td><c:out value="${entry.value.fecha_inv}" /> </td>
                                </tr>
                            </c:forEach>

                        </table>
                    </div>
                    
             <article>
               <p>Volver a la principal>>>>>>>>>>>>>>>>>>>><a href="index.jsp"> Pinche aquí</a> </p>
            </article>
            
        </section>
                    
    <footer>
       <p>SEGUIMOS ESPERANDO QUE TE GUSTE TOMÁS</p>
    </footer>
        
    </body>
                  
</html>

