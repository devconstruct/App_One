const express = require("express");
const mysql = require("mysql2");
const cors = require("cors");

const app = express();
app.use(cors());
app.use(express.json()); // Para poder leer los datos en formato JSON

const db = mysql.createConnection({
  host: "localhost",
  port: 8889,
  user: "jono",
  password: "", // Cambia esto si tienes otra contraseña
  database: "one", // Asegúrate de usar tu base de datos
});

// Conexión a la base de datos
db.connect((err) => {
  if (err) {
    console.error("Error de conexión:", err);
  } else {
    console.log("Conectado a la base de datos");
  }
});

// Ruta para el login
app.post("/login", (req, res) => {
  const { email, password } = req.body;

  // Buscar al usuario por email
  const query = `SELECT * FROM usuarios WHERE email = ?`;

  db.query(query, [email], (err, results) => {
    if (err) {
      console.error("Error al consultar la base de datos:", err);
      return res.status(500).json({ error: "Error en la consulta de la base de datos" });
    }

    if (results.length === 0) {
      return res.status(401).json({ error: "Usuario no encontrado" });
    }

    const user = results[0];

    // Comparar la contraseña proporcionada con la almacenada (sin encriptación)
    if (user.password !== password) {
      return res.status(401).json({ error: "Contraseña incorrecta" });
    }

    // Si las credenciales son correctas, enviar el rol del usuario
    res.json({ rol: user.email.split('@')[0] }); // Asumimos que el rol se puede determinar por el email
  });
});

// Ruta para obtener los datos de ventas
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

// Iniciar servidor
app.listen(3001, () => {
  console.log("Servidor corriendo en http://localhost:3001");
});
