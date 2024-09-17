import 'package:flutter/material.dart';
import 'pages/login_page.dart';

/// Punto de entrada de la aplicación
void main() {
  runApp(const MyApp());
}

/// Clase que representa la aplicación Flutter
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /// Ocultar el banner de depuración
      debugShowCheckedModeBanner: false,
      /// Establecer la pantalla de inicio de la aplicación
      home: LoginPage(),
    );
  }
}