import 'package:app_flutter/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';
import '../models/user.dart';
import '../services/auth_service.dart';
import '../widgets/custom_input.dart';
import '../widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final AuthService authService = AuthService();

  bool isLoading = false;
  bool _obscureText = true;

 void _login() async {
  setState(() {
    isLoading = true;
  });

  User user = User(
    email: emailController.text,
    name: '',
    password: passwordController.text,
  );

  bool success = await authService.login(user);

  setState(() {
    isLoading = false;
  });

  if (success) {
    // Navegar al Dashboard y reemplazar Login
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const DashboardScreen()),
    );
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Credenciales incorrectas')),
    );
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Imagen de fondo
          Positioned.fill(
            child: Image.asset(
              'assets/images/backrundLogin.png',
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Center(
                  child: Text(
                    '',
                    style:
                        TextStyle(color: const Color.fromARGB(255, 14, 14, 14)),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 60),
                Text(
                  'BIENVENIDO A FELCC POTOSÍ - BOLIVIA',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 0, 142, 73),
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  'Denuncia cualquier hecho delictivo de forma rápida y segura. '
                  'Nuestra plataforma está diseñada para brindarte un acceso directo a las autoridades.',
                  style: TextStyle(
                    fontSize: 15,
                    color: const Color.fromARGB(248, 1, 92, 12),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomInputField(
                          labelText: 'Correo electrónico',
                          controller: emailController,
                          prefixIcon: Icon(Icons.person, color: Colors.green),
                        ),
                        CustomInputField(
                          labelText: 'Contraseña',
                          controller: passwordController,
                          prefixIcon: Icon(Icons.lock, color: Colors.green),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscureText
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.green,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                          ),
                          obscureText: _obscureText,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: const Text('ingresar invitado'),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text('¿Olvidó su contraseña?'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        isLoading
                            ? CircularProgressIndicator(
                              color: Colors.green,
                            )
                            : LoginButton(
                                text: 'Iniciar sesión',
                                onPressed: _login,
                              ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '¿No tiene una cuenta?',
                              style: TextStyle(
                                fontSize: 15,
                                color: const Color.fromARGB(248, 1, 92, 12),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text('Registrarse'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
