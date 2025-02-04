import 'package:e_learning_app/pages/index_page.dart';
import 'package:e_learning_app/pages/primary_subjects.dart';
import 'package:e_learning_app/pages/reusable/widgets/bottom_navigation.dart';
import 'package:e_learning_app/pages/reusable/widgets/primary_grade_card.dart';
import 'package:flutter/material.dart';

class PrimaryGradesPage extends StatelessWidget {
  const PrimaryGradesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff15254B),
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => IndexPage(),
              ),
            );
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Color(0xff15254B),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 22),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Text(
                "Choose Your Grade Level",
                style: TextStyle(
                    fontFamily: 'PoppinBold',
                    fontSize: 23,
                    color: Color(0xffD37275)),
              )),
              Center(
                  child: Text(
                "Select the grade you're in to begin learning.",
                style: TextStyle(
                    fontFamily: 'Poppin',
                    fontSize: 14,
                    color: Color(0xffffffff)),
              )),
              SizedBox(
                height: 45,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                PrimaryGradeCard(
                    grade: AssetImage('assests/one.jpg'),
                    shadowColor: Color(0xff1AB2CB)),
                PrimaryGradeCard(
                    grade: AssetImage('assests/two.jpg'),
                    shadowColor: Color(0xff21B99B)),
              ]),
              SizedBox(
                height: 45,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PrimaryGradeCard(
                      grade: AssetImage('assests/three.jpg'),
                      shadowColor: Color(0xff6CAB43)),
                ],
              ),
              SizedBox(
                height: 45,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PrimaryGradeCard(
                      grade: AssetImage('assests/four.jpg'),
                      shadowColor: Color(0xffC4AF2A)),
                  PrimaryGradeCard(
                      grade: AssetImage('assests/five.jpg'),
                      shadowColor: Color(0xffC76D1A)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
