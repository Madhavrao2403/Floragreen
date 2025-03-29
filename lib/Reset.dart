import 'package:floragreen/LoginScreen.dart';
import 'package:flutter/material.dart';

class Reset extends StatefulWidget {
  const Reset({Key? key}) : super(key: key);

  @override
  _ResetState createState() => _ResetState();
}

class _ResetState extends State<Reset> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(left: 30.0, right: 30.0, bottom: 30.0, top: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Change Password",
                style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w600, color: Colors.green),
              ),
               SizedBox(height: 16.0,),
            const Text("Enter new password and confirm the password to continue from login.", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.black
            ),),
              const SizedBox(height:50),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Enter Password", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),),
                ],
              ),
              const SizedBox(height: 8.0,),
              TextField(
                cursorColor: Colors.black,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.black.withOpacity(0.7)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: const BorderSide(color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(height: 16.0,),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Confirm Password", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),),
                ],
              ),
              const SizedBox(height: 8.0,),
              TextField(
                cursorColor: Colors.black,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.black.withOpacity(0.7)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: const BorderSide(color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(height: 36.0,),
              ElevatedButton(
                onPressed: () {
                  // Perform some actions
                 Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
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
                    "submit",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

