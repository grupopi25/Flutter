import 'package:delivery_flutter/widget/custom_colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
const HomePage({super.key});

@override
State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
final List<String> produtos = List.generate(
6,
(index) => 'Produto ${index + 1}',
);
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
backgroundColor: CustomColors.primaryColor,
title: Text(
  'Bom dia,Sara!',
  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
),
actions: [
  Padding(
    padding: const EdgeInsets.only(right: 8, top: 2),
    child: Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(shape: BoxShape.circle),
      child: Image.asset('assets/images/logo.png'),
    ),
  ),
],
),
body: SingleChildScrollView(
child: Container(
  width: MediaQuery.of(context).size.width,
  height: MediaQuery.of(context).size.height,
  decoration: BoxDecoration(color: CustomColors.primaryColor),
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Container(
          decoration: BoxDecoration(
            color: CustomColors.searchColor,
            borderRadius: BorderRadius.circular(12),
          ),
          height: 40,
          child: TextFormField(
            decoration: InputDecoration(
              hintStyle: TextStyle(color: CustomColors.nameSearchColor),
              hintText: 'Pesquise seu Produto',
              prefixIcon: Icon(Icons.search, size: 20),
              iconColor: CustomColors.secondColor,
              border: InputBorder.none,
            ),
          ),
        ),
        SizedBox(height: 20),
        SizedBox(child: Image.asset('assets/images/Card1.png')),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Produtos',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: CustomColors.secondColor,
              ),
            ),
            Text(
              'Todos ',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: CustomColors.thirdColor,
              ),
            ),
          ],
        ),
        SizedBox(height: 20,),
       Expanded(
  child: GridView.builder(
   
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,     
      crossAxisSpacing: 8,     
      mainAxisSpacing: 8,      
      childAspectRatio: 1,  
      mainAxisExtent: 210 
    ),
    itemCount: produtos.length,  
    itemBuilder: (context, index) {
      return Container(
        width: 150,
        decoration: BoxDecoration(
          color: Colors.white, 
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 1,
            color: CustomColors.nameSearchColor,
          ),
        ),
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),
                    Center(
                      child: Container(
                      
                        child: Image.asset(
                          'assets/images/Card1.png',
                        ),
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      'Produto',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '1kg',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.nameSearchColor,
                      ),
                    ),
                    SizedBox(height: 20,),
                
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0,left: 8),
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'R\$ 20',
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Container(
                            
                            decoration: BoxDecoration(color: CustomColors.thirdColor,borderRadius: BorderRadius.circular(20)) ,child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.add,color: CustomColors.primaryColor,),
                          )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
);
    },
  ),
),

      ],
    ),
  ),
),
),
);
}
}
