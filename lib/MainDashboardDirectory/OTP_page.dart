import 'package:flutter/material.dart';
import 'MainDashboard.dart';


// ignore: camel_case_types
class OTP_Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50],
      appBar: AppBar(title: Text('Enter the OTP',style: TextStyle(color: Colors.black),),backgroundColor: Colors.yellow,),

      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 50,left: 20.0,right: 20.0),
              child: Text('Kindly enter the otp ',style: TextStyle(fontWeight: FontWeight.w500),),
            ),
            Center(
              child: Padding(
                padding:  EdgeInsets.only(top: 10,left: 20.0 ,right: 20.0),
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
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15,left: 20.0,right: 20.0),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MainDashboard()),
                    );
                    print('Navigated to Sign up page');
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, bottom: 10.0, right: 30.0, left: 30.0),
                    // child: Text(
                    //     ,
                    //   style: TextStyle(color: Colors.black,fontSize: 22),
                    // ),
                    child: Icon(Icons.arrow_forward,color: Colors.black,),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Colors.yellow),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          side: BorderSide(color: Colors.black, width: 2.0),
                        ),
                      ))),
            ),
          ],
        ),
      ),
    );
  }
}
