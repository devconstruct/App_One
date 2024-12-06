import React, { useEffect, useState } from "react";
import { View, Text, StyleSheet, Dimensions } from "react-native";
import { PieChart } from "react-native-chart-kit"; // Asegúrate de tener react-native-chart-kit instalado
import { getSalesData } from "../services/DatabaseService"; // Asegúrate de que este servicio esté correctamente configurado

export default function Dashboard() {
  const [salesData, setSalesData] = useState([]);
  const screenWidth = Dimensions.get("window").width;

  useEffect(() => {
    const fetchSalesData = async () => {
      try {
        const data = await getSalesData();
        console.log("Datos recibidos:", data); // Verifica los datos
        setSalesData(data);
      } catch (error) {
        console.error("Error al obtener los datos de ventas:", error);
      }
    };

    fetchSalesData();
  }, []);

  // Definir la función getRandomColor dentro del componente
  const getRandomColor = () => {
    const letters = "0123456789ABCDEF";
    let color = "#";
    for (let i = 0; i < 6; i++) {
      color += letters[Math.floor(Math.random() * 16)];
    }
    return color;
  };

  // Formatear los datos para el gráfico de pastel
  const pieData = salesData.map((sale) => ({
    name: sale.departamento, // El nombre del departamento
    amount: parseFloat(sale.total), // El total de gasto para ese departamento
    color: getRandomColor(), // Color aleatorio para cada sección del gráfico
    legendFontColor: "#7F7F7F",
    legendFontSize: 15
  }));

  return (
    <View style={styles.container}>
      <Text style={styles.title}>Control de Gastos</Text>

      {/* Gráfico de pastel */}
      <PieChart
        data={pieData}
        width={screenWidth - 40} // Añadimos márgenes para que no toque los bordes
        height={220}
        chartConfig={{
          color: () => "#0069A7",
          labelColor: () => "#7F7F7F"
        }}
        accessor="amount"
        backgroundColor="transparent"
        paddingLeft="15"
      />

      {/* Mostrar los datos de ventas como texto */}
      <View>
        {salesData.map((sale, index) => (
          <Text key={index}>
            Departamento: {sale.departamento} - Total: {sale.total}
          </Text>
        ))}
      </View>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 20,
    backgroundColor: "#FFFFFF",
    alignItems: "center" // Centrar elementos horizontalmente
  },
  title: {
    fontSize: 24,
    fontWeight: "bold",
    color: "#0069A7",
    marginBottom: 20
  }
});
