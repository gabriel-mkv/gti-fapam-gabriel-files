const themeLink = document.getElementById("theme");
const formButton = document.getElementById("form");

function setThemeLight() {
    themeLink.setAttribute("href", "css/style-light.css");
}

function setThemeDark() {
    themeLink.setAttribute("href", "css/style-dark.css");
}

function sentForm() {
    if (formButton.checkValidity()) {
        alert("Formulário enviado com sucesso!");
        formButton.reset();
    }
}
