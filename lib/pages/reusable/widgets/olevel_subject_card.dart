import 'package:flutter/material.dart';

class OlevelSubjectCard extends StatelessWidget {
  final Color containerBg;
  final Color roundContainerBg;
  final String subjectName;
  const OlevelSubjectCard(
      {super.key,
      required this.containerBg,
      required this.roundContainerBg,
      required this.subjectName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
          color: containerBg, borderRadius: BorderRadius.circular(25)),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: roundContainerBg,
                  borderRadius: BorderRadius.circular(50)),
              child: Image.asset('assests/books.png'),
            ),
          ),
          Center(
            child: Text(
              subjectName,
              style: TextStyle(
                  fontFamily: 'Poppin',
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
