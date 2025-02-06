import 'dart:ffi';

import 'package:e_learning_app/pages/olevel_grade.dart';
import 'package:e_learning_app/pages/reusable/widgets/olevel_subject_card.dart';
import 'package:flutter/material.dart';

class OlevelSubjects extends StatelessWidget {
  const OlevelSubjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff191919),
      appBar: AppBar(
        backgroundColor: Color(0xff191919),
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => OlevelGrade(),
              ),
            );
          },
          child: Icon(
            Icons.arrow_back,
            color: Color(0xffffffff),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Main Subjects",
                style:
                    TextStyle(fontSize: 28, color: Color(0xffffffff), shadows: [
                  Shadow(
                    color: const Color.fromARGB(255, 234, 208, 40)
                        .withOpacity(0.3),
                    blurRadius: 6,
                    offset: Offset(2, 2),
                  )
                ]),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      OlevelSubjectCard(
                        containerBg: Color(0xff6CD5C6),
                        roundContainerBg: Color(0xff1EBCA5),
                        subjectName: "Buddhism",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      OlevelSubjectCard(
                        containerBg: Color(0xffFDA88B),
                        roundContainerBg: Color(0xffE8693F),
                        subjectName: "Sinhala",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      OlevelSubjectCard(
                        containerBg: Color(0xff9BBEF4),
                        roundContainerBg: Color(0xff3D80E8),
                        subjectName: "English",
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      OlevelSubjectCard(
                        containerBg: Color(0xffBCA1F2),
                        roundContainerBg: Color(0xff7C49E4),
                        subjectName: "Science",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      OlevelSubjectCard(
                        containerBg: Color(0xffF69FD6),
                        roundContainerBg: Color(0xffE94EAE),
                        subjectName: "Mathematics",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      OlevelSubjectCard(
                        containerBg: Color(0xff8EC6D3),
                        roundContainerBg: Color(0xff29A9C2),
                        subjectName: "History",
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text("First Group Subject",
                  style: TextStyle(
                      fontSize: 28,
                      color: Color(0xffffffff),
                      shadows: [
                        Shadow(
                          color: const Color.fromARGB(255, 234, 208, 40)
                              .withOpacity(0.3),
                          blurRadius: 6,
                          offset: Offset(2, 2),
                        )
                      ])),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      OlevelSubjectCard(
                          containerBg: Color(0xffA0D69A),
                          roundContainerBg: Color(0xff54C54A),
                          subjectName: "Geography"),
                      SizedBox(
                        height: 10,
                      ),
                      OlevelSubjectCard(
                          containerBg: Color(0xffF4E169),
                          roundContainerBg: Color(0xffD1BB2A),
                          subjectName: "Accounting"),
                    ],
                  ),
                  Column(
                    children: [
                      OlevelSubjectCard(
                          containerBg: Color(0xff677A9A),
                          roundContainerBg: Color(0xff2E4874),
                          subjectName: "Citizenship"),
                      SizedBox(
                        height: 10,
                      ),
                      OlevelSubjectCard(
                          containerBg: Color(0xffD0C3D9),
                          roundContainerBg: Color(0xff8C6BA0),
                          subjectName: "Entrepreneur"),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text("Second Group Subjects",
                  style: TextStyle(
                      fontSize: 28,
                      color: Color(0xffffffff),
                      shadows: [
                        Shadow(
                          color: const Color.fromARGB(255, 234, 208, 40)
                              .withOpacity(0.3),
                          blurRadius: 6,
                          offset: Offset(2, 2),
                        )
                      ])),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      OlevelSubjectCard(
                          containerBg: Color(0xff9FA57F),
                          roundContainerBg: Color(0xff656E32),
                          subjectName: "Music"),
                      SizedBox(
                        height: 10,
                      ),
                      OlevelSubjectCard(
                          containerBg: Color(0xffF1938B),
                          roundContainerBg: Color(0xffE85246),
                          subjectName: "Art"),
                      SizedBox(
                        height: 10,
                      ),
                      OlevelSubjectCard(
                          containerBg: Color(0xffDAFF9D),
                          roundContainerBg: Color(0xffB6FF3C),
                          subjectName: "Dancing"),
                    ],
                  ),
                  Column(
                    children: [
                      OlevelSubjectCard(
                          containerBg: Color(0xffB2C9DF),
                          roundContainerBg: Color(0xff7FA5CA),
                          subjectName: "Drama"),
                      SizedBox(
                        height: 10,
                      ),
                      OlevelSubjectCard(
                          containerBg: Color(0xff95989F),
                          roundContainerBg: Color(0xff4F5460),
                          subjectName: "Sinhala Lit"),
                      SizedBox(
                        height: 10,
                      ),
                      OlevelSubjectCard(
                          containerBg: Color(0xff70A070),
                          roundContainerBg: Color(0xff0F5810),
                          subjectName: "English Lit"),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text("Third Group Subjects",
                  style: TextStyle(
                      fontSize: 28,
                      color: Color(0xffffffff),
                      shadows: [
                        Shadow(
                          color: const Color.fromARGB(255, 234, 208, 40)
                              .withOpacity(0.3),
                          blurRadius: 6,
                          offset: Offset(2, 2),
                        )
                      ])),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      OlevelSubjectCard(
                          containerBg: Color(0xff699FB1),
                          roundContainerBg: Color(0xff2A7690),
                          subjectName: "I.C.T"),
                      SizedBox(
                        height: 10,
                      ),
                      OlevelSubjectCard(
                          containerBg: Color(0xffF8D8E0),
                          roundContainerBg: Color(0xffEB91A9),
                          subjectName: "Agriculture")
                    ],
                  ),
                  Column(
                    children: [
                      OlevelSubjectCard(
                          containerBg: Color(0xff8C9AD6),
                          roundContainerBg: Color(0xff465DBD),
                          subjectName: "Art & Craft"),
                      SizedBox(
                        height: 10,
                      ),
                      OlevelSubjectCard(
                          containerBg: Color(0xffDEC9A6),
                          roundContainerBg: Color(0xffC9A56C),
                          subjectName: "Health")
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
