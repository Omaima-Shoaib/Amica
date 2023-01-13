import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override

  Widget build(BuildContext context) {
    return ScaffoldGradientBackground(
      gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFFEBFFFD),
            Color(0xFFE8EBFF),
          ]),
      body: Column(
      
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(child: Image(image: AssetImage('assets/images/Group 5.png'))),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,

              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    "All rights reserved   - Amica Bot© 2022",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xFF707070), fontSize: 12.0),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [BottomNavigationBarItem(),],
      // ),
    );
  }
}
