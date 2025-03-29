import 'package:floragreen/LoginScreen.dart';
import 'package:floragreen/Signup.dart';
import 'package:flutter/material.dart';

class Splash1 extends StatelessWidget {
  const Splash1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Image.asset(
            'images/splash1.jpg', // Replace with the actual path to your image asset
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 50,),
                  const Text(
                    "Get Any Plant",
                    style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      decorationColor: Colors.black, // Border color
                      decorationThickness: 100,
                    ),
                  ),
                  const Text(
                    "At Your Door",
                    style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      decorationColor: Colors.black, // Border color
                      decorationThickness: 15,
                    ),
                  ),
                  SizedBox(height: 300),
                  // Use a Positioned widget to move the login button to the right
                  Positioned(
                    right: 40, // Adjust the distance to the right
                    child: Container(
                      width: 200, // Adjust the width as needed
                      child: ElevatedButton(
                        onPressed: () {
                          // Perform login actions
                           Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                        ),
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          alignment: Alignment.center,
                          child: const Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 32),
                  Positioned(
                    right: 40, // Adjust the distance to the right
                    child: Container(
                      width: 200, // Adjust the width as needed
                      child: ElevatedButton(
                        onPressed: () {
                          // Perform login actions
                           Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Signup(),
                  ),
                );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                        ),
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          alignment: Alignment.center,
                          child: const Text(
                            "Signup",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
