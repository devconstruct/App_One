import React from "react";
import { NavigationContainer } from "@react-navigation/native";
import { createDrawerNavigator } from "@react-navigation/drawer";
import { createStackNavigator } from "@react-navigation/stack";

// Importar las pantallas
import LoginScreen from "../screens/LoginScreen";
import Dashboard from "../screens/Dashboard";
import SalesScreen from "../screens/SalesScreen";
import SalesHistoryScreen from "../screens/SalesHistoryScreen";
import HistoryScreen from "../screens/HistoryScreen";

// Creación de los navegadores
const Stack = createStackNavigator();
const Drawer = createDrawerNavigator();

// Configuración del Stack Navigator
function MainStack() {
  return (
    <Stack.Navigator
      initialRouteName="Dashboard"
      screenOptions={{ headerShown: false }}
    >
      <Stack.Screen name="Dashboard" component={Dashboard} />
      <Stack.Screen name="SalesScreen" component={SalesScreen} />
      <Stack.Screen name="SalesHistoryScreen" component={SalesHistoryScreen} />
      <Stack.Screen name="HistoryScreen" component={HistoryScreen} />
    </Stack.Navigator>
  );
}

// Configuración del Drawer Navigator
export default function AppNavigator() {
  return (
    <NavigationContainer>
      <Drawer.Navigator
        initialRouteName="Login"
        screenOptions={{ headerShown: false }}
      >
        <Drawer.Screen name="Login" component={LoginScreen} />
        <Drawer.Screen name="Main" component={MainStack} />
      </Drawer.Navigator>
    </NavigationContainer>
  );
}
