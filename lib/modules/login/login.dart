import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../shared/components/components.dart';


class loginScreen extends StatefulWidget {
  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  var email_controller = TextEditingController();

  var pass_controller = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isVisible=true;

  val(){
    return (String value){
      if(value!.isEmpty){
        return 'email mustn\'t be empty';
      }
      return null;
    };}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(5),
              bottomLeft: Radius.circular(5),
            )),
        backgroundColor: Colors.blueGrey[900],
        title: Center(
          child: Text(
            'Login',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // email input
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "email address mustn't be empty";
                      }
                      return null;
                    },
                    controller: email_controller,
                    cursorColor: Colors.blueGrey[900],
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email_rounded),
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(25.0)),
                            borderSide: BorderSide(
                              color: Colors.grey,
                            )),
                        hintText: "Enter E-mail",
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(25.0)))),
                  ),





                  SizedBox(),
                  // defaultFormField(controller: email_controller,validate:val(), type: TextInputType.emailAddress, label:"email address", prefixIcon: Icons.email_outlined,),
                  // defaultFormField(
                  //     controller: email_controller,
                  //     type: TextInputType.emailAddress,
                  //     validate: () {
                  //       if (email_controller.text.isEmpty)
                  //         return 'Email address mustn\'t be empty';
                  //     },
                  //     label: 'Email address',
                  //     prefixIcon: Icons.email),
                  SizedBox(
                    height: 20.0,
                  ),
                  //password input
                  TextFormField(
                    obscureText:isVisible,
                    validator: (value) {
                      if (value!.isEmpty) return 'Password mustn\'t be empty';
                      return null;
                    },
                    controller: pass_controller,
                    cursorColor: Colors.blueGrey[900],
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock_outline_rounded),
                        suffixIcon:
                        // Icon(Icons.remove_red_eye_outlined),
                        IconButton(onPressed:(){
                          setState((){
                            isVisible=!isVisible;
                            print(isVisible);
                          });


                        } ,icon:isVisible? Icon(Icons.visibility_off):Icon(Icons.visibility),),
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(25.0)),
                            borderSide: BorderSide(
                              color: Colors.grey,
                            )),
                        hintText: "Enter password",
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(25.0)))),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultButton(
                      width: double.infinity,
                      backgroundColor: Colors.blueGrey.shade900,
                      function: () {
                        if (formKey.currentState!.validate()) {
                          print('ok');
                        }
                      },
                      text: "login"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
