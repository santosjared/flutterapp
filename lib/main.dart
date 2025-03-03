// lib/main.dart

import 'package:app_flutter/constants/mode.dart';
import 'package:app_flutter/screens/complaints_screen.dart';
import 'package:app_flutter/screens/dashboard_screen.dart';
import 'package:app_flutter/screens/register_user_screen.dart';
import 'package:app_flutter/theme/custom_theme.dart';
import 'package:flutter/material.dart';
import 'screens/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Radio patrulla 110',
      theme: CustomTheme().settingsTheme(Mode.lightMode),
      darkTheme: CustomTheme().settingsTheme(Mode.darkMode),
      themeMode: ThemeMode.system,
      initialRoute: '/login',
      routes: {
        '/':(context)=>DashboardScreen(),
        '/login':(context)=>LoginScreen(),
        '/register':(context)=>RegisterUserScreen(),
        '/complaints':(context)=>ComplaintsScreen()
      },
    );
  }
}
