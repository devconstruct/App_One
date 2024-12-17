import axios from "axios";

const API_URL = "http://192.168.1.93:3001"; // Asegúrate de usar la IP correcta de tu servidor

// Función para iniciar sesión
export const loginUser = async (email, password) => {
  try {
    const response = await axios.post(`${API_URL}/login`, { email, password });
    return response.data; // Devolvemos la respuesta del servidor que contiene el rol
  } catch (error) {
    console.error("Error al iniciar sesión:", error);
    throw error;
  }
};

// Función para obtener los datos de ventas
export const getSalesData = async () => {
  try {
    const response = await axios.get(`${API_URL}/salesData`);
    return response.data; // Los datos devueltos deberían ser la lista de departamentos con sus totales
  } catch (error) {
    console.error("Error al obtener los datos de ventas:", error);
    throw error;
  }
};
