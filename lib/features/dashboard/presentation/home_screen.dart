import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        centerTitle: true,
      ),
      backgroundColor: Colors.blue,
      body: Center(
        child: Text(
          'Logado com sucesso, só falta o resto da página.',
          style: TextStyle(
            fontSize: 24, 
            fontWeight: FontWeight.bold),
        ),
      ),  
    ); 
  }
}