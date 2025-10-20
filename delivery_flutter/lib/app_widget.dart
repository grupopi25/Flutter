import 'package:delivery_flutter/Home/DetalesProdutos/details_products.dart';
import 'package:delivery_flutter/Home/my_navigator_bar.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DetailsProducts(),
    );
  }
}