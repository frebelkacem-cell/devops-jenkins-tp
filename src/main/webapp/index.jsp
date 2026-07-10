<%@ page import="com.devops.tp.Calculator" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Calculator App - DevOps TP</title>
</head>
<body>
    <h1>Calculator App</h1>
    <p>Application deployee automatiquement par Jenkins sur Tomcat.</p>
    <p><em>Redeploiement automatique teste via webhook GitHub.</em></p>
    <%
        Calculator calc = new Calculator();
    %>
    <ul>
        <li>5 + 3 = <%= calc.add(5, 3) %></li>
        <li>5 - 3 = <%= calc.subtract(5, 3) %></li>
        <li>5 * 3 = <%= calc.multiply(5, 3) %></li>
        <li>5 / 3 = <%= calc.divide(5, 3) %></li>
    </ul>
</body>
</html>
