import 'package:floragreen/Home.dart';
import 'package:floragreen/Reset.dart';
import 'package:floragreen/splash1.dart';
import 'package:flutter/material.dart';
import 'package:floragreen/LoginScreen.dart';
import 'package:floragreen/Signup.dart';
import 'package:floragreen/forget.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flora Green',
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => SplashScreen(),
        "/login":(context) => LoginScreen(),
        "/signup":(context) => Signup(),
        "/forget":(context) => Forget(),
        "/splash1":(context) => Splash1(),
        "/reset":(context) => Reset(),
        "/home":(context) => Home(),
     },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
  Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Splash1()), 
      );
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child:Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
          Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height*0.8,
          child: Image.asset('images/FG.png',
          width: 50,
          height: 50,
        ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: Text(
                "Nature's embrace delivery to your door",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
           ],
        ),
      ),
    );
  }
}

