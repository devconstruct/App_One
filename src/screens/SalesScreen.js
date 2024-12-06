import React, { useState } from 'react';
import { View, Text, TextInput, Button, StyleSheet, ScrollView } from 'react-native';

export default function SalesScreen({ navigation }) {
  const [establishment, setEstablishment] = useState('');
  const [ticket, setTicket] = useState('');
  const [date, setDate] = useState('');
  const [total, setTotal] = useState('');

  const handleSave = () => {
    // Aquí se podría añadir lógica para guardar los datos
    alert('Compra guardada exitosamente');
    navigation.goBack(); // Regresa a la pantalla anterior
  };

  return (
    <ScrollView contentContainerStyle={styles.container}>
      <Text style={styles.title}>Realizar Cargo (Compra)</Text>
      <TextInput
        placeholder="Establecimiento"
        value={establishment}
        onChangeText={setEstablishment}
        style={styles.input}
      />
      <Button
        title="Subir Ticket (Archivo)"
        color="#0069A7"
        onPress={() => alert('Funcionalidad de carga no implementada')}
      />
      <TextInput
        placeholder="Fecha de Compra"
        value={date}
        onChangeText={setDate}
        style={styles.input}
      />
      <TextInput
        placeholder="Total de la Compra"
        value={total}
        onChangeText={setTotal}
        style={styles.input}
        keyboardType="numeric"
      />
      <Button title="Guardar" color="#0069A7" onPress={handleSave} />
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 20,
    backgroundColor: '#FFFFFF',
    justifyContent: 'center', // Centra los elementos verticalmente
    alignItems: 'center', // Centra los elementos horizontalmente
  },
  title: {
    fontSize: 20,
    fontWeight: 'bold',
    color: '#0069A7',
    marginBottom: 20,
  },
  input: {
    width: '100%',
    height: 40,
    borderColor: '#0069A7',
    borderWidth: 1,
    borderRadius: 5,
    marginBottom: 10,
    paddingHorizontal: 10,
  },
});
