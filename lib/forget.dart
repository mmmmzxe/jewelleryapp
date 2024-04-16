// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:email_otp/email_otp.dart';
import 'package:flutter/material.dart';
import 'package:jewelry_app/loginpage.dart';

import 'otp.dart';

// ignore: must_be_immutable
class ForgetPassword extends StatelessWidget {
  TextEditingController email = TextEditingController();
  EmailOTP myauth = EmailOTP();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        // ignore: deprecated_member_use
        title: Container(
            margin: EdgeInsets.only(right: 55),
            child: Center(
              child: Image.asset(
                'assets/logo3.png',
                width: 65,
                height: 65,
              ),
            )),
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => LoginPage())));
          },
          icon: Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.pink[800],
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        "Forget Password",
                        style: TextStyle(
                            fontSize: 35,
                            color: Color.fromARGB(181, 0, 0, 0),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "please Enter Your Email",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: <Widget>[
                        Card(
                          child: Column(
                            children: [
                              Material(
                                elevation: 2,
                                shadowColor: Colors.pink[100],
                                child: TextFormField(
                                  controller: email,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    prefixIcon: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.email_outlined),
                                      color: Colors.pink[800],
                                    ),
                                    hintText: "Email Address",
                                    hintStyle: TextStyle(
                                      color: Color.fromARGB(44, 0, 0, 0),
                                    ),
                                    filled: true,
                                    fillColor: Colors.grey[100],
                                    contentPadding:
                                        EdgeInsets.fromLTRB(20, 20, 20, 20),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 25.0),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Container(
                      padding: EdgeInsets.only(top: 5, left: 3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: MaterialButton(
                        onPressed: () async {
                          myauth.setConfig(
                              appEmail: "contact@hdevcoder.com",
                              appName: "Email OTP",
                              userEmail: email.text,
                              otpLength: 4,
                              otpType: OTPType.digitsOnly);
                          if (await myauth.sendOTP() == true) {
                            // ignore: use_build_context_synchronously
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              backgroundColor: Color(0xFFAD1457),
                              content: Text(
                                "OTP has been sent",
                                style: TextStyle(color: Colors.white),
                              ),
                            ));
                            // ignore: use_build_context_synchronously
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OtpScreen(
                                          myauth: myauth,
                                        )));
                          } else {
                            // ignore: use_build_context_synchronously
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              backgroundColor: Color(0xFFAD1457),
                              content: Text(
                                "Oops, OTP send failed",
                                style: TextStyle(color: Colors.white),
                              ),
                            ));
                          }
                        },
                        minWidth: double.infinity,
                        height: 60,
                        color: Colors.pink[800],
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text(
                          "Send Email",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Do yo have an account?",
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
                          "Login",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Color(0xFFAD1457),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
