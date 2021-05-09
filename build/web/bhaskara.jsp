<%@page import="br.bhaskara.BhaskaraCalculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" /> 
        <link href="styles/bhaskara.css" rel="stylesheet" type="text/css"/>
        <title>Bhaskara</title>
    </head>
    
    <body>
        <main>
        <%
            float a, b, c;
            a = Float.parseFloat(request.getParameter("a"));
            b = Float.parseFloat(request.getParameter("b"));
            c = Float.parseFloat(request.getParameter("c"));

            BhaskaraCalculo bhaskara = new BhaskaraCalculo();
            bhaskara.setA(a);
            bhaskara.setB(b);
            bhaskara.setC(c);

            if (a == 0) { %>
            
            <h4>ATENÇÃO: O valor de "A" não pode ser igual a "Zero"!</h4>

            <a href="./index.html" id="btn-voltar">Voltar</a>

        <% } else {%>
        
        <div class="row">
            <div class="card">
                <strong>Dados informados: </strong>
                <ul>
                    <li><strong>Valor de a: </strong><%= a%></li>
                    <li><strong>Valor de b: </strong><%= b%></li>
                    <li><strong>Valor de c: </strong><%= c%></li>
                </ul>
            </div>

            <div class="card">
                <strong>Resultados do Cálculo de Bhaskara: </strong>
                <ul>
                    <li><strong>Valor de delta: </strong><%= String.format("%.2f", bhaskara.getDelta())%></li>
                    <li><strong>Valor de x1: </strong><%= (bhaskara.getDelta() < 0) ? "Delta não pode retornar valores negativos!" : String.format("%.1f", bhaskara.calculaX1())%></strong></li>
                    <li><strong>Valor de x2: </strong><%= (bhaskara.getDelta() < 0) ? "Delta não pode retornar valores negativos!" : String.format("%.1f", bhaskara.calculaX2())%></strong></li>
                </ul>
            </div>
        </div>
            
        <a href="./index.html" id="btn-voltar">Voltar</a>
            
        <% }%>
        </main>
    </body>
</html>