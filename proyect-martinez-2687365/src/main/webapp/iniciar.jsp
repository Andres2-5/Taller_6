<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta name="author" content="Andrés Martínez">
    <meta charset="UTF-8">
    <meta name="description" content="Es un formulario para inicar sesion">
    <meta name="keywords" content="Formulario de inicio de sesion">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>INICIAR SESION</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./css/style.css">
</head>
<body class="text-center">
<main class="form-signin w-100 m-auto">
    <form action="" method="post">
        <img class="mb-4" src="./img/logo3.png" alt="My App" width="200">
        <h4 class="text-secondary">NeoVentures</h4>
        <h1 class="h5 mb-3 fw-normal">Ingreso</h1>

        <div class="form-floating col-md-12">
            <input type="email" class="form-control" id="email" placeholder="Ingrese su Correo" autofocus required pattern="{60}">
            <label for="email">Correo</label>
        </div>
        <div class="form-floating col-md-12">
            <input type="password" class="form-control" id="floatingPassword" placeholder="Ingrese su Contraseña" required pattern="(?=.*\&)(?=,[a-z])(?=/[A-Z]){8,16}$">
            <label for="floatingPassword">Password</label>
        </div>
        <button class="w-100 btn btn-lg btn-primary" type="submit">Iniciar</button>
        <div id="register">
            <a href="index.jsp">Registrarse</a>
        </div>
        <p class="mt-3 mb-3 text-muted">Todos los derechos reservados NeoVentures <%=displayDate()%></p>
    </form>
</main>
<script></script>
<%!
    public String displayDate(){
        SimpleDateFormat dateFormat = new SimpleDateFormat("YYYY");
        Date date = Calendar.getInstance().getTime();
        return dateFormat.format(date);
    }
%>
</body>
</html>