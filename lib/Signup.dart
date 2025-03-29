import 'package:flutter/material.dart';
class Signup extends StatefulWidget {
  const Signup({ Key? key }) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
       child:SingleChildScrollView(
        child:Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(left: 30.0, right: 30.0, bottom: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
               const SizedBox(height: 16.0,),
              const Text(
                "Signup",
                style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w600,color: Colors.black),
              ),
              const SizedBox(height: 16.0,),
              const  Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Name", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold,color: Colors.black),),
                ],
              ),
              const SizedBox(height: 8.0,),
              TextField(
                 cursorColor: Colors.black,
                  style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'Enter your name',
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
                children:[
                  Text("Mobile Number", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold,color: Colors.black),),
                ],
              ),
              const SizedBox(height: 8.0,),
              TextField(
                 cursorColor: Colors.black,
                  style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'Enter your mobile number',
                  hintStyle: TextStyle(color: Colors.black.withOpacity(0.7)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                     borderSide: const BorderSide(color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(height: 16.0,),
              const  Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text("Email Address", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold,color: Colors.black),),
                ],
              ),
              const SizedBox(height: 8.0,),
              TextField(
                 cursorColor: Colors.black,
                  style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'Enter your Email',
                  hintStyle: TextStyle(color: Colors.black.withOpacity(0.7)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                     borderSide: const BorderSide(color: Colors.black),
                  ),
                ),
              ),
              const  SizedBox(height: 16.0,),
              const  Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text("Mobile Number", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold,color: Colors.black),),
                ],
              ),
              const SizedBox(height: 8.0,),
              TextField(
                 cursorColor: Colors.black,
                  style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'Enter your mobile number',
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
                children:[
                  Text("Enter Password", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold,color: Colors.black),),
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
              const  SizedBox(height: 16.0,),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text("Confirm Password", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold,color: Colors.black),),
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
              ElevatedButton(
                onPressed: () {
        
        //perfom some actions
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
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
               const SizedBox(height:16.0,),
              Align(
                alignment:Alignment.center,
             child: TextButton(
                onPressed:()
              {
                // handle the button
                Navigator.pushNamed(context, "/login");
              }, 
              child: const Text(
                "Have an account? Login ",style: TextStyle(fontSize: 16.0,color: Colors.green),
            ), 
              ),
              ),
            ],
          ),
        ),
       ),
      ),
      ),
    );
  }
}