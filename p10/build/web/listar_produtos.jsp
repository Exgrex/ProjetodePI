<%-- 
    Document   : listar
    Created on : 3 de set. de 2024, 11:11:28
    Author     : breno.cpereira2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="tabelas.css">
    </head>
    <body>
        <%
            /*Declaração de variaveis*/
            Connection conecta;
            PreparedStatement st;
            ResultSet resultado;
            /* Conectar com o banco de dados...*/
            Class.forName("com.mysql.cj.jdbc.Driver");//aponta para a biblioteca JDBC
            conecta = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd10", "root", "p@$$w0rd");
            /*verificar se o produto com o id informado está na tabela do banco de dados*/
            st = conecta.prepareStatement("SELECT * FROM funcionario");
            resultado = st.executeQuery();//Executa o Select e armazena os dados do usuário
            /* percorre a variavel resultado exibindo ca linha do produto*/
            out.print("<table>");
            out.print("<caption>Relatorio de funcionario</caption>");
            out.print("<tr><th> matricula </th><th> nome </th><th> salario </th></tr>");
            while (resultado.next()){
            out.print("<tr><td>" + resultado.getString("matricula") + "</td><td>" + resultado.getString("nome") + "</td><td>" + resultado.getString("salario")+"</td>");
            out.print("<td> <a href=excluir_produtos.jsp?matricula=" + resultado.getString("matricula") + "> Excluir </a> </td>");
            out.print("<td> <a href=carregar_produto.jsp?matricula=" + resultado.getString("matricula") + "> Alterar </a> </td></tr>");
            }
            out.print("</table>");

            %>
    </body>
</html>
