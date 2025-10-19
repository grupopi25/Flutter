import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 80),
          width: double.infinity,
          height: double.infinity,
          color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                spacing: 7,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    spacing: 8,
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 40, 21, 92),
                          borderRadius: BorderRadius.circular(35),
                        ),
                      ),

                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 40, 21, 92),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(60),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Container(
                        width: 70,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(100),
                            bottomLeft: Radius.circular(100),
                          ),
                          color: const Color.fromARGB(255, 40, 21, 92),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(padding: EdgeInsets.only(left: 4, right: 4, top: 40)),
                  Text(
                    'Get Your Money',
                    style: TextStyle(color: Colors.white, fontSize: 35),
                  ),
                  Text(
                    ' Under Control',
                    style: TextStyle(color: Colors.white, fontSize: 33),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Manage your expenses',
                    style: TextStyle(color: Colors.white12, fontSize: 20),
                  ),
                  Text(
                    'Seamlessly',
                    style: TextStyle(color: Colors.white12, fontSize: 20),
                  ),
                  Padding(padding: EdgeInsetsGeometry.only(bottom: 180)),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    spacing: 15,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 350,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 40, 21, 92),
                            ),
                            margin: EdgeInsets.only(
                              left: 20,
                              right: 20,
                              top: 180,
                            ),
                            child: Center(
                              child: Text(
                                'Sign Up with Email ID',
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 350,
                            height: 50,

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),

                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,

                                spacing: 20,
                                children: [
                                  Image.network(
                                    'https://cdn.imgbin.com/23/7/2/imgbin-google-logo-google-search-icon-google-google-logo-hEJMjnfCV4MA1gDtjaWTv5kc1.jpg',
                                    width: 20,
                                    height: 20,
                                  ),
                                  Text(
                                    'Sign Up with Email ID',

                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsGeometry.only(right: 20),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Padding(padding: EdgeInsetsGeometry.only(top: 60)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 8,

                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(color: Colors.white),
                  ),

                  Text(
                    'Sign in',
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
