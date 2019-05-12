<%-- 
    Document   : Login
    Created on : 5/05/2019, 07:15:39 PM
    Author     : Arturo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar Sesión</title>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/estilos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <form action="ValidarSesion" method="post">
            <div class="login-wrap">
                <div class="login-html">
                    <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
                    <input id="tab-2" type="radio" name="tab" class="for-pwd"><label for="tab-2" class="tab">Forgot Password</label>
                    <div class="login-form">
                        <div class="sign-in-htm">
                            <div class="group">
                                <label for="user" class="label">Username or Email</label>
                                <input id="user" type="text" class="input" name="correo">
                            </div>
                            <div class="group">
                                <label for="pass" class="label">Password</label>
                                <input id="pass" type="password" class="input" data-type="password" name="contrasena">
                            </div>
                            <div class="group">
                                <input type="submit" class="button" value="Sign In">
                            </div>
                            <div class="hr"></div>
                        </div>
                        <div class="for-pwd-htm">
                            <div class="group">
                                <label for="user" class="label">Username or Email</label>
                                <input id="user" type="text" class="input">
                            </div>
                            <div class="group">
                                <input type="submit" class="button" value="Reset Password">
                            </div>
                            <div class="hr"></div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>
