import 'package:email_otp/email_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jewelry_app/forget.dart';

import 'newPassword.dart';

class Otp extends StatelessWidget {
  const Otp({
    Key? key,
    required this.otpController,
  }) : super(key: key);
  final TextEditingController otpController;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 60,
      child: Material(
        elevation: 2,
        shadowColor: Colors.pink[100],
        child: TextFormField(
          controller: otpController,
          keyboardType: TextInputType.number,
          // ignore: deprecated_member_use
          style: Theme.of(context).textTheme.headline6,
          textAlign: TextAlign.center,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
          ],
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
            if (value.isEmpty) {
              FocusScope.of(context).previousFocus();
            }
          },

          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: ('0'),
            filled: true,
            fillColor: Color.fromRGBO(238, 238, 238, 1),
            contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          ),
          onSaved: (value) {},
        ),
      ),
    );
  }
}

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key, required this.myauth}) : super(key: key);
  final EmailOTP myauth;
  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController otp1Controller = TextEditingController();
  TextEditingController otp2Controller = TextEditingController();
  TextEditingController otp3Controller = TextEditingController();
  TextEditingController otp4Controller = TextEditingController();

  int otpController = 0;
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
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => ForgetPassword()),
                (Route<dynamic> route) => false);
          },
          icon: Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.pink[800],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.dialpad_rounded,
                    size: 50, color: Color(0xFFAD1457)),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "Enter verified PIN",
                  style: TextStyle(
                    fontSize: 40,
                    color: Color.fromARGB(181, 0, 0, 0),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                const Text(
                  "Check your Email",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Otp(
                      otpController: otp1Controller,
                    ),
                    Otp(
                      otpController: otp2Controller,
                    ),
                    Otp(
                      otpController: otp3Controller,
                    ),
                    Otp(
                      otpController: otp4Controller,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.only(
                          left: 30, right: 30, top: 10, bottom: 10),
                      primary: Color(0xFFAD1457)),
                  onPressed: () async {
                    if (await widget.myauth.verifyOTP(
                            otp: otp1Controller.text +
                                otp2Controller.text +
                                otp3Controller.text +
                                otp4Controller.text) ==
                        true) {
                      // ignore: use_build_context_synchronously
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        backgroundColor: Color(0xFFAD1457),
                        content: Text(
                          "OTP is verified",
                          style: TextStyle(color: Colors.white),
                        ),
                      ));
                      // ignore: use_build_context_synchronously
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NewPassword()));
                    } else {
                      // ignore: use_build_context_synchronously
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        backgroundColor: Color(0xFFAD1457),
                        content: Text(
                          "Invalid OTP",
                          style: TextStyle(color: Colors.white),
                        ),
                      ));
                    }
                  },
                  child: Text(
                    "Confirm",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
