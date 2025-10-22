import 'package:flutter/material.dart';
import 'package:todo_list_flutter/home_page.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
bool temaAtualeBlack = true;
void _temaBotao(){
  setState(() {
    temaAtualeBlack = !temaAtualeBlack;
  });
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData.light() ,
      darkTheme: ThemeData.dark(),
      themeMode: temaAtualeBlack ? ThemeMode.dark :  ThemeMode.light,
       home: HomePage(botaoPrecionado: temaAtualeBlack,temaEscolhido: _temaBotao,),
    );
  }
}