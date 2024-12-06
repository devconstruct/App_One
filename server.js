const express = require("express");
const mysql = require("mysql2");
const cors = require("cors");

const app = express();
app.use(cors());
app.use(express.json());

const db = mysql.createConnection({
  host: "localhost",
  port: 8889,
  user: "antonio",
  password: "123456789", // Cambia esto si tienes otra contraseña
  database: "bd_one" // Asegúrate de usar tu base de datos
});

// Conexión a la base de datos
db.connect((err) => {
  if (err) {
    console.error("Error de conexión:", err);
  } else {
    console.log("Conectado a la base de datos");
  }
});

// Endpoint para obtener los datos de ventas
app.get("/salesData", (req, res) => {
  // Realizamos una consulta que obtiene los datos de ventas por departamento
  const query = `
    SELECT d.nombre AS departamento, SUM(hg.total) AS total
    FROM historial_gastos hg
    JOIN departamentos d ON hg.departamento_id = d.id
    GROUP BY d.id
  `;

  db.query(query, (err, results) => {
    if (err) {
      console.error("Error al obtener ventas:", err);
      return res.status(500).json({ error: "Error al obtener ventas" });
    }
    console.log("Datos de ventas:", results); // Verifica la respuesta
    res.json(results);
  });
});

// Puerto en el que se ejecutará el servidor
app.listen(3000, () => {
  console.log("Servidor corriendo en http://localhost:3000");
});
