const express = require("express");
const app = express();
const port = 3000;

app.get("/", (req, res) => {
    res.send("Olá docker! Atualizado!");
})

app.listen(port, () => {
    console.log("Container rodando na porta " + port);
})