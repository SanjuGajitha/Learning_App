import 'package:e_learning_app/pages/signup_page.dart';
import 'package:e_learning_app/pages/teacher_registration.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                // ignore: sort_child_properties_last
                child: Image.asset('assests/learn.png'),
                width: 250,
              ),
              SizedBox(height: 40),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xffE7E7E7),
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: Color(0xffA1A1A1))),
                child: Row(
                  children: [
                    Icon(Icons.email),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Email Address",
                          hintStyle: TextStyle(fontFamily: 'Poppin'),
                          border: InputBorder.none,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xffE7E7E7),
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: Color(0xffA1A1A1))),
                child: Row(
                  children: [
                    Icon(Icons.lock),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(fontFamily: 'Poppin'),
                          border: InputBorder.none,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: Text(
                  "Forgot password ? ",
                  style: TextStyle(fontFamily: 'Poppin'),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(13),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xffe0c902),
                    borderRadius: BorderRadius.circular(18)),
                child: Center(
                    child: Text(
                  "Login Now  ->",
                  style: TextStyle(
                      fontFamily: 'Poppin',
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                )),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 1,
              ),
              SizedBox(
                height: 20,
              ),

              //for temoary i use this for check my teacher_registraion_page

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TeacherRegistration(),
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xff000000),
                      borderRadius: BorderRadius.circular(18)),
                  padding: EdgeInsets.all(14),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 28),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Sign in with Google",
                          style: TextStyle(
                              fontFamily: 'Poppin',
                              fontSize: 15.5,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffe0c902)),
                        ),
                        Image.asset(
                          'assests/google.png',
                          width: 30,
                          height: 30,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignupPage(),
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(17.5),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff000000),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.symmetric(horizontal: 32)),
                      Text(
                        "New Here ? ",
                        style: TextStyle(
                            fontFamily: 'Poppin',
                            fontSize: 15.5,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffe0c902)),
                      ),
                      Text(
                        " Sign Up",
                        style: TextStyle(
                            fontFamily: 'Poppin',
                            fontSize: 15.5,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffffffff)),
                      )
                    ],
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
