<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InicioCatalogo.aspx.cs" Inherits="AppwebCine.InicioCatalogo" %>

<!DOCTYPE html>
<html data-bs-theme="dark" lang="es">
<head runat="server">
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <title>Gestión de Películas</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700;900&amp;display=swap" rel="stylesheet" />
    <link href="~/Content/CatalogoPelis.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form2" runat="server">
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
                        <span class="navbar-text me-3">Bienvenido, Admin
                        </span>
                        <asp:Button ID="btnLogout" runat="server" Text="Cerrar sesión"
                            CssClass="btn btn-outline-danger" OnClick="btnLogout_Click" />
                    </div>
                </div>
            </div>
        </nav>
        <div class="d-flex">
            <main class="flex-grow-1 p-4 p-md-5">
                <div class="container-fluid">
                    <div class="d-flex justify-content-between align-items-center flex-wrap gap-3 mb-4">
                        <div>
                            <h1 class="h2 fw-bolder">Catalogo de peliculas</h1>
                            <p class="text-secondary">Gestiona todas la peliculas disponibles del cine</p>
                        </div>
                        <button class="btn btn-primary btn-lg fw-bold d-none d-md-block">+ Agregar nueva pelicula</button>
                    </div>
                    <div class="card bg-transparent border-0">
                        <div class="card-body p-0">
                            <div class="row g-3 mb-4">
                                <div class="col-md-8">
                                    <div class="input-group">
                                        <span class="input-group-text bg-secondary-bg border-secondary-bg text-secondary">
                                            <i class="bi bi-search"></i>
                                        </span>
                                        <input aria-label="Search by movie title" class="form-control form-control-lg" placeholder="Buscar por el titulo de la pelicula" type="text" />
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <select aria-label="Filter by genre" class="form-select form-select-lg">
                                        <option selected="">Todos los generos</option>
                                        <option value="1">Accion</option>
                                        <option value="2">Comedia</option>
                                        <option value="3">Ciencia Ficcion</option>
                                        <option value="4">Terror</option>
                                    </select>
                                </div>
                            </div>
                            <div class="table-responsive rounded-3">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th scope="col" style="width: 1%;">Poster</th>
                                            <th class="sortable asc" scope="col">Titulo</th>
                                            <th class="sortable" scope="col">Genero</th>
                                            <th class="sortable" scope="col">Duracion</th>
                                            <th class="text-end" scope="col">Acciones</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <img alt="Cosmic Odyssey poster" class="rounded" height="56" src="https://lh3.googleusercontent.com/aida-public/AB6AXuD-jdOBMa17tEmlzazjpjydj4Kd-mTmiCVf00xi9uT0DAuz5jm-omBctSqWR3f_90BRcZwjhcvnqoBYKJoHsYoESM_ZokvfMXnN601ncK6xI3HkLZN55nUf9v1tBOJk89KMJ7tSJa_P05uaa_zAXUqPxY7D4iae_nR8gLZOSvliFU5IaxGdHNnNCb4HYk0SHRTNXnKqUL9tL4Ed_y3LFUaimiOEry5UzHjEyAxPT-noZlM4M7xgIFZi9_IeM8PqJg1VaQRkhpcSvs_j" style="min-width: 40px; object-fit: cover;" width="40" />
                                            </td>
                                            <td class="fw-medium">Cosmic Odyssey</td>
                                            <td>
                                                <span class="badge bg-light bg-opacity-10 text-light fw-normal me-1">Sci-Fi</span>
                                                <span class="badge bg-light bg-opacity-10 text-light fw-normal">Adventure</span>
                                            </td>
                                            <td class="text-secondary">148 min</td>
                                            <td class="text-end">
                                                <div aria-label="Movie actions" class="btn-group" role="group">
                                                    <button class="btn btn-sm btn-outline-secondary border-0" title="Edit" type="button"><i class="bi bi-pencil-square"></i></button>
                                                    <button class="btn btn-sm btn-outline-secondary border-0" title="Delete" type="button"><i class="bi bi-trash3"></i></button>
                                                    <button class="btn btn-sm btn-outline-secondary border-0" title="View Showtimes" type="button"><i class="bi bi-film"></i></button>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <img alt="Neon City poster" class="rounded" height="56" src="https://lh3.googleusercontent.com/aida-public/AB6AXuCwyrwz6giTwbJF6iDTLf-jaD18caxeKbFMadAWXWBMQbszo8kFVgB1NY3TZKdLixJpx-j5etWVEMrbOqVA2tGsimW4DjgOc1_wUtd5ly9uyRJFyipH-q6p91t4q1l2RGZFlDOFXRSqt1iGjtM9OxNzlEvAneBdCu47Zsy5P27pIgeA1nDRElMA_ruuQWjAfGSYc7fYLjRKUAid9oe8L7L9HqHBG_lCIURXJwfXzxZViSoGemLgqL_kbN8I0h-v6XPqLUW2kyfV8Iwi" style="min-width: 40px; object-fit: cover;" width="40" />
                                            </td>
                                            <td class="fw-medium">Neon City</td>
                                            <td>
                                                <span class="badge bg-light bg-opacity-10 text-light fw-normal me-1">Action</span>
                                                <span class="badge bg-light bg-opacity-10 text-light fw-normal">Thriller</span>
                                            </td>
                                            <td class="text-secondary">122 min</td>
                                            <td class="text-end">
                                                <div aria-label="Movie actions" class="btn-group" role="group">
                                                    <button class="btn btn-sm btn-outline-secondary border-0" title="Edit" type="button"><i class="bi bi-pencil-square"></i></button>
                                                    <button class="btn btn-sm btn-outline-secondary border-0" title="Delete" type="button"><i class="bi bi-trash3"></i></button>
                                                    <button class="btn btn-sm btn-outline-secondary border-0" title="View Showtimes" type="button"><i class="bi bi-film"></i></button>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <img alt="The Last Stand poster" class="rounded" height="56" src="https://lh3.googleusercontent.com/aida-public/AB6AXuDfIg76JRIwDmpuUqN2j1qVlSFHxh29g7G3e9hcnIC46CrRUkHlR5qjSSV68j4xrZ4WZInBZYtDgrGM0XClFYXnHk1iYkJCQwOBcAZsRGbEcs9wYglV_xEKKQeUB-OqqXpV_6yRahW6-FElBrV1thj3keRB0adTMB28qcwOnVNvxtHAxabtw3eslzJGjGmVTvVxbT64sAqOTWJSyK5Em9wQpGsnp_qJFaHRXvZFfPO30Vj2bwXShHXrn9ZgA4nZJSkE7Cgvy-lq21V_" style="min-width: 40px; object-fit: cover;" width="40" />
                                            </td>
                                            <td class="fw-medium">The Last Stand</td>
                                            <td>
                                                <span class="badge bg-light bg-opacity-10 text-light fw-normal me-1">War</span>
                                                <span class="badge bg-light bg-opacity-10 text-light fw-normal">Drama</span>
                                            </td>
                                            <td class="text-secondary">135 min</td>
                                            <td class="text-end">
                                                <div aria-label="Movie actions" class="btn-group" role="group">
                                                    <button class="btn btn-sm btn-outline-secondary border-0" title="Edit" type="button"><i class="bi bi-pencil-square"></i></button>
                                                    <button class="btn btn-sm btn-outline-secondary border-0" title="Delete" type="button"><i class="bi bi-trash3"></i></button>
                                                    <button class="btn btn-sm btn-outline-secondary border-0" title="View Showtimes" type="button"><i class="bi bi-film"></i></button>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <img alt="Echoes of Time poster" class="rounded" height="56" src="https://lh3.googleusercontent.com/aida-public/AB6AXuATOyYgSwLCwbMCqbRJh9VNCs8caH_XiBY8cMYwIuFGmpgg-K_qjfuJzFKrOY9kMTW-Cb2-CuHEWgUxwkGZEP2eCE8WdJtjqA_nhY73Q3uzYN1lDrVo286wKLFjWhZmFpjpxomx3AlJ7ZynxxkbpSwjh8MXnufo_DUUAis24YrZ5qJUNsRjpTWCSsDwZ3gNwJD8fwZuZ4WT5gc7ZVeshN08nBxuGETvdbujPIDXO-iK7_QvJTeBAFz9rZ2_f8BSqkL26lCgtTxsMZq8" style="min-width: 40px; object-fit: cover;" width="40" />
                                            </td>
                                            <td class="fw-medium">Echoes of Time</td>
                                            <td>
                                                <span class="badge bg-light bg-opacity-10 text-light fw-normal me-1">Mystery</span>
                                                <span class="badge bg-light bg-opacity-10 text-light fw-normal">Sci-Fi</span>
                                            </td>
                                            <td class="text-secondary">115 min</td>
                                            <td class="text-end">
                                                <div aria-label="Movie actions" class="btn-group" role="group">
                                                    <button class="btn btn-sm btn-outline-secondary border-0" title="Edit" type="button"><i class="bi bi-pencil-square"></i></button>
                                                    <button class="btn btn-sm btn-outline-secondary border-0" title="Delete" type="button"><i class="bi bi-trash3"></i></button>
                                                    <button class="btn btn-sm btn-outline-secondary border-0" title="View Showtimes" type="button"><i class="bi bi-film"></i></button>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="d-flex justify-content-center mt-4">
                                <nav aria-label="Page navigation">
                                    <ul class="pagination">
                                        <li class="page-item disabled">
                                            <a aria-label="Previous" class="page-link" href="#" tabindex="-1">
                                                <span aria-hidden="true">«</span>
                                            </a>
                                        </li>
                                        <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                                        <li class="page-item disabled"><span class="page-link">...</span></li>
                                        <li class="page-item"><a class="page-link" href="#">10</a></li>
                                        <li class="page-item">
                                            <a aria-label="Next" class="page-link" href="#">
                                                <span aria-hidden="true">»</span>
                                            </a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
