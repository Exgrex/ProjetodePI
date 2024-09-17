<%-- 
    Document   : restrito
    Created on : 17 de set. de 2024, 11:06:28
    Author     : jefferson.etokura
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="pt-br">
    <head>
        <title>Meu Site</title> <!-- titulo do site -->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../style.css">


    </head>
    <body>
        <header>
            <div class="logo">
                <img src="../logo.png.webp" alt="Logotipo da amazon">
            </div>

            <div class="texto">
                <h1>
                    A melhor empresa do brasil
                </h1>

                <div class="login">
                    <p>Bem vindo,</p>
                        <%
                        
                        String nome = request.getParameter("nome");
                        out.print(nome);

                        %>
                </div>

        </header>

        <nav>

        </nav>
        <main>
            
        </main>
        <footer>

        </footer>
    </body>
</html>


