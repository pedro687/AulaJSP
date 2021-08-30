<%--
  Created by IntelliJ IDEA.
  User: pedro
  Date: 30/08/2021
  Time: 17:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String message = null;
  int number = 0;
  try {
    number = Integer.parseInt(request.getParameter("number"));
  } catch (Exception e) {
    message = e.getMessage();
  }
%>
<html>
  <head>
    <title>Tabuada </title>
  </head>
  <body>
    <h1>Tabuada do <%= number %></h1>

    <%if(message != null){ %>
    <div style="color: red; background-color: darkred"><%= message %></div>
    <%}else if(number==0){%>
      Tabuada do 0 é sempre 0
    <%}else{%>
      <%for(int i=0; i<= 10; i++){%>
          <%= number * i%>
      <%}%>
    <%}%>
    <hr/>
    <h2>Tente novamente::</h2>
    <form>
      <input type="number" name="number" />
      <input type="submit" value="*"/>
    </form>
  </body>
</html>
