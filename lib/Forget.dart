import 'package:floragreen/Reset.dart';
import 'package:flutter/material.dart';

class Forget extends StatefulWidget {
  const Forget({ Key? key }) : super(key: key);

  @override
  _ForgetState createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
  // Step 1: Add a TextEditingController for email
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.only(left: 30.0, right: 30.0, bottom: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            SizedBox(height: 16.0,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Forgot Password?",
                  style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w600,color: Colors.green),
                ),
              ],
            ),
            SizedBox(height: 16.0,),
            const Text("Enter the email associated with your account and we will send an authentication code to reset your password", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.black
            ),),
            SizedBox(height: 16.0,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Text("Email Address", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold,color: Colors.white),),
              ],
            ),
            TextField(
              // Step 1: Connect the TextEditingController to the TextField
              controller: emailController,
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
            SizedBox(height: 50.0,),
            ElevatedButton(
              onPressed: () {
                // Step 2: Pass the email to the OTP screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OtpScreen(email: emailController.text),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.0),
                ),
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                alignment: Alignment.center,
                child: const Text(
                  "Submit",
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
    );
  }
}

class OtpScreen extends StatefulWidget {
  // Step 3: Add a constructor to receive the email
  final String email;

  OtpScreen({required this.email});

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
    List<TextEditingController> controllers =
      List.generate(4, (index) => TextEditingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          // Close the keyboard when tapping outside the text field
          FocusScope.of(context).unfocus();
        },
        child: Padding(
          padding: EdgeInsets.only(left: 30.0, right: 30.0, bottom: 30.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Enter OTP",
                  style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.green),
                ),
                SizedBox(height: 16.0),

                // Display entered mail address with yellow color
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "Enter the authentication code sent to your mail address ",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: "${widget.email}",
                        style: TextStyle(
                          color: Colors.green, // Change text color to yellow
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.0),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    4, // Change to 4-digit boxes
                        (index) => Container(
                      margin: EdgeInsets.symmetric(horizontal: 8.0),
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          color: Colors.black,
                          width: 1.0, // Adjust border thickness
                        ),
                      ),
                      child: Center(
                        child: TextFormField(
                          controller: controllers[index],
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                          decoration: InputDecoration(
                            counter: Offstage(),
                            contentPadding: EdgeInsets.zero,
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                          onChanged: (value) {
                            // Move to the next box on single-digit entry
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 100.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/reset");
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    alignment: Alignment.center,
                    child: const Text(
                      "Submit",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 32.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Implement your "Didn't receive OTP?" logic here
                        Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Reset(),
                  ),
                );
                      },
                      child: Text(
                        "Didn't receive OTP?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    SizedBox(width: 8.0,),
                    GestureDetector(
                      onTap: () {
                        // Implement your resend password logic here
                      },
                      child: Text(
                        "Resend OTP",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}