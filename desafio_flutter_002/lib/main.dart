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
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xffed6e65),
                Color(0xffeb5e6d),
                Color(0xffeb5e6d),
                Color.fromRGBO(248, 60, 138, 1),
                Color.fromRGBO(248, 60, 138, 1),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
            ),
          ),
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/tinder.png',
                      scale: 95,
                      color: Colors.white,
                    ),
                    Text(
                      'tinder',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 45,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Expanded(
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: 150,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      'By tapping Create Account or Sign In, you agree to our ',
                                ),
                                TextSpan(
                                  text: 'Terms.',
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Colors.white,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Learn how process your data in your ',
                                ),
                                TextSpan(
                                  text: 'Privacy policy ',
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Colors.white,
                                  ),
                                ),
                                TextSpan(text: 'end '),
                                TextSpan(
                                  text: 'Cookies Policy',
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  spacing: 8,
                  children: [
                    Padding(
                      padding: EdgeInsetsGeometry.symmetric(vertical: 20),
                    ),
                    Row(
                      spacing: 50,

                      mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: [
                        Container(
                          height: 35,
                          width: 250,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: Center(
                            child: Row(
                              spacing: 50,

                              children: [
                                Icon(
                                  Icons.apple,
                                  color: Colors.white,
                                  textDirection: TextDirection.ltr,
                                ),
                                Text(
                                  'SIGN IN APPLE',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 1, left: 1),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 35,
                          width: 250,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              spacing: 30,
                              children: [
                                Icon(Icons.facebook, color: Colors.white),
                                Text(
                                  'SIGN IN WITH FACEBOOK',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 1, left: 1),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Container(
                          height: 35,
                          width: 250,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              spacing: 30,

                              children: [
                                Icon(Icons.sms, color: Colors.white, size: 19),
                                Text(
                                  'SIGN IN WITH PHONE NUMBER',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(padding: EdgeInsetsGeometry.only(bottom: 60)),
                        Text(
                          'Trouble Signing In?',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
