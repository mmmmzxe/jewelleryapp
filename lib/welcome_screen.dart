import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:jewelry_app/loginpage.dart';

import 'package:jewelry_app/signup.dart';

import 'screens/home/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.height,
                  height: MediaQuery.of(context).size.height / 1.989,
                  decoration: BoxDecoration(color: Colors.white),
                ),
                Container(
                  width: MediaQuery.of(context).size.height,
                  height: MediaQuery.of(context).size.height / 1.989,
                  decoration: BoxDecoration(
                      color: Colors.pink[800],
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(70))),
                  child: Center(
                    child: Image.asset(
                      'assets/a6.png',
                      scale: 0.5,
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                  color: Colors.pink[800],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                padding: EdgeInsets.only(top: 40, bottom: 30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(70))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Jewelry Store",
                        style: GoogleFonts.inconsolata(
                          textStyle: TextStyle(
                              color: Colors.pink[800],
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                          letterSpacing: 1,
                          wordSpacing: 2,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Text("Welcome to you ..",
                        style: GoogleFonts.inconsolata(
                          textStyle: const TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(children: <Widget>[
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => LoginPage())));
                        },
                        minWidth: MediaQuery.of(context).size.width / 2,
                        height: 40,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Colors.pink,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.pink[800]),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => SignupPage())));
                        },
                        minWidth: MediaQuery.of(context).size.width / 2,
                        height: 40,
                        color: Colors.pink[800],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Text(
                          "Sign up",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => HomeScreen())));
                          },
                          icon: Icon(
                            Icons.arrow_circle_right_rounded,
                            color: Colors.pink[800],
                            size: 50,
                          ))
                    ])
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
