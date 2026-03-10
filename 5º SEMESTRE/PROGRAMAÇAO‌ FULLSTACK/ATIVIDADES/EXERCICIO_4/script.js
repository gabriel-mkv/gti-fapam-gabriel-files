document.getElementById("entrarBtn").addEventListener("click", function () {
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