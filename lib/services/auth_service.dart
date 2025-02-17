// lib/services/auth_service.dart

import '../models/user.dart';

class AuthService {
  // Simula un proceso de autenticación con un usuario fijo
  Future<bool> login(User user) async {
    await Future.delayed(Duration(seconds: 2)); // Simula un tiempo de espera
    if (user.email == 'admin@gmail.com' && user.password == 'admin') {
      return true;
    }
    return false; 
  }
}
