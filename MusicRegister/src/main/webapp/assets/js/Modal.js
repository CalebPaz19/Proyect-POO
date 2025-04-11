class Modal {
	
	constructor(){
		const options = {keyboard: false};
		this.dynamicModal = document.querySelector("#dynamicModal");	
		this.modal = new bootstrap.Modal(dynamicModal, options)
	}
	
	open(secondaryHeaderClass,title,message,footerHTML = "") {
        
		const defaultClassName = "modal-header";
		const modalHeader = this.dynamicModal.querySelector("."+defaultClassName);
		modalHeader.setAttribute("class","");
		modalHeader.classList.add(defaultClassName,secondaryHeaderClass,"text-white");
		
		const dynamicModalTitle = this.dynamicModal.querySelector("#dynamicModalTitle");
		dynamicModalTitle.innerHTML = title;
		
		const modalBody = this.dynamicModal.querySelector("#dynamicModalBody");
		modalBody.innerHTML = message;
		
		const dynamicModalFooter = this.dynamicModal.querySelector("#dynamicModalFooter");
		dynamicModalFooter.innerHTML = footerHTML;
		
		this.modal.show();
	}

    close() {
        this.modal.hide();
    }
	
	
 }
 
 const modalContents = {
   addSong: {
     headerClass: "bg-success",
     title: "Agregar Canción",
     body: `<p>Formulario para agregar una nueva canción.</p>`,
     footer: `<button class="btn btn-primary">Guardar</button>`
   },
   about: {
     headerClass: "bg-info",
     title: "Acerca de",
     body: `<p>Sistema desarrollado como proyecto para el curso de Programación Orientada a Objetos</p>
 			<p>Permite gestionar un catálogo musical con reproducción de canciones, organización por géneros y estadísticas de uso.</p>`,
     footer: `<button class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>`
   },
   stats: {
     headerClass: "bg-primary",
     title: "Estadísticas",
     body: `<p>Estadísticas de uso de la aplicación.</p>`,
     footer: `<button class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>`
   }
 };