import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quotationbox/screens/signin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}
class SplashScreenState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();
    initSharedPref();
  }

  void initSharedPref() async{
      Timer(
          Duration(seconds: 5),() async{
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignIn()
           )
          );
         }
        );
      }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Image.asset('images/app_images/splash.png',fit: BoxFit.cover,),
    );
  }
}

