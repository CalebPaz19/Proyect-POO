<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" data-bs-theme="light">
<head>
    <title>Music Player</title>
    <meta charset="UTF-8">
    
    <meta name="author" content="johan.paz@unah.hn">
    <meta name="author" content="fcardonab@unah.hn">
    <meta name="author" content="ssalinasr@unah.hn">
    <meta name="author" content="******@unah.hn">
	
	<meta name="version" content="0.1.0">
	
	<meta name="date" content="2025/04/1">
	<meta name="since" content="2025/04/1">
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    
</head>
<body>
    <div class="container-fluid">
    
        <!-- Menú superior -->
        <header class="row py-3">
            <div class="col-md-6">
                <h1 class="logo">MusicPlayer</h1>
            </div>
            
            <div class="col-md-6 text-end">
                <button id="changeThemebtn" class="btn btn-outline-secondary me-2">
                    <i class="bi bi-moon-fill"></i> Cambiar Tema
                </button>
                <button id="statsBtn" class="btn btn-primary" 
		                data-title="Estadísticas"
				        data-message="<p>Estadísticas de uso de la aplicación.</p>"
				        data-header-class="bg-primary"
				        data-footer="<button class='btn btn-secondary' data-bs-dismiss='modal'>Cerrar</button>">
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
                <button id="addSongBtn" class="btn btn-success"
                 		data-title="Agregar Canción"
			        	data-message="<p>Formulario para agregar una nueva canción.</p>"
			        	data-header-class="bg-success"
			        	data-footer="<button class='btn btn-primary'>Guardar</button>">
                    <i class="bi bi-plus-circle"></i> Agregar Canción
                </button>
            </div>
            <div class="col-md-4 text-center">
                <button id="aboutBtn" class="btn btn-outline-info" 
		                data-title="Acerca de"
				        data-message="<p>Este es un reproductor de música creado por el equipo de UNAH.</p>"
				        data-header-class="bg-info"
				        data-footer="<button class='btn btn-secondary' data-bs-dismiss='modal'>Cerrar</button>">
		        	Acerca de
		        </button>
            </div>
            <div class="col-md-4 text-end">
                <button id="clearDataBtn" class="btn btn-danger">
                    <i class="bi bi-trash-fill"></i> Limpiar Datos
                </button>
            </div>
              
        </footer>
        </div>
       
		<!-- Reproductor -->
		
      <!-- Reproductor (inicialmente oculto con clase hidden) -->
		<div id="player" class="fixed-bottom player-bar hidden">
		    <div class="container">
		        <div class="row align-items-center">
		            <div class="col-md-4">
		                <div class="now-playing">Reproduciendo: <span class="current-song-title"></span></div>
		            </div>
		            <div class="col-md-4 text-center">
		                <audio class="audio-player" controls></audio>
		            </div>
		            <div class="col-md-4 text-end">
		                <button class="show-lyrics btn btn-sm btn-outline-secondary">Letra</button>
		            </div>
		        </div>
		    </div>
		</div>
		
		
		<div id="dynamicModal" class="modal fade" tabindex="-1">
		    <div class="modal-dialog modal-right" >
		        <div class="modal-content">
		            <div class="modal-header">
		                <h5 class="modal-title" id="dynamicModalTitle">Titulo</h5>
		                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		            </div>
		            <div class="modal-body" id="dynamicModalBody">
		               Contenido dinamico
		            </div>
		            <div class="modal-footer" id="dynamicModalFooter">
		                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
		            </div>
		        </div>
		    </div>
		</div>
		
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/js/Theme.js"></script>
	<script src="assets/js/Modal.js"></script>	
	<script src="assets/js/main.js"></script>
	
	
</body>
</html>