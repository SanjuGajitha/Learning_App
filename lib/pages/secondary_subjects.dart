import 'package:e_learning_app/pages/reusable/widgets/secondary_subject_card.dart';
import 'package:flutter/material.dart';

class SecondarySubjects extends StatelessWidget {
  const SecondarySubjects({super.key});

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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Column(
            children: [
              Text(
                "Please Select Your Subject",
                style: TextStyle(color: Colors.white, fontSize: 26),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //first colum in row
                  Column(
                    children: [
                      SecondarySubjectCard(
                          subject: "Science",
                          subjectImage: AssetImage('assests/sscience.png'),
                          cardColor: Colors.amber),
                      SizedBox(height: 20),
                      SecondarySubjectCard(
                          subject: "Maths",
                          subjectImage: AssetImage('assests/smaths.png'),
                          cardColor: Color(0xffB4CBD7)),
                      SizedBox(height: 20),
                      SecondarySubjectCard(
                          subject: "Sinhala",
                          subjectImage: AssetImage('assests/ssinhala.png'),
                          cardColor: Color(0xffF5E6D3)),
                      SizedBox(height: 20),
                      SecondarySubjectCard(
                          subject: "Buddhism",
                          subjectImage: AssetImage('assests/sbuddh.png'),
                          cardColor: Color(0xffB7C5AC)),
                      SizedBox(height: 20),
                      SecondarySubjectCard(
                          subject: "Tamil",
                          subjectImage: AssetImage('assests/stamil.png'),
                          cardColor: Color(0xffCF96DE)),
                      SizedBox(height: 20),
                      SecondarySubjectCard(
                          subject: "English",
                          subjectImage: AssetImage('assests/senglish.png'),
                          cardColor: Color(0xff9DA696)),
                    ],
                  ),

                  Column(
                    children: [
                      SecondarySubjectCard(
                          subject: "History",
                          subjectImage: AssetImage('assests/shisto.png'),
                          cardColor: Color(0xffA7966C)),
                      SizedBox(height: 20),
                      SecondarySubjectCard(
                          subject: "Geography",
                          subjectImage: AssetImage('assests/sgeo.png'),
                          cardColor: Color(0xffECAB75)),
                      SizedBox(height: 20),
                      SecondarySubjectCard(
                          subject: "Health",
                          subjectImage: AssetImage('assests/sheal.png'),
                          cardColor: Color(0xffFE7D77)),
                      SizedBox(height: 20),
                      SecondarySubjectCard(
                          subject: "Civic Educ",
                          subjectImage: AssetImage('assests/scivic.png'),
                          cardColor: Color(0xff424CBF)),
                      SizedBox(height: 20),
                      SecondarySubjectCard(
                          subject: "I.C.T",
                          subjectImage: AssetImage('assests/ict.png'),
                          cardColor: Color(0xff07648D)),
                      SizedBox(height: 20),
                      SecondarySubjectCard(
                          subject: "MUsic",
                          subjectImage: AssetImage('assests/music.png'),
                          cardColor: Color(0xffDBCA7F)),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
