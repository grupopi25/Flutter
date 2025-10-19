import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bem Vindo,Eduardo!',style: TextStyle(fontSize: 15),),
      ),
      body: Container(
        
        child: Column(
          
        ),
      ),
    );
  }
}