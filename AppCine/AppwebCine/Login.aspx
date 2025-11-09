<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AppwebCine.Login" %>

<!DOCTYPE html>
<html lang="es">
<head runat="server">
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <title>Cinema Admin Portal - Login</title>
    <link crossorigin="anonymous" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com" rel="preconnect" />
    <link crossorigin="" href="https://fonts.gstatic.com" rel="preconnect" />
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&amp;display=swap" rel="stylesheet" />
    <link href="~/Content/Login.css" rel="stylesheet" type="text/css" /> 
</head>
<body class="d-flex align-items-center justify-content-center vh-100">
    <form id="form" runat="server">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                    <div class="card shadow-lg">
                        <div class="card-body p-5">
                            <div class="text-center mb-5">
                                <h1 class="fw-bold mb-2">CineDB</h1>
                                <p class="mb-0 text-secondary">Por favor, inicia sesion para gestionar el portal del cine</p>
                            </div>

                            <div class="mb-3">
                                <label class="form-label" for="usernameInput">Usuario</label>
                                <asp:TextBox ID="usernameInput" runat="server" CssClass="form-control"
                                    placeholder="Ingrese su email"></asp:TextBox>
                            </div>
                            <div class="mb-3">
                                <label class="form-label" for="passwordInput">Contraseña</label>
                                <asp:TextBox ID="passwordInput" runat="server" CssClass="form-control"
                                    placeholder="Ingrese su contraseña" TextMode="Password"></asp:TextBox>
                            </div>
                            <div class="d-flex justify-content-between align-items-center mb-4">
                                <div class="form-check">
                                </div>
                                <a class="link-primary fw-medium" href="#">Olvidaste la contraseña?</a>
                            </div>
                            <div class="d-grid">
                                <asp:Button ID="btnLogin" runat="server" Text="Ingresar" CssClass="btn btn-primary btn-lg fw-bold" OnClick="btnLogin_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
      <script crossorigin="anonymous" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
