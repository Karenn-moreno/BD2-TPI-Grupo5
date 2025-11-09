<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Funciones.aspx.cs" Inherits="AppwebCine.Funciones" %>

<!DOCTYPE html>
<html lang="es">
<head runat="server">
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <title>Cinema Admin - Selección de Asientos</title>
    <link crossorigin="anonymous" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet" />
    <link href="~/Content/Funciones.css" rel="stylesheet" type="text/css" />
</head>
<body data-bs-theme="dark">
    <form id="form3" runat="server">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand fw-bold" href="#">CineDB </a>
                <button aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation" class="navbar-toggler" data-bs-target="#navbarNav" data-bs-toggle="collapse" type="button">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a aria-current="page" class="nav-link active" href="InicioCatalogo.aspx">Peliculas</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Funciones.aspx">Funciones</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Entradas.aspx">Entradas</a>
                        </li>
                    </ul>
                    <div class="d-flex align-items-center">
                        <asp:Button ID="btnLogout" runat="server" Text="Cerrar sesión"
                            CssClass="btn btn-outline-danger" OnClick="btnLogout_Click" />
                    </div>
                </div>
            </div>
        </nav>
        <main class="container-fluid py-4 py-lg-5">
            <div class="card bg-secondary text-light mb-4 shadow">
                <div class="card-body">
                    <div class="row align-items-center">
                        <div class="col-md-auto text-center text-md-start mb-3 mb-md-0">
                            <img alt="Póster de Dune: Parte Dos" class="rounded" src="https://lh3.googleusercontent.com/aida-public/AB6AXuBdpytaGhqLOto_fQ2IVr2iITbvZY53Eo46m62ghlnE4emEfuLPAKotnzZ5dusecFKxpm6iXqWWA7h4CxzeMGDfFfmKvzxMGqZzXkAo-_4Vj6STUmWmCeXR6oorW6gthr48Sri32RNK_GXeVKikj_Axxzywzl2yQ4uV3dYYlDUhh1ioVgM2hEF0mzHTd81hiyDAx6Yilp98cjW-AsCS2Nrc22zSuwK3EMXGF6mx2wD0uAjRTmOvri2l_IVpZ0vDEB3wrQSyFLAbh-7R" style="width: 100px; height: 150px; object-fit: cover;" />
                        </div>
                        <div class="col-md">
                            <h1 class="h3 card-title fw-bold">Dune: Parte Dos</h1>
                            <p class="card-text lead mb-1">Mapa de Asientos</p>
                            <div class="d-flex flex-wrap gap-3 text-light">
                                <span><i class="bi bi-calendar-event me-2"></i>15 de Marzo, 2024</span>
                                <span><i class="bi bi-clock me-2"></i>15:00</span>
                                <span><i class="bi bi-display me-2"></i>Sala 3</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row g-4">
                <div class="col-lg-8">
                    <div class="card shadow-sm">
                        <div class="card-body">
                            <div class="text-center mb-4">
                                <div class="screen w-75 mx-auto"></div>
                                <p class="text-muted small mt-2 fw-bold text-uppercase">Pantalla</p>
                            </div>
                            <div class="d-flex justify-content-center">
                                <div aria-label="Seat map" class="d-inline-flex flex-column gap-2" role="group">
                                    <div class="d-flex align-items-center gap-2" v-for="row in ['A', 'B', 'C', 'D', 'E', 'F']">
                                        <span class="fw-bold text-muted" style="width: 20px;">A</span>
                                        <div class="d-flex flex-nowrap gap-2">
                                            <button class="seat available" type="button">1</button>
                                            <button class="seat available" type="button">2</button>
                                            <button class="seat occupied" disabled="" type="button">3</button>
                                            <button class="seat occupied" disabled="" type="button">4</button>
                                            <div class="mx-2"></div>
                                            <button class="seat selected" type="button">5</button>
                                            <button class="seat available" type="button">6</button>
                                            <button class="seat available" type="button">7</button>
                                            <button class="seat occupied" disabled="" type="button">8</button>
                                            <div class="mx-2"></div>
                                            <button class="seat available" type="button">9</button>
                                            <button class="seat available" type="button">10</button>
                                        </div>
                                    </div>
                                    <div class="d-flex align-items-center gap-2" v-for="row in ['A', 'B', 'C', 'D', 'E', 'F']">
                                        <span class="fw-bold text-muted" style="width: 20px;">B</span>
                                        <div class="d-flex flex-nowrap gap-2">
                                            <button class="seat available" type="button">1</button>
                                            <button class="seat available" type="button">2</button>
                                            <button class="seat occupied" disabled="" type="button">3</button>
                                            <button class="seat occupied" disabled="" type="button">4</button>
                                            <div class="mx-2"></div>
                                            <button class="seat available" type="button">5</button>
                                            <button class="seat available" type="button">6</button>
                                            <button class="seat available" type="button">7</button>
                                            <button class="seat occupied" disabled="" type="button">8</button>
                                            <div class="mx-2"></div>
                                            <button class="seat available" type="button">9</button>
                                            <button class="seat available" type="button">10</button>
                                        </div>
                                    </div>
                                    <div class="d-flex align-items-center gap-2" v-for="row in ['A', 'B', 'C', 'D', 'E', 'F']">
                                        <span class="fw-bold text-muted" style="width: 20px;">C</span>
                                        <div class="d-flex flex-nowrap gap-2">
                                            <button class="seat available" type="button">1</button>
                                            <button class="seat available" type="button">2</button>
                                            <button class="seat available" type="button">3</button>
                                            <button class="seat available" type="button">4</button>
                                            <div class="mx-2"></div>
                                            <button class="seat available" type="button">5</button>
                                            <button class="seat available" type="button">6</button>
                                            <button class="seat available" type="button">7</button>
                                            <button class="seat available" type="button">8</button>
                                            <div class="mx-2"></div>
                                            <button class="seat available" type="button">9</button>
                                            <button class="seat available" type="button">10</button>
                                        </div>
                                    </div>
                                    <div class="d-flex align-items-center gap-2" v-for="row in ['A', 'B', 'C', 'D', 'E', 'F']">
                                        <span class="fw-bold text-muted" style="width: 20px;">D</span>
                                        <div class="d-flex flex-nowrap gap-2">
                                            <button class="seat selected" type="button">1</button>
                                            <button class="seat selected" type="button">2</button>
                                            <button class="seat available" type="button">3</button>
                                            <button class="seat available" type="button">4</button>
                                            <div class="mx-2"></div>
                                            <button class="seat occupied" disabled="" type="button">5</button>
                                            <button class="seat occupied" disabled="" type="button">6</button>
                                            <button class="seat occupied" disabled="" type="button">7</button>
                                            <button class="seat available" type="button">8</button>
                                            <div class="mx-2"></div>
                                            <button class="seat available" type="button">9</button>
                                            <button class="seat available" type="button">10</button>
                                        </div>
                                    </div>
                                    <div class="d-flex align-items-center gap-2" v-for="row in ['A', 'B', 'C', 'D', 'E', 'F']">
                                        <span class="fw-bold text-muted" style="width: 20px;">E</span>
                                        <div class="d-flex flex-nowrap gap-2">
                                            <button class="seat available" type="button">1</button>
                                            <button class="seat available" type="button">2</button>
                                            <button class="seat available" type="button">3</button>
                                            <button class="seat available" type="button">4</button>
                                            <div class="mx-2"></div>
                                            <button class="seat available" type="button">5</button>
                                            <button class="seat available" type="button">6</button>
                                            <button class="seat available" type="button">7</button>
                                            <button class="seat available" type="button">8</button>
                                            <div class="mx-2"></div>
                                            <button class="seat available" type="button">9</button>
                                            <button class="seat available" type="button">10</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="card shadow-sm">
                        <div class="card-body">
                            <h5 class="card-title fw-bold mb-3">Leyenda</h5>
                            <div class="d-flex flex-wrap gap-3 mb-4">
                                <div class="d-flex align-items-center">
                                    <div class="seat available me-2"></div>
                                    <small>Disponible</small>
                                </div>
                                <div class="d-flex align-items-center">
                                    <div class="seat selected me-2"></div>
                                    <small>Seleccionado</small>
                                </div>
                                <div class="d-flex align-items-center">
                                    <div class="seat occupied me-2"></div>
                                    <small>Ocupado</small>
                                </div>
                            </div>
                            <hr />
                            <h5 class="card-title fw-bold mt-4 mb-3">Resumen de la Selección</h5>
                            <div>
                                <div class="d-flex justify-content-between align-items-center mb-2">
                                    <span>Asientos seleccionados</span>
                                    <div class="d-flex flex-wrap gap-1">
                                        <span class="badge bg-primary-subtle border border-primary-subtle text-primary-emphasis rounded-pill">A5</span>
                                        <span class="badge bg-primary-subtle border border-primary-subtle text-primary-emphasis rounded-pill">D1</span>
                                        <span class="badge bg-primary-subtle border border-primary-subtle text-primary-emphasis rounded-pill">D2</span>
                                    </div>
                                </div>
                                <div class="d-flex justify-content-between align-items-center">
                                    <span>Total de asientos</span>
                                    <span class="fw-bold">3</span>
                                </div>
                                <div class="d-flex justify-content-between align-items-center mt-3 pt-3 border-top">
                                    <span class="h5 mb-0">Total</span>
                                    <span class="h5 mb-0 fw-bold">$48.00</span>
                                </div>
                            </div>
                            <div class="d-grid gap-2 mt-4">
                                <asp:Button ID="btnConfirmar" runat="server"
                                    CssClass="btn btn-primary btn-lg fw-bold"
                                    Text="Confirmar Selección"
                                    UseSubmitBehavior="false"
                                    OnClick="btnConfirmar_Click" />
                                <asp:Button ID="btnLimpiar" runat="server"
                                    CssClass="btn btn-outline-secondary"
                                    Text="Limpiar Selección"
                                    UseSubmitBehavior="false"
                                    OnClick="btnLimpiar_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </form>
    <script crossorigin="anonymous" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
