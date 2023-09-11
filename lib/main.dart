import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quotationbox/screens/signin.dart';



void main() async{

  runApp(MyApp());

  //  runApp(MyApp());
 // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  //
  // SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.portraitUp,DeviceOrientation.portraitDown])
  //     .then((_) => runApp(
  //     GetMaterialApp(
  //         debugShowCheckedModeBanner: false,
  //         home: MyApp())
  // )
  // );
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

  // late SharedPreferences prefs;
  // bool? _isFirstRun;
  // String? xval;

  @override
  void initState() {
    super.initState();
    initSharedPref();
  }


  void initSharedPref() async{


      Timer(
          Duration(seconds: 5),() async{
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignIn()));
      }
      );


    // prefs = await SharedPreferences.getInstance();
    // String? valTok = prefs.getString('token');
    //
    // bool? status = prefs.getBool('true');
    //
    // if(status == false || valTok == null){
    //   Timer(
    //       Duration(seconds: 5),() async{
    //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()));
    //   }
    //   );
    // }
    //
    // else{
    //   Timer(
    //       Duration(seconds: 5),() async{
    //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
    //   }
    //   );
    // }
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

