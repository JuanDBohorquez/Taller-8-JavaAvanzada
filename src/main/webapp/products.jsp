<%--
  Created by IntelliJ IDEA.
  User: USUARIO
  Date: 20/05/2023
  Time: 18:45
  To change this template use File | Settings | File Templates.
--%>
<%@include file="header.jsp"%>
<%@include file="footer.jsp"%>
<%@page contentType="text/html" %>
<!DOCTYPE HTML>

<head>
    <title>Ingesar productos | Banco divisas :: </title>

    <link rel="icon" type="image/x-icon" href="./img/icon-divisas.svg">

    <link href="./css/bootstrap.css" rel='stylesheet' type='text/css' />

    <link href="./css/style.css" rel='stylesheet' type='text/css' />

    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" href="./css/styles.css">




</head>
<body>
<div class="header">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="header-left">
                    <div class="logo">
                        <a href="home.jsp"><img src="./img/bank.png" alt=""/></a>
                    </div>
                    <div class="menu">
                        <a class="toggleMenu" href="#"><img src="./img/nav.png" alt="" /></a>
                        <ul class="nav" id="nav">
                            <li><a href="categories.jsp">Categorias</a></li>
                            <li class="current"><a href="products.jsp">Productos</a></li>
                            <li><a href="">Mas</a></li>
                            <li><a href="">Mas</a></li>
                            <li><a href="">Mas</a></li>
                            <li><a href="">Mas</a></li>
                            <div class="clear"></div>
                        </ul>
                        <script type="text/javascript" src="./js/responsive-nav.js"></script>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <div class="m-0 vh-100 row justify-content-center align-items-center">
        <div class="col-lg-6 col-md-8 col-sm-10">
            <img class="mb-4" src="./img/icon-divisas.svg" alt="Banco" width="100">
            <h2 class="mb-4">Registro de Productos</h2>
            <form action="./register-products" method="post">
                <div class="form-group">
                    <label for="product_name">Nombre Producto</label>
                    <input type="text" class="form-control" id="product_name" placeholder="Ingrese el nombre del Producto" name="nameproduct" required autofocus
                           pattern="[A-Za-z ]{2,40}">
                </div>
                <div class="form-group">
                    <label for="product_value">Valor Producto</label>
                    <input type="text" class="form-control" id="product_value" placeholder="Ingrese el valor del Producto" name="productvalue" required
                           pattern="[A-Za-z ]{2,40}">
                </div>
                <div class="form-group">
                    <label for="category_id_fk">Categoria</label>
                    <input type="text" class="form-control" id="category_id_fk" placeholder="Ingrese la Categoria" name="categoryidfk" required
                           pattern="[A-Za-z ]{2,40}">
                </div>

                <br>
                <button type="submit" class="btn btn-success btn-block">Enviar</button>
            </form>
        </div>
    </div>
</div>

</body>

</html>
