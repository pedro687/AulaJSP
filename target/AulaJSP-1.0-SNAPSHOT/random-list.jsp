<%--
  Created by IntelliJ IDEA.
  User: pedro
  Date: 30/08/2021
  Time: 17:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int randomNumber = Integer.parseInt(request.getParameter("number"));
%>
<html>
<html>
<head>
    <title>Random</title>
</head>
<body>
    <h1> Números aleatórios: </h1>
        <th> NUMEROS ALEATÓRIOS ATÉ <%= randomNumber %></th>

    <table width="467" border="1px" >
        <tr><th>Índice</th><th>Número</th></tr>
        <%for(int i=1; i<=randomNumber; i++){%>
        <tr>
            <td width="133"><%= i %></td>
            <td width="133"><%= (int)(Math.random()*100) %></td>
        </tr>
        <%}%>

    </table>
    <form action="random-list.jsp">
        <h1> Aleatorize novamente: </h1>
        <input type="number" name="number" placeholder="Digite um número">
        <input type="submit" value="aleatorizar">
    </form>
</body>
</html>
