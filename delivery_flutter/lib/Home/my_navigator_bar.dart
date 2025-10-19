import 'package:delivery_flutter/Home/account_page.dart';
import 'package:delivery_flutter/Home/favorites_page.dart';
import 'package:delivery_flutter/Home/home_page.dart';
import 'package:delivery_flutter/Home/search_page.dart';
import 'package:delivery_flutter/widget/custom_colors.dart';
import 'package:flutter/material.dart';

class MyNavigatorBar extends StatefulWidget {
  const MyNavigatorBar({super.key});

  @override
  State<MyNavigatorBar> createState() => _MyNavigatorBarState();
}

class _MyNavigatorBarState extends State<MyNavigatorBar> {
int paginaSelecionada = 0;
List telas = [
  HomePage(),
  SearchPage(),
  FavoritesPage(),
  AccountPage()
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: telas[paginaSelecionada],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: CustomColors.thirdColor,
        unselectedItemColor: CustomColors.secondColor,
        elevation: 1,
        iconSize: 22,
        currentIndex: paginaSelecionada,onTap: (int index) {
          setState(() {
            paginaSelecionada =index;
          });
          
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.store_outlined),label: 'shop'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined),label: 'Favoritos'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline),label: 'Conta')
        ],
      ),
    );
  }
}