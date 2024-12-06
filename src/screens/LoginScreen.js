import React from 'react';
import { View, Text, TextInput, Button, StyleSheet } from 'react-native';

export default function LoginScreen({ navigation }) {
  const handleLogin = (role) => {
    navigation.navigate('Main', { screen: 'Dashboard', params: { role } });
  };

  return (
    <View style={styles.container}>
      <Text style={styles.title}>Inicio de Sesión</Text>
      <TextInput placeholder="Usuario" style={styles.input} />
      <TextInput placeholder="Contraseña" style={styles.input} secureTextEntry />
      <Button title="Iniciar como Gerente" color="#0069A7" onPress={() => handleLogin('Gerente')} />
      <Button title="Iniciar como Sistemas" color="#0069A7" onPress={() => handleLogin('Sistemas')} />
      <Button title="Iniciar como Compras" color="#0069A7" onPress={() => handleLogin('Compras')} />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    padding: 20,
    backgroundColor: '#FFFFFF',
  },
  title: {
    fontSize: 24,
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
