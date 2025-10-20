import 'package:delivery_flutter/widget/custom_colors.dart';
import 'package:delivery_flutter/widget/expand_text.dart';
import 'package:flutter/material.dart';

class DetailsProducts extends StatefulWidget {
  const DetailsProducts({super.key});

  @override
  State<DetailsProducts> createState() => _DetailsProductsState();
}

class _DetailsProductsState extends State<DetailsProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(color: CustomColors.primaryColor),
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 150,
                child: Image.asset('assets/images/products/maca.png'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Maça Deliciosa',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 20),
                            ),
                            Text(
                              '1Kg',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: CustomColors.nameSearchColor),
                            ),
                          ],
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite_border))
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.remove, color: Colors.grey)),
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: const Color(0x816E6E6E),
                                  ),
                                  borderRadius: BorderRadius.circular(12)),
                              child: const Center(child: Text('1')),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.add,
                                    color: CustomColors.thirdColor)),
                          ],
                        ),
                        Text('R\$ 20',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700))
                      ],
                    ),
                    SizedBox(height: 25),
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width,
                      color: const Color.fromARGB(54, 158, 158, 158),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Detalhes do Produto',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: CustomColors.secondColor),
                    ),
                    SizedBox(height: 10),
                    const ExpandableText(
                      text:
                          'Apples are nutritious. Apples may be good for weight loss. Apples may be good for your heart. As part of a healthful and varied diet.',
                    ),

                    
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

