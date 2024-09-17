import 'package:flutter/material.dart';
import 'package:barriosoft/components/my_button.dart';
import 'package:barriosoft/components/my_textfield.dart';
import 'package:barriosoft/components/squire_tile.dart';

/// La clase LoginPage es un widget de pantalla completa que representa la pantalla de inicio de sesión de la aplicación.
class LoginPage extends StatelessWidget {
  /// Constructor de LoginPage
  LoginPage({super.key});

  /// Controlador de texto para el campo de texto de nombre de usuario
  final usernameController = TextEditingController();

  /// Controlador de texto para el campo de texto de contraseña
  final passwordController = TextEditingController();

  /// Método para iniciar sesión en la aplicación
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Configuración del fondo de la pantalla
      backgroundColor: const Color.fromARGB(255, 19, 87, 42),
      body: SafeArea(
        child: Center(
          child: Column(
            /// Configuración de la disposición de los widgets en la pantalla
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// Espacio vertical de 50
              
              const SizedBox(height: 50),

              /// Imagen del logo de la aplicación
              Image.asset(
                'lib/images/logo.jpg',
                width: 100,
                height: 100,
              ),

              /// Espacio vertical de 50
              const SizedBox(height: 50),

              /// Texto de bienvenida
              Text(
                'Bienvenido de vuelta!',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),

              /// Espacio vertical de 25
              const SizedBox(height: 25),

              /// Campo de texto de nombre de usuario
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              /// Espacio vertical de 10
              const SizedBox(height: 10),

              /// Campo de texto de contraseña
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              /// Espacio vertical de 10
              const SizedBox(height: 10),

              /// Texto para recuperar la contraseña
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              /// Espacio vertical de 25
              const SizedBox(height: 25),

              /// Botón de inicio de sesión
              MyButton(
                onTap: signUserIn,
              ),

              /// Espacio vertical de 50
              const SizedBox(height: 50),

              /// Línea divisoria con texto
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              /// Espacio vertical de 50
              const SizedBox(height: 50),

              /// Botones de inicio de sesión con Google y Apple
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// Botón de inicio de sesión con Google
                  SquareTile(imagePath: 'lib/images/google.png'),

                  SizedBox(width: 25),

                  /// Botón de inicio de sesión con Apple
                  SquareTile(imagePath: 'lib/images/apple.png')
                ],
              ),

              /// Espacio vertical de 50
              const SizedBox(height: 50),

              /// Texto para registrarse en la aplicación
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'No tiene una cuenta?',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    'Registrate ahora',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}