<%-- 
    Document   : menu
    Created on : 6/05/2018, 06:32:31 PM
    Author     : VictorAbel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width">
        <title>Menú</title>
        <link rel="stylesheet" href="scss\custombootstrap.css">
        <link href="open-iconic-master/font/css/open-iconic-bootstrap.css" rel="stylesheet">
        <link href="css/custom_style.css" rel="stylesheet" type="text/css"/>
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

            <h1 class="display-5 bg-green text-white text-center">Categoría 1</h1>
            <div class="row" id="category1">


            </div>

            <h1 class="display-5 bg-green text-white text-center">Categoría 2</h1>
            <div class="row">

                <div class="col-lg-3 col-md-4 col-6 mb-2">
                    <div class="card" >
                        <img class="card-img-top" src="assets\pizzas\bbq-pizza-pork.png" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Cerdo BBQ</h5>
                            <p class="card-text">Ingredientes: </p>
                            <a class="btn btn-primary btn-sm" href="">Ver Pizza</a>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-4 col-6 mb-2">
                    <div class="card" >
                        <img class="card-img-top" src="assets\pizzas\bbq-pizza-pork.png" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Cerdo BBQ</h5>
                            <p class="card-text">Ingredientes: </p>
                            <a class="btn btn-primary btn-sm" href="">Ver Pizza</a>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-4 col-6 mb-2">
                    <div class="card" >
                        <img class="card-img-top" src="assets\pizzas\bbq-pizza-pork.png" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Cerdo BBQ</h5>
                            <p class="card-text">Ingredientes: </p>
                            <a class="btn btn-primary btn-sm" href="">Ver Pizza</a>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-4 col-6 mb-2">
                    <div class="card" >
                        <img class="card-img-top" src="assets\pizzas\bbq-pizza-pork.png" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Cerdo BBQ</h5>
                            <p class="card-text">Ingredientes: </p>
                            <a class="btn btn-primary btn-sm" href="">Ver Pizza</a>
                        </div>
                    </div>
                </div>


            </div>




        </main>



        <div class="modal fade" id="printbox" tabindex="1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Cerdo en BBQ</h4>
                    </div>
                    <div class="modal-body">
                        <form  id="form" action=""  method="post">
                            <div class="row justify-content-md-center">           
                                <div class="col-12 bg-white">
                                    <h1 class="display-5 bg-green text-white text-center rounded">Seleccionar Tamaño</h1>
                                    <div class="row">
                                        <div class="col">
                                            <label>
                                                <h5 class="text-center">Mediana</h5>
                                                <input type="radio" class="frm-button" name="tamanio" value="Mediana"/>
                                                <img src="assets\tamaños\Pizzas-mediana.png" class="img-fluid rounded">
                                                <input id="MedianaPrecio" type="hidden" name="precio" value="100" />
                                            </label>
                                        </div>
                                        <div class="col">
                                            <h5 class="text-center">Grande</h5>
                                            <label>
                                                <input type="radio" class="frm-button" name="tamanio" value="Grande"/>
                                                <img src="assets\tamaños\Pizzas-grande.png" class="img-fluid rounded">
                                                <input id="GrandePrecio" type="hidden" name="precio" value="140" />
                                            </label>
                                        </div>
                                        <div class="col">
                                            <h5 class="text-center">Familiar</h5>
                                            <label>
                                                <input type="radio" class="frm-button" name="tamanio" value="Familiar"/>
                                                <img src="assets\tamaños\Pizzas-familiar.png" class="img-fluid rounded">
                                                <input id="FamiliarPrecio"type="hidden" name="precio" value="180" />
                                            </label>
                                        </div>
                                    </div>

                                    <h1 class="display-5 bg-green text-white text-center rounded">Seleccionar Ingredientes</h1>
                                    <div class="row" id="ingredientes">
                                        <div class="col-6 col-lg-4">
                                            <input class="frm-button" type="checkbox" value="Pepperoni" id="ingrediente1">
                                            <label  for="ingrediente2">
                                                Pepperoni
                                            </label>
                                            <input id="PepperoniPrecio"type="hidden" name="precio" value="10" />
                                        </div>
                                        <div class="col-6 col-lg-4">
                                            <input class="frm-button" type="checkbox" value="Jamón" id="ingrediente2">
                                            <label  for="ingrediente2">
                                                Jamón
                                            </label>
                                            <input id="JamónPrecio"type="hidden" name="precio" value="10" />
                                        </div>
                                        <div class="col-6 col-lg-4">
                                            <input class="frm-button"  type="checkbox" value="Pimiento" id="ingrediente3">
                                            <label  for="ingrediente3">
                                                Pimiento
                                            </label>
                                            <input id="PimientoPrecio"type="hidden" name="precio" value="10" />
                                        </div>
                                        <div class="col-6 col-lg-4">
                                            <input class="frm-button" type="checkbox" value="Champiñon" id="ingrediente4">
                                            <label  for="ingrediente4">
                                                Champiñon
                                            </label>
                                            <input id="ChampiñonPrecio"type="hidden" name="precio" value="10" />
                                        </div>
                                    </div>
                                </div>

                                <div class="col-12 bg-white">
                                    <h1 class="display-5 bg-green text-white text-center rounded">Precio</h1>
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
                                    <a class="btn btn-primary btn-sm" href="" id="">Agregar al carrito</a>
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </form>                       
                    </div>
                </div>
            </div>
        </div>    
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


        <script src="js/popper.js" type="text/javascript"></script>
        <script src="js/jquery-3.3.1.js"></script>
        <script src="node_modules\bootstrap\dist\js\bootstrap.min.js"></script>
        <script src="js/loadMenu.js" type="text/javascript"></script>
        <script src="js/armaTuPizza.js" type="text/javascript"></script>
    </body>
</html>
