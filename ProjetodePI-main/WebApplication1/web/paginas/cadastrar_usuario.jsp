<%-- 
    Document   : cadastrar_usuario.jsp
    Created on : 17 de set. de 2024, 09:32:39
    Author     : jefferson.etokura
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
        //Declara as variáveis
        String u, s, p;
        //Receber os dados digitados no formulário
        u = request.getParameter("usuario");
        s = request.getParameter("senha");
        p = request.getParameter("nome");
        //Conectar com o banco de dados


        %>

    </body>
</html>
