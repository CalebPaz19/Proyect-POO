<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Music Player</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
</head>
<body class="light-theme">
    <div class="container-fluid">
        <!-- Menú superior -->
        <header class="row py-3">
            <div class="col-md-6">
                <h1 class="logo">MusicPlayer</h1>
            </div>
            <div class="col-md-6 text-end">
                <button id="themeToggle" class="btn btn-outline-secondary me-2">
                    <i class="bi bi-moon-fill"></i> Tema Oscuro
                </button>
                <button id="statsBtn" class="btn btn-primary">
                    <i class="bi bi-bar-chart-fill"></i> Estadísticas
                </button>
            </div>
        </header>
        
        <!-- Contenido principal -->
        <main class="row my-4">
            <div class="col-12">
                <h2>Últimas canciones añadidas</h2>
                <div id="songGrid" class="row">
                    <!-- Se llena dinámicamente con JavaScript -->
                </div>
            </div>
        </main>
        <!-- Menú inferior -->
        <footer class="row py-3 mt-4 border-top">
            <div class="col-md-4">
                <button id="addSongBtn" class="btn btn-success">
                    <i class="bi bi-plus-circle"></i> Agregar Canción
                </button>
            </div>
            <div class="col-md-4 text-center">
                <button id="aboutBtn" class="btn btn-outline-info">Acerca de</button>
            </div>
            <div class="col-md-4 text-end">
                <button id="clearDataBtn" class="btn btn-danger">
                    <i class="bi bi-trash-fill"></i> Limpiar Datos
                </button>
            </div>
        </footer>
        </div>
</body>
</html>
