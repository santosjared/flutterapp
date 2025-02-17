import 'package:flutter/material.dart';
// Asegúrate de importar el modelo

class DashboardScreen extends StatelessWidget {

  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Denuncias'), 
      backgroundColor: Color.fromARGB(255, 0, 142, 150),
      foregroundColor: Colors.white,
      ),
      body: const Center(child: Text('Bienvenido al Dashboard')),
      drawer: Drawer(
        shape: const  RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
          ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(color: Color.fromARGB(255, 0, 142, 130)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: Text('AA'),
                    // backgroundImage: user.avatarUrl != null && user.avatarUrl!.isNotEmpty
                    //     ? NetworkImage(user.avatarUrl!)
                    //     : const AssetImage('assets/images/default_avatar.png') as ImageProvider,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'admin admin',
                    style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'admin@gmail.com',
                    style: const TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Cerrar sesión'),
              onTap: () {
                Navigator.pop(context); // Cierra el Drawer
                Navigator.pushReplacementNamed(context, '/login'); // Redirige a Login
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(onPressed:(){},
      backgroundColor: Colors.red,
      foregroundColor: Colors.white,
      label: const Text('Emergencia',
      style: TextStyle(
        fontSize: 20,
        color: Colors.white
      ),
      ),
      icon: const Icon(Icons.emergency_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
