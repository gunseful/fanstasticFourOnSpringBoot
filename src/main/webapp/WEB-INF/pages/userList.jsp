<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>User List</title>
    <link href="<c:url value="/res/style.css"/>" rel="stylesheet" type="text/css"/>
    <link rel="icon" type="image/png" href="<c:url value="/res/favicon.png"/>"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
<div class="header">
    <p align="center" ; style="font-size: 30px; color: white">DIGITAL STORE</p>

</div>
<div class="menu">
    <table>
        <tr>
            <td><a href="/" class="w3-btn w3-black">Home</a>
            </td>
        </tr>
        <tr>
            <td>
                <a href="/products" class="w3-btn w3-black">Products</a>
            </td>
            <td>
                <a href="/orders" class="w3-btn w3-black">Orders</a>
            </td>
        </tr>
        <tr>
            <td><a href="/logout" class="w3-btn w3-black">Logout</a>
            </td>
        </tr>
    </table>
</div>
<div class="content">
    <table>
    <tr>
        <th>username</th>
        <th>roles</th>
    </tr>

    <c:if test="${userlist!=null}">
        <c:forEach var="user" items="${userlist}">
                <tr>
                    <td>${user.username}</td>

                    <c:forEach var="role" items="${user.roles}">
                        <td>${role}</td>
                    </c:forEach>
                    <td><a href="/user/${user.id}">edit</a></td>
                </tr>
        </c:forEach>
    </c:if>
    </table>

</div>
</body>
</html>