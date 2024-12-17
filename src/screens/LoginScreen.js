import React, { useState } from 'react';
import { View, Text, TextInput, Button, StyleSheet, Image } from 'react-native';
import { loginUser } from '../services/DatabaseService'; // Asegúrate de que la ruta esté correcta

export default function LoginScreen({ navigation }) {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');

  const handleLogin = async () => {
    try {
      // Llamamos a la función loginUser que hace la solicitud al servidor
      const response = await loginUser(email, password);

      if (response.error) {
        alert(response.error); // Muestra el error si hay algún problema con el login
      } else {
        // Si el login es exitoso, navegamos a la pantalla correspondiente con el rol
        const { rol } = response;
        navigation.navigate('Main', { screen: 'Dashboard', params: { rol } });
      }
    } catch (error) {
      alert("Error al iniciar sesión, intenta nuevamente.");
      console.error("Error al iniciar sesión:", error);
    }
  };

  return (
    <View style={styles.container}>
      <Image source={require('../../assets/onelogo.jpg')} style={styles.logo} />
      <Text style={styles.title}>Inicio de Sesión</Text>
      <TextInput
        placeholder="Usuario"
        style={styles.input}
        value={email}
        onChangeText={setEmail}
      />
      <TextInput
        placeholder="Contraseña"
        style={styles.input}
        value={password}
        onChangeText={setPassword}
        secureTextEntry
      />
      <Button title="Iniciar sesión" color="#FFFFFF" onPress={handleLogin} />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    padding: 20,
    backgroundColor: 'rgb(0, 105, 167)',
  },
  logo: {
    width: 100, // Ajusta el tamaño según sea necesario
    height: 100,
    marginBottom: 20,
  },
  title: {
    fontSize: 24,
    fontWeight: 'bold',
    color: '#FFFFFF',
    marginBottom: 20,
  },
  input: {
    width: '100%',
    height: 40,
    borderColor: '#FFFFFF',
    borderWidth: 1,
    borderRadius: 5,
    marginBottom: 10,
    paddingHorizontal: 10,
    color: '#FFFFFF',
  },
});
