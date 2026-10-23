import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 44, 174, 239),
        body: Center(
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            clipBehavior: Clip.antiAlias,
            child: SizedBox(
              width: 300,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: double.infinity,
                    color: const Color.fromARGB(255, 0, 120, 14),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: const Text(
                      'NAME CARD',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  CircleAvatar(
                    radius: 55,
                    backgroundColor: const Color.fromARGB(255, 0, 255, 51),
                    child: const CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage('assets/images/putra.jpg'),
                    ),
                  ),
                  const SizedBox(height: 12),

                  const Text(
                    'Putra Inang Setiawan',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Director of Photography',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      letterSpacing: 1,
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    child: Divider(thickness: 1),
                  ),

                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.badge, size: 20, color: Colors.blue),
                            SizedBox(width: 12),
                            Text('ID : IF-20260901'),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(Icons.email, size: 20, color: Colors.blue),
                            SizedBox(width: 12),
                            Text('putrainang@gmail.com'),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(Icons.phone, size: 20, color: Colors.blue),
                            SizedBox(width: 12),
                            Text('+62 828-2744-6890'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),

                  // 6. Footer Kartu
                  Container(
                    height: 12,
                    width: double.infinity,
                    color: Color.fromARGB(255, 0, 98, 20),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
