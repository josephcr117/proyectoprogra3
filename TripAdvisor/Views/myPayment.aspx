<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="myPayment.aspx.cs" Inherits="TripAdvisor.Views.myPayment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet"
        id="theme_link"
        href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/5.3.1/lux/bootstrap.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <title>Payment Information</title>
    <style>
        .card {
            border-color: #fff;
        }

        .card-title, .card-subtitle, .card-text, .book-list, .totales {
            text-align: center;
        }

        .btn {
            margin: auto;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <div>
        <nav class="navbar navbar-expand-lg bg-primary" data-bs-theme="dark">
            <div class="container-fluid">
                <a runat="server" id="UserNameIfLogged" class="navbar-brand" href="#">TripAdvisor</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarColor01">
                    <ul class="navbar-nav me-auto">
                        <li class="nav-item">
                            <a class="nav-link active" href="main.aspx">Home
                            <span class="visually-hidden">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" href="#">Login</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Services</a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="myTrips.aspx">My Trips</a>
                                <a class="dropdown-item" href="myCart.aspx">My Cart</a>
                                <a class="dropdown-item" href="myPayment.aspx">My Payments</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Separated link</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container mt-4">
            <div class="card">
                <h2 class="card-title">Libreria International</h2>
                <h4 class="card-subtitle">Sucursal San Jose</h4>

                <div class="card-body">
                    <p class="card-text">Cliente: correo@dominio</p>
                    <p class="card-text">Nombre: Nombre</p>

                    <div class="book-list">
                        <p>Libro1 $10.99</p>
                        <p>Libro2 $10.99</p>
                        <p>Libro3 $9.99</p>
                        <p>Libro4 $7.99</p>
                    </div>

                    <div class="totales">
                        <p>Total $36.98</p>
                        <p>Cargado a la tarjeta ***89</p>
                        <p>Se envia a Direccion</p>
                        <button class="btn btn-success">Download Receipt</button>
                    </div>
                </div>
            </div>
        </div>
</body>
</html>
