const express = require('express');
const app = express();
const port = 3001;

app.get('/servicio-mmg', (req, res) => {
  res.json({ mensaje: "Respuesta desde el servicio de Mauricio, empecé programando en arduino!" });
});

app.listen(port, () => {
  console.log(`Servicio de Mauricio escuchando en http://localhost:${port}`);
});