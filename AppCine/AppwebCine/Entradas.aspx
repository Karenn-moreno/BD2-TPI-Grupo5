<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Entradas.aspx.cs" Inherits="AppwebCine.Entradas" %>

<!DOCTYPE html>
<html data-bs-theme="dark" lang="es">
<head runat="server">
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <title>Administrador de Cine - Entradas Vendidas</title>
    <link crossorigin="anonymous" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" rel="stylesheet" />
    <link href="~/Content/Entradas.css" rel="stylesheet" />
</head>
<body class="bg-dark text-light">
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
    <div class="container my-5">
        <header class="mb-4">
            <h1 class="display-5 fw-bold">Listado de Entradas Vendidas</h1>
            <p class="text-white-50">Visualiza y filtra todas las entradas vendidas en el cine.</p>
        </header>
        <div class="card mb-4">
            <div class="card-body">
                <div class="row align-items-center">
                    <div class="col-md-6 col-lg-3 mb-3 mb-lg-0">
                        <h5 class="mb-0">Ventas Totales: <span class="text-primary fw-bold" id="total-sales">$1,235.50</span></h5>
                    </div>
                    <div class="col-md-6 col-lg-9">
                        <form class="row g-2 align-items-center justify-content-lg-end" id="filter-form">
                            <div class="col-sm-6 col-lg-5">
                                <label class="visually-hidden" for="movie-filter">Filtrar por película</label>
                                <select class="form-select" id="movie-filter">
                                    <option selected="">Todas las películas</option>
                                    <option value="1">Cosmic Echoes</option>
                                    <option value="2">Cybernetic Dreams</option>
                                    <option value="3">The Last Stand</option>
                                    <option value="4">Ocean's Whisper</option>
                                </select>
                            </div>
                            <div class="col-sm-6 col-lg-5">
                                <label class="visually-hidden" for="date-filter">Filtrar por fecha</label>
                                <input class="form-control" id="date-filter" type="date" />
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="table-responsive">
            <table class="table table-dark table-striped table-hover align-middle">
                <thead class="thead-light">
                    <tr>
                        <th scope="col">Título de la Película</th>
                        <th scope="col">Fecha y Hora</th>
                        <th scope="col">Sala</th>
                        <th scope="col">Asiento</th>
                        <th class="text-end" scope="col">Precio</th>
                    </tr>
                </thead>
                <tbody id="tickets-table-body">
                    <tr>
                        <td class="fw-medium">Cosmic Echoes</td>
                        <td>2023-10-27, 19:30</td>
                        <td>Sala 5</td>
                        <td>E12</td>
                        <td class="text-end fw-bold">$15.00</td>
                    </tr>
                    <tr>
                        <td class="fw-medium">Cybernetic Dreams</td>
                        <td>2023-10-27, 20:00</td>
                        <td>Sala 2</td>
                        <td>G8, G9</td>
                        <td class="text-end fw-bold">$30.00</td>
                    </tr>
                    <tr>
                        <td class="fw-medium">The Last Stand</td>
                        <td>2023-10-27, 21:15</td>
                        <td>Sala 1 (IMAX)</td>
                        <td>J10</td>
                        <td class="text-end fw-bold">$22.50</td>
                    </tr>
                    <tr>
                        <td class="fw-medium">Ocean's Whisper</td>
                        <td>2023-10-26, 18:00</td>
                        <td>Sala 3</td>
                        <td>C4</td>
                        <td class="text-end fw-bold">$14.00</td>
                    </tr>
                    <tr>
                        <td class="fw-medium">Cosmic Echoes</td>
                        <td>2023-10-26, 19:30</td>
                        <td>Sala 5</td>
                        <td>F1, F2, F3</td>
                        <td class="text-end fw-bold">$45.00</td>
                    </tr>
                    <tr>
                        <td class="fw-medium">Cybernetic Dreams</td>
                        <td>2023-10-26, 20:00</td>
                        <td>Sala 2</td>
                        <td>A1</td>
                        <td class="text-end fw-bold">$15.00</td>
                    </tr>
                    <tr>
                        <td class="fw-medium">The Last Stand</td>
                        <td>2023-10-25, 17:00</td>
                        <td>Sala 1 (IMAX)</td>
                        <td>B5, B6</td>
                        <td class="text-end fw-bold">$45.00</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
        </form>
    <script crossorigin="anonymous" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        // Dummy script para simular interactividad
        document.addEventListener('DOMContentLoaded', function () {
            const movieFilter = document.getElementById('movie-filter');
            const dateFilter = document.getElementById('date-filter');
            const tableBody = document.getElementById('tickets-table-body');
            const totalSales = document.getElementById('total-sales');
            const originalRows = Array.from(tableBody.querySelectorAll('tr'));
            function filterTable() {
                // Lógica de filtrado iría aquí.
                // Esto es solo un placeholder para mostrar que los elementos existen.
                console.log('Filtrando por película:', movieFilter.value);
                console.log('Filtrando por fecha:', dateFilter.value);
                // Ejemplo simple de actualización de resumen
                const currentTotal = 1235.50;
                const newTotal = (Math.random() * currentTotal).toFixed(2);
                totalSales.textContent = `$${newTotal}`;
            }
            movieFilter.addEventListener('change', filterTable);
            dateFilter.addEventListener('change', filterTable);
        });
    </script>

</body>
</html>
