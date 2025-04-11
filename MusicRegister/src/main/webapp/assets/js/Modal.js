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