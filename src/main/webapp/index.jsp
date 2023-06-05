<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="header.jsp"%>
<%@include file="footer.jsp"%>
<%@page contentType="text/html" %>
<!DOCTYPE html>
<head>

    <title> Login Banco el 😈Sinvergüenza </title>

    <link rel="icon" type="image/x-icon" href="./img/icon-divisas.svg">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link rel="stylesheet" href="./css/styles.css">

    <link rel="stylesheet" href="./css/signin.css">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css">

</head>
<body class="justify-content-center">

<div class="container">
    <div class="m-0 vh-100 row justify-content-center align-items-center ">
        <div class="col-lg-6 col-md-8 col-sm-10">
            <img class="mb-4" src="./img/icon-divisas.svg" alt="Banco" width="100">
            <h2 class="mb-4">Login Banco Divisas</h2>
            <form action="home.jsp" method="post">
                <div class="form-group">
                    <label for="floatingInput">Usuario</label>
                    <i class="bi bi-file-person-fill"></i><input type="text" class="form-control" id="floatingInput" placeholder="Ingrese su Nombre de Usuario"  required autofocus
                           pattern="[A-Za-z0-9 ]{8,12}">
                </div>
                <div class="form-group">
                    <label for="floatingPassword">Contraseña</label>
                    <i class="bi bi-lock"></i><input  type="password" class="form-control" id="floatingPassword" placeholder="Ingrese su Contraseña" required pattern="[A-Za-z0-9 ]{8,12}"><br>

                    <button class="w-100 btn btn-lg btn-success" type="submit">Ingresar</button>
                </div>
                <div id="register">
                    ¿No tienes cuenta?<br><a href="registrationForm.jsp">Registrate</a>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>


</body>
</html>