import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

import '../../shared/components/components.dart';

class loginScreen extends StatefulWidget {
  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  var email_controller = TextEditingController();

  var pass_controller = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isVisible = true;

  val() {
    return (String value) {
      if (value!.isEmpty) {
        return 'email mustn\'t be empty';
      }
      return null;
    };
  }

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
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(child: Image.asset('assets/images/Group 4.png')),
            Expanded(
              flex: 2,
              child: SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sign In",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Color(0xFF263F77),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      // email input
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Email Address",
                              textAlign: TextAlign.start,
                              style: TextStyle(color: Color(0xFF263F77)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom:
                                      BorderSide(color: Color(0xFF6ECEC4)))),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "email address mustn't be empty";
                                }
                                return null;
                              },
                              controller: email_controller,
                              decoration: InputDecoration(
                                hintText: "Enter E-mail",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      //password input
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Password",
                              textAlign: TextAlign.start,
                              style: TextStyle(color: Color(0xFF263F77)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom:
                                      BorderSide(color: Color(0xFF6ECEC4)))),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: TextFormField(
                              obscureText: isVisible,
                              validator: (value) {
                                if (value!.isEmpty)
                                  return 'Password mustn\'t be empty';
                                return null;
                              },
                              controller: pass_controller,
                              cursorColor: Colors.blueGrey[900],
                              decoration: InputDecoration(
                                suffixIcon:
                                    // Icon(Icons.remove_red_eye_outlined),
                                    IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isVisible = !isVisible;
                                      print(isVisible);
                                    });
                                  },
                                  icon: isVisible
                                      ? Icon(Icons.visibility_off)
                                      : Icon(Icons.visibility),
                                ),
                                hintText: "Enter password",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: defaultButton(
                            width: double.infinity,
                            backgroundColor: Colors.transparent,
                            function: () {
                              if (formKey.currentState!.validate()) {
                                print('ok');
                              }
                            },
                            text: "Sign In"),
                      ),
                      SizedBox(height: 10.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account? ",style: TextStyle(fontSize: 16),),
                          Text("Sign up now",style: TextStyle(color: Color(0xFF263F77),fontWeight: FontWeight.bold,fontSize: 16))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
