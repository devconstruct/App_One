import React from 'react';
import { View, Text, StyleSheet, Dimensions, TouchableOpacity } from 'react-native';
import { PieChart } from 'react-native-chart-kit';
import { Ionicons } from '@expo/vector-icons'; // Asegúrate de tener react-native-vector-icons instalado

export default function Dashboard({ navigation, route }) {
  const screenWidth = Dimensions.get('window').width;
  const role = route.params?.role || 'Sin Rol';

  const pieData = [
    { name: 'Gerencia', amount: 300000, color: '#0069A7', legendFontColor: '#7F7F7F', legendFontSize: 15 },
    { name: 'Contraloría', amount: 200000, color: '#50A2D0', legendFontColor: '#7F7F7F', legendFontSize: 15 },
    { name: 'Compras', amount: 150000, color: '#78C5F7', legendFontColor: '#7F7F7F', legendFontSize: 15 },
    { name: 'Ama de Llaves', amount: 100000, color: '#A0E3FF', legendFontColor: '#7F7F7F', legendFontSize: 15 },
    { name: 'Sistemas', amount: 150000, color: '#D0F7FF', legendFontColor: '#7F7F7F', legendFontSize: 15 },
    { name: 'Mantenimiento', amount: 100000, color: '#E9FAFF', legendFontColor: '#7F7F7F', legendFontSize: 15 },
  ];

  return (
    <View style={styles.container}>
      {/* Botón de menú */}
      <TouchableOpacity style={styles.menuButton} onPress={() => navigation.openDrawer()}>
        <Ionicons name="menu" size={30} color="#0069A7" />
      </TouchableOpacity>

      <Text style={styles.title}>Control de Gastos</Text>
      <Text style={styles.subtitle}>Rol: {role}</Text>

      {/* Gráfico de pastel */}
      <PieChart
        data={pieData}
        width={screenWidth - 40} // Añadimos márgenes para que no toque los bordes
        height={220}
        chartConfig={{
          color: () => '#0069A7',
          labelColor: () => '#7F7F7F',
        }}
        accessor="amount"
        backgroundColor="transparent"
        paddingLeft="15"
      />

      {/* Botón adicional según rol */}
      {role === 'Gerente' && (
        <TouchableOpacity
          style={styles.button}
          onPress={() => navigation.navigate('HistoryScreen', { role })}
        >
          <Text style={styles.buttonText}>Ver Historial</Text>
        </TouchableOpacity>
      )}
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 20,
    backgroundColor: '#FFFFFF',
    alignItems: 'center', // Centrar elementos horizontalmente
  },
  menuButton: {
    position: 'absolute',
    top: 50, // Ajusta para iPhone con notch
    left: 20,
    zIndex: 1,
  },
  title: {
    fontSize: 24,
    fontWeight: 'bold',
    color: '#0069A7',
    marginBottom: 10,
    marginTop: 100, // Añade espacio para evitar superposición con el menú
  },
  subtitle: {
    fontSize: 16,
    color: '#7F7F7F',
    marginBottom: 20,
  },
  button: {
    marginTop: 30,
    paddingVertical: 10,
    paddingHorizontal: 20,
    backgroundColor: '#0069A7',
    borderRadius: 5,
  },
  buttonText: {
    color: '#FFFFFF',
    fontSize: 16,
    fontWeight: 'bold',
  },
});
