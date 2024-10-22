<%-- 
    Document   : salvar_produtos
    Created on : 17 de set. de 2024, 09:31:16
    Author     : breno.cpereira2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //Declarar as variàveis
            Connection conecta;
            PreparedStatement st;
            String m, n;
            double s;
            //Receber os dados digitados no formulario
            m = request.getParameter("matricula");
            n = request.getParameter("nome");
            s = Double.parseDouble(request.getParameter("salario"));
            try {
                //Conectar no banco de dados
                Class.forName("com.mysql.cj.jdbc.Driver");//aponta para a biblioteca JDBC
                conecta = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd10", "root", "p@$$w0rd");
                //Enviar os dados recebidos para a tabela do banco de dados
                st = conecta.prepareStatement("INSERT INTO funcionario VALUES(?,?,?)");
                st.setString(1, m);
                st.setString(2, n);
                st.setDouble(3, s);
                st.executeUpdate();//Executa o INSERT na tabela do BD
                //Informar o usuário que os dados foram gravados
                out.print("Funcionario cadastrado com sucesso");
            } catch (SQLException erro) {
                if (erro.getMessage().contains("Duplicate entry")) {
                    out.print("Este Funcionario já está cadastrado");
                } else {
                    out.print("Erro: entre em contato com o administrador");
                }
            }
        %>        
    </body>
</html>
