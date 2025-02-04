import 'package:e_learning_app/pages/reusable/widgets/bottom_navigation.dart';
import 'package:e_learning_app/pages/reusable/widgets/sbuject_card.dart';
import 'package:flutter/material.dart';

class PrimarySubjects extends StatelessWidget {
  const PrimarySubjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Bottom(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 53),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Choose Your Subjects",
                style: TextStyle(
                    fontFamily: 'Poppin',
                    fontWeight: FontWeight.w800,
                    fontSize: 25),
              ),
              SizedBox(
                height: 36,
              ),
              SubjectCard(
                cardColor: Colors.amber,
                subject: "Sinhala",
                description: "Our Language",
                image: AssetImage('assests/sinh.png'),
              ),
              SizedBox(
                height: 33,
              ),
              SubjectCard(
                cardColor: Color(0xff00B4E1),
                subject: "Maths",
                description: "Think Smart",
                image: AssetImage('assests/math.png'),
              ),
              SizedBox(height: 33),
              SubjectCard(
                  subject: "Buddhism",
                  description: "Help Others",
                  cardColor: Color(0xffB79BEA),
                  image: AssetImage('assests/buddh.png')),
              SizedBox(height: 33),
              SubjectCard(
                  subject: "English",
                  description: "Express Yourself",
                  cardColor: Color(0xffEC6F5C),
                  image: AssetImage('assests/english.png')),
              SizedBox(height: 33),
              SubjectCard(
                  subject: "Environment",
                  description: 'Love our Earth',
                  cardColor: Color(0xff9BCF95),
                  image: AssetImage('assests/envi.png'))
            ],
          ),
        ),
      ),
    );
  }
}
