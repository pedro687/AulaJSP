<%--
  Created by IntelliJ IDEA.
  User: pedro
  Date: 30/08/2021
  Time: 17:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    double n1;
    double n2;
    double result = 0.0;
    String exceptionCause = null;

    try {
        n1 = Double.parseDouble(request.getParameter("n1"));
        n2 = Double.parseDouble(request.getParameter("n2"));
        result = n1 + n2;
    } catch (Exception e) {
        exceptionCause = e.getMessage();
    }
%>
<html>
<head>
    <title>Soma</title>
</head>
<body>
    <%if(exceptionCause != null){ %>
    <h4> Erro em: </h4>
        <div style="color: red; background-color: darkred;"><%= exceptionCause %></div>
    <%}else{%>
        <h1> O Resultado é: </h1>
        <h1> <%= result %></h1>
    <%}%>

    <h1> Some novamente </h1>
    <form>
        <input type="number" name="n1" placeholder="Digite um número">
        <input type="number" name="n2" placeholder="Digite outro número">
        <input type="submit" value="SOMAR">
    </form>
</body>
</html>
