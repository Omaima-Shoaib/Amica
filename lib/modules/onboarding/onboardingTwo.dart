import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

class onboardingTwo extends StatelessWidget {
  const onboardingTwo({Key? key}) : super(key: key);

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
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 30.0, ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        Text(
                          "Skip",
                          style: TextStyle(color: Color(0xFF263F77)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Stack(
                  clipBehavior: Clip.none,
                  children:[ Image.asset(
                    'assets/images/onboardingTwo.png',
                    fit: BoxFit.contain,)
                  ]

              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Text(
                    "How we can help .. !",
                    style: TextStyle(
                        color: Color(0xFF263F77),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "We are aiming to tackle the academic stress \n that leads to severe mental health disorders ",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
            ),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 30, left: 30),
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,

                          children: [

                            CircleAvatar(
                              radius: 4,
                              backgroundColor: Color(0xFF6ECEC4),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Container(

                                width: 40,
                                height: 7,
                                decoration: BoxDecoration(
                                    color:Color(0xFF263F77) ,
                                    borderRadius: BorderRadius.all(Radius.circular(25),
                                      // back: Color(0xFF263F77),
                                    )
                                ),
                              ),
                            ),
                            CircleAvatar(
                              radius: 4,
                              backgroundColor: Color(0xFF6ECEC4),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('Next',style: TextStyle(color: Color(0xFF263F77)),)
                          ],
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
