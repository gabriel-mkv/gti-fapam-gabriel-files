// Lógica do Botão da Página Segredo
const entrarBtn = document.getElementById("entrarBtn");
if (entrarBtn) {
    entrarBtn.addEventListener("click", function () {
        const novaJanela = window.open("", "_blank", "width=400,height=200");

        if (!novaJanela) {
            console.error("Popup bloqueado pelo navegador.");
            return;
        }

        novaJanela.document.title = "Seção Ultra Secreta";

        const body = novaJanela.document.body;
        const h2 = novaJanela.document.createElement("h2");
        
        Object.assign(body.style, {
            display: "flex",
            justifyContent: "center",
            alignItems: "center",
            height: "100vh",
            margin: "0",
            fontFamily: "sans-serif",
            background: "#222",
            color: "#fff",
            textAlign: "center",
            padding: "20px"
        });

        h2.textContent = "ALERTA: Não sobrou nada.";
        body.appendChild(h2);

        setTimeout(() => {
            novaJanela.close();
            alert("Brutal!");
        }, 1500);
    });
}

// Lógica de Troca de Tema e Toast
const btnTema = document.getElementById("btnTema");
if (btnTema) {
    btnTema.addEventListener("click", () => {
        const html = document.documentElement;
        const currentTheme = html.getAttribute("data-bs-theme");
        const newTheme = currentTheme === "dark" ? "light" : "dark";
        
        html.setAttribute("data-bs-theme", newTheme);
        
        // Ajusta classe do body para garantir contraste correto
        const body = document.body;
        if (newTheme === "dark") {
            body.classList.remove("bg-light");
            body.classList.add("bg-dark", "text-white");
            btnTema.textContent = "☀️ Tema Claro";
            btnTema.classList.replace("btn-outline-light", "btn-outline-warning");
        } else {
            body.classList.remove("bg-dark", "text-white");
            body.classList.add("bg-light");
            btnTema.textContent = "🌙 Tema Escuro";
            btnTema.classList.replace("btn-outline-warning", "btn-outline-light");
        }

        // Acionar Toast (Componente Bootstrap)
        const toastLiveExample = document.getElementById('liveToast');
        if (toastLiveExample) {
            const toastBootstrap = new bootstrap.Toast(toastLiveExample);
            const toastBody = toastLiveExample.querySelector('.toast-body');
            toastBody.textContent = `Tema alterado para ${newTheme === 'dark' ? 'Escuro' : 'Claro'}!`;
            toastBootstrap.show();
        }
    });
}