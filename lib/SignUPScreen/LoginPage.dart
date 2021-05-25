import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../MainDashboardDirectory/OTP_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

enum MobileVerificationState{
  SHOW_MOBILE_FROM_STATE,
  SHOW_OTP_FROM_STATE
}

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final currentstate = MobileVerificationState.SHOW_MOBILE_FROM_STATE;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.green[50],
      body: ListView(

        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 5.0, right: 280),
              child: IconButton(
                  onPressed: (){Navigator.pop(context);print('back to home screen');},
                  icon: Icon(
                    CupertinoIcons.back,
                    size: 25,
                    color: Colors.black,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0,left: 130),
            child: Text(
              'Login',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              ' Login to your account',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey[900]),
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(top: 12, right: 200, left: 28),
            child: Text(
              'Phone Number',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
            child: TextField(
              decoration: new InputDecoration(
                fillColor: Colors.white,
                enabledBorder: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(17.0),
                  borderSide: new BorderSide(
                      color: Colors.black,
                      width: 1.2,
                      style: BorderStyle.solid),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.5),
                    borderRadius: BorderRadius.circular(17.0)),
                //fillColor: Colors.green
              ),
              keyboardType: TextInputType.phone,
            ),
          ),
          //Button Added
          Padding(
            padding: const EdgeInsets.only(top: 15,left: 20.0,right: 20.0),
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => OTP_Page()),
                  );
                  print('Navigated to Sign up page');
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, bottom: 10.0, right: 120.0, left: 120.0),
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xff69F0AE)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(color: Colors.black, width: 2.0),
                      ),
                    ))),
          ),
          Padding(
            padding: const EdgeInsets.only(top:189),
            child: Image.asset('assets/images/background.png'),
          )
        ],
      ),
    );
  }
}
