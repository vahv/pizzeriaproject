<%-- 
    Document   : login
    Created on : 5/05/2018, 03:51:17 PM
    Author     : VictorAbel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar Sesión</title>
        <link rel="stylesheet" href="scss\custombootstrap.css">
        <link href="open-iconic-master/font/css/open-iconic-bootstrap.css" rel="stylesheet">
        <link href="css/custom_style.css" rel="stylesheet">
    </head>
    <body>
        <main class="container bg-white w-75 mw-50 rounded mt-2">
              <div class="row">
                <div class="col-12">
                  <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                    <li class="nav-item col-6 col-md-4 text-center">
                      <a class="nav-link active" id="pills-ingresar-tab" data-toggle="pill" href="#pills-ingresar" role="tab" aria-controls="pills-home" aria-selected="true">Ingresar</a>
                    </li>
                    <li class="nav-item col-6 col-md-4 text-center">
                      <a class="nav-link" id="pills-registrar-tab" data-toggle="pill" href="#pills-registrar" role="tab" aria-controls="pills-profile" aria-selected="false">Registrarse</a>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="row">
                <div class="col-12">
                  <div class="tab-content" id="pills-tabContent">

                    <div class="tab-pane fade show active" id="pills-ingresar" role="tabpanel" aria-labelledby="pills-home-tab">
                      <h1>Ingresar a su cuenta</h1>
                      <form>
                        <div class="form-group">
                          <label for="exampleInputEmail1">Email</label>
                          <input type="email" class="form-control" id="InputEmail1" aria-describedby="emailHelp" placeholder="Escriba su email">
                        </div>
                        <div class="form-group">
                          <label for="exampleInputPassword1">Contraseña</label>
                          <input type="password" class="form-control" id="InputPassword1" placeholder="Escriba su contraseña">
                        </div>

                        <button type="submit" class="btn btn-primary mb-2 wm-25">Ingresar</button>
                      </form>
                    </div>

                    <div class="tab-pane fade" id="pills-registrar" role="tabpanel" aria-labelledby="pills-profile-tab">
                      <h1>Registrar cuenta</h1>
                      <form>

                        <div class="form-group">
                          <label for="inputEmail">Correo</label>
                          <input type="email" class="form-control" id="inputEmail2" placeholder="Email">
                        </div>
                        <div class="form-row">
                          <div class="form-group col-md-6">
                            <label for="inputPassword4">Contraseña</label>
                            <input type="password" class="form-control" id="inputPassword2" placeholder="Contraseña">
                          </div>
                          <div class="form-group col-md-6">
                            <label for="inputPassword4">Repetir contraseña</label>
                            <input type="password" class="form-control" id="inputPassword3" placeholder="Repetir contraseña">
                          </div>
                        </div>

                        <div class="form-group">
                          <label for="inputAddress">Nombre</label>
                          <input type="text" class="form-control" id="inputName" placeholder="Su Nombre">
                        </div>
                        <label for="inputAddress">Domicilio de entrega</label>
                        <div class="form-row" id="inputAddress">
                          <div class="form-group col-md-6">
                            <label for="inputCity">Calle</label>
                            <input type="text" class="form-control" id="inputStreet">
                          </div>
                          <div class="form-group col-md-4">
                            <label for="inputNumber1">Número Exterior</label>
                            <input type="text" class="form-control" id="inputNumber1">
                          </div>
                          <div class="form-group col-md-2">
                            <label for="inputNUmber2">Número Interior</label>
                            <input type="text" class="form-control" id="inputNumber2">
                          </div>
                        </div>
                        <button type="submit" class="btn btn-primary mb-2 wm-25 ">Registrar Cuenta</button>
                      </form>
                    </div>

                  </div>
                </div>
              </div>
            </main>
            <script src="js/popper.js"></script>
            <script src="js/jquery-3.3.1.js"></script>
            <script src="node_modules\bootstrap\dist\js\bootstrap.min.js"></script>
    </body>
</html>
