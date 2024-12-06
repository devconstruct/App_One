import axios from "axios";

const API_URL = "http://192.168.100.11:3000"; // Asegúrate de usar la IP correcta de tu servidor

export const getSalesData = async () => {
  try {
    const response = await axios.get(`${API_URL}/salesData`);
    return response.data; // Los datos devueltos deberían ser la lista de departamentos con sus totales
  } catch (error) {
    console.error("Error al obtener los datos de ventas:", error);
    throw error;
  }
};
