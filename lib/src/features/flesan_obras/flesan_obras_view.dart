import 'package:flesan_approvals/src/features/welcome/view/welcome_page.dart';
import 'package:flutter/material.dart';

class FlesanObrasView extends StatelessWidget {
  final List<Map<String, String>> obras;

  const FlesanObrasView({super.key, required this.obras});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Título del AppBar
        title: const Text('Proyectos FLESAN'),
        backgroundColor: Colors.red,
        // Agregar la flecha de "atrás" en el AppBar
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // Navegar a la página WelcomePage cuando se presiona la flecha
            Navigator.of(context).pushReplacementNamed(WelcomePage.routeName);
          },
        ),
      ),
      body: ListView.builder(
        itemCount: obras.length,
        itemBuilder: (context, index) {
          final obra = obras[index];
          return Card(
            margin: const EdgeInsets.all(10),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Imagen de la obra
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(15),
                  ),
                  child: Image.network(
                    obra['imagenUrl']!,
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Título de la obra
                      Text(
                        obra['titulo']!,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      // Descripción de la obra
                      Text(
                        obra['descripcion']!,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
