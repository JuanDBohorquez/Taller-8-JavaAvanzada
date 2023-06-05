<%--
  Created by IntelliJ IDEA.
  User: USUARIO
  Date: 17/05/2023
  Time: 14:26
  To change this template use File | Settings | File Templates.
--%>
<%@include file="header.jsp"%>
<%@include file="footer.jsp"%>
<%@page contentType="text/html" %>
<!DOCTYPE HTML>

<head>
    <title> Home :: </title>

    <link rel="icon" type="image/x-icon" href="./img/icon-divisas.svg">

    <link href="./css/bootstrap.css" rel='stylesheet' type='text/css' />

    <link href="./css/style.css" rel='stylesheet' type='text/css' />

    <link rel="stylesheet" href="./css/fwslider.css" media="all">

    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>




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
                            <li><a href="products.jsp">Productos</a></li>
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
    <div class="banner">
        <div id="fwslider">
            <div class="slider_container">
                <div class="slide">
                    <img src="./img/trade.jpg" class="img-responsive"/>
                    <div class="slide_content">
                        <div class="slide_content_wrap">
                            <h1 class="title">Run Over<br>Everything</h1>
                            <div class="button"><a href="#">Ver Detalles</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
    <script src="./js/jquery.min.js"></script>
    <script src="./js/jquery-ui.min.js"></script>
    <script src="./js/fwslider.js"></script>
</body>
</html>