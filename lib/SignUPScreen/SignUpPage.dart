import 'package:flutter/cupertino.dart';
import '../MainDashboardDirectory/OTP_page.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50],

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
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25,left: 135),
            child: Text('Sign Up',style: TextStyle(color:Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0,left: 80.0),
            child: Text('Create an account , its free',style: TextStyle(color: Colors.grey[900]),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 45,right: 200, left: 28),
            child: Text(
              'Name',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 15, right: 20),
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
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15,right: 200, left: 28),
            child: Text(
              'Email',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 15, right: 20),
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
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15,right: 200, left: 28),
            child: Text(
              'Phone Number',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 15, right: 20),
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
                    'Sign up',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Color(0xffFFEB3B)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(color: Colors.black, width: 2.0),
                      ),
                    ))),
          ),
        ],
      ),
    );
  }
}
