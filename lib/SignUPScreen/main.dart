import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'SignUpPage.dart';
import 'package:firebase_core/firebase_core.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Agriculture Monitoring System ',),centerTitle: true,backgroundColor: Colors.green[900],),
        backgroundColor: Colors.green[50],
        body: MainBody(),
      ),
    );
  }
}

class MainBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 49),
            child: Center(child: Text('Welcome',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 18.0),
            child: Text('This is a Agriculture monitoring system intended for small to medium scale farmers',textAlign: TextAlign.center,),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Image.asset('assets/images/Illustration.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: TextButton(onPressed: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()),);

              print('Navigated to Login Page');
            },
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0,bottom: 10.0,right: 120.0,left: 120.0),
                  child: Text('Login',style: TextStyle(color: Colors.black),),
                ),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: BorderSide(color: Colors.black,width: 2.0),
                        ),
                    )
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: TextButton(onPressed: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpPage()),
                  );
                  print('Navigated to Sign up page');
                  },
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0,bottom: 10.0,right: 120.0,left: 120.0),
                  child: Text('Sign up',style: TextStyle(color: Colors.black),),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.yellow),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(color: Colors.black,width: 2.0),
                      ),
                    )
                )
            ),
          ),

        ],
      ),
    );
  }
}
