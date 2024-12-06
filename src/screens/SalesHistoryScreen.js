import React from 'react';
import { View, Text, StyleSheet, FlatList } from 'react-native';

export default function SalesHistoryScreen({ route }) {
  const role = route.params?.role || 'Sin Rol';

  // Datos ficticios de ventas históricas
  const sales = [
    { id: '1', date: '2024-11-01', product: 'Laptop Dell', amount: 1200.00 },
    { id: '2', date: '2024-11-03', product: 'Auriculares Bose', amount: 150.50 },
    { id: '3', date: '2024-11-07', product: 'Smartphone Samsung', amount: 800.00 },
    { id: '4', date: '2024-11-10', product: 'Teclado Mecánico', amount: 100.00 },
    { id: '5', date: '2024-11-15', product: 'Monitor LG', amount: 350.00 },
    { id: '6', date: '2024-11-20', product: 'Mouse Logitech', amount: 50.00 },
    { id: '7', date: '2024-11-25', product: 'Cámara Fotográfica', amount: 600.00 },
  ];

  return (
    <View style={styles.container}>
      <Text style={styles.title}>Historial de Ventas</Text>
      <Text style={styles.subtitle}>Rol: {role}</Text>
      <FlatList
        data={sales}
        keyExtractor={(item) => item.id}
        renderItem={({ item }) => (
          <View style={styles.item}>
            <Text style={styles.itemText}>Fecha: {item.date}</Text>
            <Text style={styles.itemText}>Producto: {item.product}</Text>
            <Text style={styles.itemText}>Monto: ${item.amount.toFixed(2)}</Text>
          </View>
        )}
      />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 20,
    backgroundColor: '#FFFFFF',
  },
  title: {
    fontSize: 20,
    fontWeight: 'bold',
    color: '#0069A7',
    marginBottom: 10,
  },
  subtitle: {
    fontSize: 16,
    marginBottom: 20,
    color: '#000',
  },
  item: {
    backgroundColor: '#F5F5F5',
    padding: 15,
    marginVertical: 8,
    borderRadius: 8,
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.2,
    shadowRadius: 4,
    elevation: 3,
  },
  itemText: {
    fontSize: 14,
    color: '#333',
  },
});
