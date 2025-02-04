import 'package:e_learning_app/pages/index_page.dart';
import 'package:e_learning_app/pages/reusable/widgets/secondary_grade_card.dart';
import 'package:flutter/material.dart';

class SecondaryGradesPage extends StatelessWidget {
  const SecondaryGradesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1A1F32),
      appBar: AppBar(
          backgroundColor: Color(0xff1A1F32),
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
          )),
      body: Padding(
        padding: EdgeInsets.fromLTRB(28, 0, 28, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Indicate Your Grade.",
                style: TextStyle(
                    fontFamily: 'PoppinBold',
                    fontSize: 26,
                    color: Color(0xffffffff)),
              ),
              Text(
                "Learn, Adapt, Thrive..",
                style: TextStyle(
                    fontFamily: 'PoppinBold',
                    fontSize: 20,
                    color: Color.fromARGB(255, 155, 130, 130)),
              ),
              SizedBox(
                height: 20,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                SecondaryGradeCard(
                    shadowColor: Color(0xff5A788E),
                    gradeImage: AssetImage('assests/six.png'),
                    positionValue: 0.0),
                Text(
                  "Kindness makes \nthe world a \nbetter place.",
                  style: TextStyle(
                      color: Color(0xff5A788E),
                      fontFamily: 'Poppin',
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Text(
                  "Your unique\n talents make\n you special.",
                  style: TextStyle(
                      color: Color(0xff593F2F),
                      fontFamily: 'Poppin',
                      fontWeight: FontWeight.w900,
                      fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                SecondaryGradeCard(
                    shadowColor: Color(0xff593F2F),
                    gradeImage: AssetImage('assests/seven.png'),
                    positionValue: -110)
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SecondaryGradeCard(
                      shadowColor: Color(0xff197CBE),
                      gradeImage: AssetImage('assests/eight.png'),
                      positionValue: -170),
                  Text(
                    "Dream big,\nwork hard,and\nnever give up..",
                    style: TextStyle(
                        color: Color(0xff197CBE),
                        fontFamily: 'Poppin',
                        fontWeight: FontWeight.w900,
                        fontSize: 18),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Be the change \nyou want to see \nin the world..",
                    style: TextStyle(
                        color: Color(0xff6AB62C),
                        fontFamily: 'Poppin',
                        fontWeight: FontWeight.w900,
                        fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                  SecondaryGradeCard(
                      shadowColor: Color(0xff6AB62C),
                      gradeImage: AssetImage('assests/nine.png'),
                      positionValue: -250),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
