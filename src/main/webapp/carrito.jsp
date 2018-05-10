<%-- 
    Document   : carrito
    Created on : 6/05/2018, 06:08:46 PM
    Author     : VictorAbel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width">
        <title>Arma tu Pizza</title>
        <link rel="stylesheet" href="scss\custombootstrap.css">
        <link href="open-iconic-master/font/css/open-iconic-bootstrap.css" rel="stylesheet">
        <link href="css/custom_style.css" rel="stylesheet">        
    </head>
    <body>
    <nav class="navbar navbar-expand-lg navbar-light bg-white">
      <a class="navbar-brand" href="#"><img class="nav-imag" src="assets/images/logo-nav.png" alt=""/></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".mainNav">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="container">
        <div class="collapse navbar-collapse mainNav" >
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link active" href="#" id="navbarMenu">
                Menú
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#" id="navbarArmarPizza">
                Arma tu pizza
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#" id="navbarMiCuenta">
                Mi Cuenta
              </a>
            </li>
                        <li class="nav-item">
              <a class="nav-link" href="#" id="navbarVerCarrito">
                Ver Carrito
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#" id="navbarCerrarSesión">
                Cerrar Sesión
              </a>
            </li>            
          </ul>
        </div>
      </div>
    </nav>

    <main class="container">
    
    </main>

    <footer class="page-footer text-white bg-dark pt-4 mt-4">
        <div class="container-fluid text-center text-md-left">
            <div class="row">
                <div class="col-md-6">
                    <h5 class="text-uppercase">Pizzas de Luigi</h5>
                    <ul class="list-unstyled">
                        <li>
                            <p>Domicilio: Calle de por ahí #3345 </p>
                        </li>
                        <li>
                            <p>Teléfonos: 12-31-42-34 <br> 12-23-23-34</p>
                        </li>
                    </ul>
                </div>
                <div class="col-md-6">
                    <h5 class="text-uppercase">Links</h5>
                    <ul class="list-unstyled">
                        <li>
                            <a href="#!">Acerca de nosotros</a>
                        </li>
                        <li>
                            <a href="#!">Encuéntranos en Google Maps</a>
                        </li>
                    </ul>
                </div>

            </div>
        </div>
        <div class="text-center">
            © 2018 Copyright:
            <a href="">Pizzasdeluigi.com</a>
        </div>
    </footer>

  </body>
  <script src="js/popper.js"></script>
  <script src="js/jquery-3.3.1.js"></script>
  <script src="node_modules\bootstrap\dist\js\bootstrap.min.js"></script>
  <script src="js/armaTuPizza.js" type="text/javascript"></script>
</html>
</html>
