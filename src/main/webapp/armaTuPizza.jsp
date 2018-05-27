<%-- 
    Document   : armaTuPizza
    Created on : 5/05/2018, 06:20:09 PM
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
      <a class="navbar-brand" href="index.jsp"><img class="nav-imag" src="assets/images/logo-nav.png" alt=""/></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".mainNav">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="container">
        <div class="collapse navbar-collapse mainNav" >
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link" href="menu.jsp" id="navbarMenu">
                Menú
              </a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="armaTuPizza.jsp" id="navbarArmarPizza">
                Arma tu pizza
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="miCuenta.jsp" id="navbarMiCuenta">
                Mi Cuenta
              </a>
            </li>
                        <li class="nav-item">
              <a class="nav-link" href="carrito.jsp" id="navbarVerCarrito">
                Ver Carrito
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="cerrarSesion" id="navbarCerrarSesión">
                Cerrar Sesión
              </a>
            </li>            
          </ul>
        </div>
      </div>
    </nav>
    <main class="container">
      <h1 class="text-white text-center">Arma tu pizza</h1>
        <form  id="form"   method="post">
            <input id="pizzaid" type="hidden" name="id" value="" />
            <div class="row justify-content-md-center">
                
                <div class="col-12 col-md-8 bg-white rounded">
                    <h1 id="sizes" class="display-5 bg-green text-white text-center rounded mt-2">Seleccionar Tamaño</h1>
                    <div class="row">
                        <div class="col">
                          <label>
                            <h5 class="text-center">Mediana</h5>
                            <input type="radio" class="frm-button" name="tamanio" value="Mediana"/>
                            <img src="assets\tamaños\Pizzas-mediana.png" class="img-fluid rounded">
                            <input id="MedianaPrecio" type="hidden" name="precio" value="" />
                          </label>
                        </div>
                        <div class="col">
                          <h5 class="text-center">Grande</h5>
                          <label>
                              <input type="radio" class="frm-button" name="tamanio" value="Grande"/>
                            <img src="assets\tamaños\Pizzas-grande.png" class="img-fluid rounded">
                            <input id="GrandePrecio" type="hidden" name="precio" value="" />
                          </label>
                        </div>
                        <div class="col">
                          <h5 class="text-center">Familiar</h5>
                          <label>
                            <input type="radio" class="frm-button" name="tamanio" value="Familiar"/>
                            <img src="assets\tamaños\Pizzas-familiar.png" class="img-fluid rounded">
                            <input id="FamiliarPrecio" type="hidden" name="precio" value="" />
                          </label>
                        </div>
                    </div>

                    <h1 class="display-5 bg-green text-white text-center rounded">Seleccionar Ingredientes</h1>
                    <div class="row" id="ingredientes">
                    </div>
                </div>

                <div class="col-12 col-md-3 bg-white rounded ml-2">
                    <h1 class="display-5 bg-green text-white text-center rounded mt-2">Precio</h1>
                    <table class="table">
                      <thead>
                        <tr>
                          <th scope="col">Nombre</th>
                          <th scope="col">Precio</th>
                        </tr>
                      </thead>
                      <tbody>

                      </tbody>
                    </table>
                    <h3 id ="displayTotal">Total $0 </h3>
                    <a class="btn btn-primary btn-sm text-white" id="addCart">Agregar al carrito</a>
                </div>
            </div>
       </form>
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
  <script src="js/popper.js" ></script>
  <script src="js/jquery-3.3.1.js"></script>
  <script src="node_modules\bootstrap\dist\js\bootstrap.min.js"></script>
  <script src="lib/bootbox/bootbox.min.js" type="text/javascript"></script>
  <script src="js/armaTuPizza.js" type="text/javascript"></script>
  <script src="js/pizzaDetails.js" type="text/javascript"></script>
  <script src="lib/jquery_validate/jquery.validate.min.js" type="text/javascript"></script>
</html>
