<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="myBooks.aspx.cs" Inherits="TripAdvisor.Views.myBooks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet"
        id="theme_link"
        href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/5.3.1/lux/bootstrap.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

    <title>Wish List</title>
</head>
<body>
    <form id="form1" runat="server">
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
            <!---Trip Box with payment info--->
            <div class="container">
                <div class="row" style="margin-top: 20px">
                    <asp:Repeater ID="repBooked" runat="server">
                        <HeaderTemplate></HeaderTemplate>
                        <ItemTemplate>
                            <div class="card shadow-sm" style="max-width: 25rem; margin-left: 12px;">
                                <img src="<%# Eval("PhotoPath")%>" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title"><%# Eval("Name")%></h5>
                                    <hr>
                                    <div class="row">
                                        <div class="col">
                                            <strong>Checkin:</strong>
                                            <p class="card-text"><%# Eval("Checkin")%></p>
                                        </div>
                                        <div class="col">
                                            <strong>Checkout:</strong>
                                            <p class="card-text"><%# Eval("Checkout")%></p>
                                        </div>
                                        <div class="col">
                                            <strong>Hour:</strong>
                                            <p class="card-text"><%# Eval("BookedHour")%></p>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col">
                                            <strong>Adults:</strong> <%# Eval("Adults")%>
                                        </div>
                                        <div class="col">
                                            <strong>Total:</strong> $<label><%# Eval("Total")%></label>
                                        </div>
                                    </div>
                                    <hr>
                                    <p class="card-text"><small class="text-muted">Created: <%# Eval("Created")%></small></p>
                                    <button id="btnDeleteFav" runat="server" type="button" dataid='<%# Eval("BookedId")%>' onserverclick="btnDeleteFav_ServerClick" class="btn btn-danger">Delete</button>
                                </div>
                            </div>
                        </ItemTemplate>
                        <FooterTemplate></FooterTemplate>
                    </asp:Repeater>
                </div>
            </div>
    </form>
</body>
</html>
