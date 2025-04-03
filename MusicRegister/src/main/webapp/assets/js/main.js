
const html = document.querySelector("html");
const changeTheme = document.querySelector("button#themeToggle");

changeTheme.addEventListener("click",Action.changeThemeFromClick.bind(null,html))

Action.changeThemeFromLocalStorage(html);
 