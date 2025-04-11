
const html = document.querySelector("html");
const changeTheme = document.querySelector("button#changeThemebtn");

changeTheme.addEventListener("click",Theme.changeThemeFromClick.bind(null,html))

Theme.changeThemeFromLocalStorage(html);


const modal = new Modal();
const addSongButton = document.querySelector("button#addSongBtn");
const aboutButton = document.querySelector("button#aboutBtn");
const statsButton = document.querySelector("button#statsBtn");


aboutBtn.addEventListener("click",modal.open.bind(modal,"bg-info",
    "Acerca de",
    "<p>Este es un reproductor de música creado por el equipo de UNAH.</p>",
    `<button class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>`));

addSongButton.addEventListener("click",modal.open.bind(modal,"bg-success",
	    "Agregar Canción",
	    "<p>Formulario para agregar una nueva canción.</p>",
	    `<button class="btn btn-primary">Guardar</button>`));
		
statsButton.addEventListener("click",modal.open.bind(modal,"bg-primary",
		    "Estadísticas",
		    "<p>Estadísticas de uso de la aplicación.</p>",
		    `<button class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>`));