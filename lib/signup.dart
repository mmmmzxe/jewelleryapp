// ignore_for_file: deprecated_member_use, prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:jewelry_app/loginpage.dart';

import 'package:jewelry_app/welcome_screen.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.height,
                    height: MediaQuery.of(context).size.height / 6,
                    decoration: BoxDecoration(color: Colors.white),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.height,
                    height: MediaQuery.of(context).size.height / 6,
                    decoration: BoxDecoration(
                        color: Colors.pink[800],
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(70))),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 120),
                          child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) =>
                                            WelcomeScreen())));
                              },
                              icon: Icon(
                                Icons.arrow_back_ios_new,
                                color: Colors.white,
                              )),
                        ),
                        Container(
                          child: Center(
                            child: Image.asset(
                              'assets/logo3.png',
                              width: 60,
                              height: 60,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.199,
                  decoration: BoxDecoration(
                    color: Colors.pink[800],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.199,
                  padding: EdgeInsets.only(top: 40, bottom: 30),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(70))),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    child: Column(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              "Sign up",
                              style: TextStyle(
                                  color: Color.fromARGB(181, 0, 0, 0),
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Create an account , It's Free",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: <Widget>[
                            Material(
                              elevation: 2,
                              shadowColor: Colors.pink[100],
                              child: TextField(
                                autofocus: false,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  filled: true,
                                  fillColor: Colors.grey[100],
                                  contentPadding:
                                      EdgeInsets.fromLTRB(15, 15, 15, 15),
                                  prefixIcon: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.person),
                                    color: Colors.pink[800],
                                  ),
                                  hintText: "UserName",
                                  hintStyle: TextStyle(
                                    color: Color.fromARGB(44, 0, 0, 0),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Material(
                              elevation: 2,
                              shadowColor: Colors.pink[100],
                              child: TextField(
                                autofocus: false,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  filled: true,
                                  fillColor: Colors.grey[100],
                                  contentPadding:
                                      EdgeInsets.fromLTRB(15, 15, 15, 15),
                                  prefixIcon: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.email_outlined),
                                    color: Colors.pink[800],
                                  ),
                                  hintText: "Email",
                                  hintStyle: TextStyle(
                                    color: Color.fromARGB(44, 0, 0, 0),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Material(
                              elevation: 2,
                              shadowColor: Colors.pink[100],
                              child: TextField(
                                obscureText: true,
                                autofocus: false,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  filled: true,
                                  fillColor: Colors.grey[100],
                                  contentPadding:
                                      EdgeInsets.fromLTRB(15, 15, 15, 15),
                                  prefixIcon: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.lock_open),
                                    color: Colors.pink[800],
                                  ),
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                    color: Color.fromARGB(44, 0, 0, 0),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Material(
                              elevation: 2,
                              shadowColor: Colors.pink[100],
                              child: TextField(
                                obscureText: true,
                                autofocus: false,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(100))),
                                  filled: true,
                                  fillColor: Colors.grey[100],
                                  contentPadding:
                                      EdgeInsets.fromLTRB(15, 15, 15, 15),
                                  prefixIcon: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.lock_open),
                                    color: Colors.pink[800],
                                  ),
                                  hintText: "Confirm Password",
                                  hintStyle: TextStyle(
                                    color: Color.fromARGB(44, 0, 0, 0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 4, left: 2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: MaterialButton(
                            onPressed: () {},
                            minWidth: double.infinity,
                            height: 55,
                            color: Colors.pink[800],
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Already have an account?",
                              style: TextStyle(color: Colors.grey),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) => LoginPage())));
                                },
                                child: Text(
                                  "Login Now",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      color: Colors.pink[800]),
                                ))
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
      ),
    );
  }
}
