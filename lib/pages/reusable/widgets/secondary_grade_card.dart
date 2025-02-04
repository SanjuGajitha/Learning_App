import 'package:e_learning_app/pages/secondary_subjects.dart';
import 'package:flutter/material.dart';

class SecondaryGradeCard extends StatelessWidget {
  final Color shadowColor;
  final ImageProvider gradeImage;
  final double positionValue;
  const SecondaryGradeCard(
      {super.key,
      required this.shadowColor,
      required this.gradeImage,
      required this.positionValue});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SecondarySubjects(),
          ),
        );
      },
      child: Container(
        // width: 150,
        // height: 150,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(100), boxShadow: [
          BoxShadow(
            color: shadowColor.withOpacity(0.5), // Shadow color
            spreadRadius: -5, // Spread radius
            blurRadius: 20, // Blur radius
            offset: const Offset(0, 3),
          )
        ]),
        child: Image(
          image: gradeImage,
          width: 150,
        ),
      ),
    );
  }
}
