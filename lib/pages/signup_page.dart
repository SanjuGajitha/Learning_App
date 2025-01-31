import 'package:e_learning_app/pages/reusable/widgets/input_field.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
            image:
                AssetImage('assests/new.jpg'), // Replace with your image path
            fit: BoxFit.fill, // You can use different BoxFit values
          )),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 35, vertical: 55),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sign Up",
                  style: TextStyle(
                      fontSize: 38,
                      fontFamily: 'Poppin',
                      fontWeight: FontWeight.w700,
                      shadows: [
                        Shadow(
                          blurRadius: 5.0, // Adjust blur radius
                          color: Colors.black
                              .withOpacity(0.5), // Shadow color with opacity
                          offset:
                              const Offset(3.0, 3.0), // Shadow offset (x, y)
                        ),
                      ]),
                ),
                SizedBox(height: 5),
                Text(
                  "Register to Start Your Exciting\n Learning Process",
                  style: TextStyle(
                      fontFamily: 'Poppin', fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 40),
                InputField(textHint: "Username", icon: Icons.person),
                SizedBox(height: 20),
                InputField(textHint: "Email Address", icon: Icons.email),
                SizedBox(height: 20),
                InputField(textHint: "Mobile Number", icon: Icons.smartphone),
                SizedBox(height: 20),
                InputField(textHint: "Enter a Password", icon: Icons.lock),
                SizedBox(height: 20),
                InputField(textHint: "Retype Password", icon: Icons.lock),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                          color: Color(0xff86818D),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    Text(
                      "By Signing up you accept our Terms of Services&\n Privacy Policy ",
                      style: TextStyle(fontSize: 11),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xff000000),
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Color(0xff000000))),
                  child: Center(
                    child: Text(
                      "Get Set to Explore ->",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Poppin',
                          color: Color(0xffFAC310)),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                    padding: EdgeInsets.symmetric(vertical: 14),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xffFAC310),
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(color: Color(0xff000000))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already a Member ?",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Poppin',
                              color: Color(0xff000000)),
                        ),
                        Text(
                          " Login Now",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'PoppinBold',
                              color: Color.fromARGB(255, 43, 43, 43)),
                        )
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
