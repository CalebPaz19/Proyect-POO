
const html = document.querySelector("html");
const changeTheme = document.querySelector("button#changeThemebtn");

changeTheme.addEventListener("click",Theme.changeThemeFromClick.bind(null,html))

Theme.changeThemeFromLocalStorage(html);


const modal = new Modal();
const addSongButton = document.querySelector("button#addSongBtn");
const aboutButton = document.querySelector("button#aboutBtn");
const statsButton = document.querySelector("button#statsBtn");


aboutBtn.addEventListener("click",modal.open.bind(modal,modalContents.about.headerClass,
   modalContents.about.title,
   modalContents.about.body,
   modalContents.about.footer));

addSongButton.addEventListener("click",modal.open.bind(modal,modalContents.addSong.headerClass,
	    modalContents.addSong.title,
	    modalContents.addSong.body,
	    modalContents.addSong.footer));
		
statsButton.addEventListener("click",modal.open.bind(modal,modalContents.stats.headerClass,
		    modalContents.stats.title,
		    modalContents.stats.body,
		    modalContents.stats.footer));