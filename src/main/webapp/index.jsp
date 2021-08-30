<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Aula JSP</title>
</head>
<body>
<h1><%= "Pedro Emanoel do Nascimento SIlva" %></h1>
<h1><%= "RA: 1290482012028" %></h1>
<br/>

<a href="timestamp.jsp"> Data/Hora </a>
<hr>
<h1> Soma: </h1>
<form action="sum.jsp">
    <input type="number" name="n1" placeholder="Digite um número">
    <input type="number" name="n2" placeholder="Digite outro número">
    <input type="submit" value="SOMAR">
</form>
<hr>
<form action="random-list.jsp">
    <h1> Aleatoriedade: </h1>
    <input type="number" name="number" placeholder="Digite um número">
    <input type="submit" value="aleatorizar">
</form>
<hr>
<h1>
    Tabuada
</h1>
<form action="multiplication-table.jsp">
    <input type="number" name="number" placeholder="Digite um número">
    <input type="submit" value="tabuada">
</form>
</body>
</html>