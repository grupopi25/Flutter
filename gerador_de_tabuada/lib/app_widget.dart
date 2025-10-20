import 'package:flutter/material.dart';
import 'package:gerador_de_tabuada/home.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Home(),
    );
  }
}
