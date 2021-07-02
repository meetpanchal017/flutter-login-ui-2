import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_ui_2/Animation/fadeAnimation.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.orange[900],
          Colors.orange[700],
          Colors.orange[400]
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeAnimation(
                      1,
                      Text(
                        "Login",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      )),
                  FadeAnimation(
                      1.8,
                      Text(
                        "Welcome Back",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(60))),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.all(30),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 60,
                            ),
                            FadeAnimation(
                                1.4,
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color.fromRGBO(
                                                255, 95, 27, 0.3),
                                            blurRadius: 20,
                                            offset: Offset(0, 10))
                                      ]),
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    color: Colors.grey[200]))),
                                        child: TextField(
                                          decoration: InputDecoration(
                                              hintText: "Email or Phone number",
                                              hintStyle: TextStyle(
                                                  color: Colors.grey[500]),
                                              border: InputBorder.none),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    color: Colors.grey[200]))),
                                        child: TextField(
                                          decoration: InputDecoration(
                                              hintText: "Password",
                                              hintStyle: TextStyle(
                                                  color: Colors.grey[500]),
                                              border: InputBorder.none),
                                        ),
                                      )
                                    ],
                                  ),
                                )),
                            SizedBox(
                              height: 40,
                            ),
                            FadeAnimation(
                                1.5,
                                Text(
                                  "Forgot Password?",
                                  style: TextStyle(color: Colors.grey),
                                )),
                            SizedBox(
                              height: 40,
                            ),
                            FadeAnimation(
                                1.6,
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 50),
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.orange[900],
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Center(
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )),
                            SizedBox(
                              height: 50,
                            ),
                            FadeAnimation(
                                1.7,
                                Text("Continue with social media",
                                    style: TextStyle(
                                        color: Colors.grey[400],
                                        fontWeight: FontWeight.bold))),
                            SizedBox(
                              height: 30,
                            ),
                            FadeAnimation(
                                1.8,
                                Row(
                                  children: [
                                    Expanded(
                                        child: FadeAnimation(
                                            1.8,
                                            Container(
                                              height: 50,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                  color: Colors.blue),
                                              child: Center(
                                                  child: Text("Facebook",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight: FontWeight
                                                              .bold))),
                                            ))),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Expanded(
                                        child: FadeAnimation(
                                            1.8,
                                            Container(
                                              height: 50,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                  color: Colors.black),
                                              child: Center(
                                                  child: Text("Github",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight: FontWeight
                                                              .bold))),
                                            )))
                                  ],
                                ))
                          ],
                        ),
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
