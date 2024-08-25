import 'package:flutter/material.dart';
import 'package:whatsapp/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      home: const Homepage(),
    );
  }
}
