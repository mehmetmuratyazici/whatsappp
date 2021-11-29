// ignore_for_file: prefer_const_constructors, avoid_print, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:whatsappp/screen/profile.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

void changeScreen(BuildContext _context, Widget _widget) {
  Navigator.push(_context, MaterialPageRoute(builder: (_context) => _widget));
}

class _LoginState extends State<Login> {
  bool _isPhoneNumberValid = false;

  TextEditingController _phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: const Text(
              "Telefon Numaranızı Girin",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
          ),
          Container(
              
              padding: const EdgeInsets.all(60),
              child: TextField(
                controller: _phoneNumberController,
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  hintText: "Number",
                  errorText: _isPhoneNumberValid
                      ? "Phone number should be not null !"
                      : null,
                  
                  focusedBorder: const OutlineInputBorder(
                    
                    
                    
                  ),
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(11),
                ],
              )),
          Container(
              padding: const EdgeInsets.all(50),
              child: ElevatedButton(
                onPressed: () async {
                   SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                   prefs.setBool("isSignedIn", true);
                  print(_phoneNumberController.value.isComposingRangeValid);
                  if (_phoneNumberController.text != "") {
                    setState(() {
                      _isPhoneNumberValid = false;
                    });
                    changeScreen(context, const Profile());
                  } else {
                    //BaseUtils.showMsg(context, "Phone number should be not null !");
                    setState(() {
                      _isPhoneNumberValid = true;
                    });
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                ),
                child: const Text(
                  "Go",
                  style: TextStyle(fontSize: 20),
                ),
              ))
        ]),
      ),
    );
  }
}
