<%-- 
    Document   : FormVenda
    Created on : 17/04/2018, 20:59:34
    Author     : andre.ayamamoto
--%>

<%@page import="com.senac.pi.floricultura.model.Venda"%>
<%@page import="com.senac.pi.floricultura.model.ItensVenda"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Venda venda = new Venda();
    
    ItensVenda carrinho = null;
    
    
%>
<!DOCTYPE html>
<html lang="pt-BR">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Venda</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" media="screen" href="css/estilo.css" />
        <script src="js/main.js"></script>
    </head>

    <body>

        <form action="insertVenda" method="POST">

            Cliente: <input type="text" name="cliente" id="cliente"><br>

            Produto: <input type="text" name="produto" id="produto"><br>
            
            
        </form>

    </body>

</html>
