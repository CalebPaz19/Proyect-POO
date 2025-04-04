
const html = document.querySelector("html");
const changeTheme = document.querySelector("button#changeThemebtn");

changeTheme.addEventListener("click",Action.changeThemeFromClick.bind(null,html))

Action.changeThemeFromLocalStorage(html);
 