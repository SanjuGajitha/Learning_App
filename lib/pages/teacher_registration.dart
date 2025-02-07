import 'package:e_learning_app/pages/reusable/widgets/teacher_iputfield_card.dart';
import 'package:flutter/material.dart';

class TeacherRegistration extends StatelessWidget {
  const TeacherRegistration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Color(0xff171717)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40, horizontal: 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xffFDCF04),
                  ),
                  child: Icon(Icons.arrow_back),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assests/teacher.png',
                      width: 300,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Educator Registration\n Form",
                      style: TextStyle(
                          color: Color(0xffFDCF04),
                          fontSize: 25,
                          fontFamily: 'Poppin',
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                TeacherIputfieldCard(
                  inputFieldIcon: Icons.person,
                  inputHint: "First Name",
                ),
                SizedBox(
                  height: 15,
                ),
                TeacherIputfieldCard(
                  inputFieldIcon: Icons.person,
                  inputHint: "Last Name",
                ),
                SizedBox(
                  height: 15,
                ),
                TeacherIputfieldCard(
                  inputFieldIcon: Icons.email,
                  inputHint: "Email",
                ),
                SizedBox(
                  height: 15,
                ),
                TeacherIputfieldCard(
                  inputFieldIcon: Icons.phone_android,
                  inputHint: "Contact Number",
                ),
                SizedBox(
                  height: 15,
                ),
                TeacherIputfieldCard(
                  inputFieldIcon: Icons.school,
                  inputHint: "Qualifications",
                ),
                SizedBox(
                  height: 15,
                ),
                TeacherIputfieldCard(
                  inputFieldIcon: Icons.lock,
                  inputHint: "Password",
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xffFDCF04),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Text(
                      "Register",
                      style: TextStyle(
                          fontSize: 23,
                          fontFamily: 'Poppin',
                          fontWeight: FontWeight.w800,
                          shadows: [
                            Shadow(
                              color:
                                  Colors.black.withOpacity(0.5), // Shadow color
                              blurRadius:
                                  5, // How much the shadow should be blurred
                              offset: const Offset(
                                  1, 1), // Offset of the shadow (x, y)
                            ),
                          ]),
                    )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
