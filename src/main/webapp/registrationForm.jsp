<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="header.jsp"%>
<%@include file="footer.jsp"%>
<%@page contentType="text/html" %>
<!DOCTYPE html>

<head>

  <title> Login Banco el 😈Sinvergüenza </title>

  <link rel="icon" type="image/x-icon" href="./img/icon-divisas.svg">

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

  <link rel="stylesheet" href="css/styles.css">

</head>
<body class="justify-content-center">

<div class="container">
  <div class="m-0 vh-100 row justify-content-center align-items-center">
    <div class="col-lg-6 col-md-8 col-sm-10">
      <img class="mb-4" src="./img/icon-divisas.svg" alt="Banco" width="100">
      <h2 class="mb-4">Registro de Usuario</h2>
      <form action="./register-user" method="post">
        <div class="form-group">
          <label for="user_firstname">Nombre</label>
          <input type="text" class="form-control" id="user_firstname" placeholder="Ingrese su Nombre" name="name" required autofocus
                 pattern="[A-Za-z ]{2,40}">
        </div>
        <div class="form-group">
          <label for="user_lastname">Apellido</label>
          <input type="text" class="form-control" id="user_lastname" placeholder="Ingrese su Apellido" name="lastname" required
                 pattern="[A-Za-z ]{2,40}">
        </div>
        <div class="form-group">
          <label for="user_email">Correo electrónico</label>
          <input type="email" class="form-control" id="user_email" placeholder="Ingrese su Correo" name="email" required
                 pattern="{,60}">
        </div>
        <div class="form-group">
          <label for="user_password">Contraseña</label>
          <input type="password" class="form-control" placeholder="Ingrese su Contraseña" id="user_password" name="password" required
                 pattern="[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]){8,16}"><br>
        </div>

        <a href="index.jsp">Ingresar<br></a>

        <br>
        <button type="submit" class="btn btn-success btn-block">Enviar</button>
      </form>
    </div>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>
