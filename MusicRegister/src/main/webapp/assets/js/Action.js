const Configuration = {
	"localStorageKey": "theme",
	"defaultTheme": "light",
	"darkTheme": "dark"
};

class Action{
	
	static changeThemeFromClick(who,event){
		
		let currentTheme = who.dataset.bsTheme;
		
		if (`${currentTheme}`.match(/light/)){
			
			currentTheme = Configuration.darkTheme;
		}else{
			
			currentTheme = Configuration.defaultTheme;
		}
		
		who.dataset.bsTheme = currentTheme;
		
		localStorage.setItem(Configuration.localStorageKey,currentTheme);
	}
	
	static changeThemeFromLocalStorage(who){
		
		const currentTheme = localStorage.getItem(Configuration.localStorageKey) != null ? localStorage.getItem(Configuration.localStorageKey):
		Configuration.defaultTheme;
		
		who.dataset.bsTheme = currentTheme;
	}
}