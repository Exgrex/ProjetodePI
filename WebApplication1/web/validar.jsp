<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JSP Page</title>
</head>
<body>
    <%
    /*Receber o usuÃ¡rio e a senha digitados no formulÃ¡rio*/
    String u,s;
    u = request.getParameter("usuario");
    s = request.getParameter("senha");
    /* Conectar com o banco de dados */
    
    Class.forName("com.mysql.cj.jdbc.Driver");
    DriverManager.getConnection("localhost:3307/empresa", "root", "password");
    
    %>
    
</body>
</html>