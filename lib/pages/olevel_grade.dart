import 'package:e_learning_app/pages/olevel_subjects.dart';
import 'package:flutter/material.dart';

class OlevelGrade extends StatelessWidget {
  const OlevelGrade({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000000),
      appBar: AppBar(
        backgroundColor: Color(0xff000000),
        leading: Icon(
          Icons.arrow_back,
          color: Color(0xffffffff),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Text(
                  "Choose Your Level",
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: "Poppinbold",
                      color: Color(0xffffffff),
                      shadows: [
                        Shadow(
                          color: Color(0xfff2c60f)
                              .withOpacity(0.5), // Shadow color
                          blurRadius:
                              5, // Blur radius (how blurry the shadow is)
                          offset: Offset(3, 2), // Shadow offset (x, y)
                        ),
                      ]),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: double.infinity,
                height: 450,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assests/board.png'),
                        fit: BoxFit.cover)),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 90),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OlevelSubjects(),
                            ),
                          );
                        },
                        child: Image.asset(
                          'assests/ten.png',
                          width: 220,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OlevelSubjects(),
                            ),
                          );
                        },
                        child: Image.asset(
                          'assests/ele.png',
                          width: 110,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Transform.translate(
                offset: const Offset(70, -150),
                child: Image.asset(
                  'assests/back.png',
                  width: 190,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
