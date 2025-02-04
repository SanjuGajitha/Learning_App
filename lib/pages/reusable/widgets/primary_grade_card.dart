import 'package:e_learning_app/pages/primary_subjects.dart';
import 'package:flutter/material.dart';

class PrimaryGradeCard extends StatelessWidget {
  final ImageProvider grade;
  final Color shadowColor;

  const PrimaryGradeCard(
      {super.key, required this.grade, required this.shadowColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PrimarySubjects(),
          ),
        );
      },
      child: Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(60), boxShadow: [
          BoxShadow(
            color: shadowColor.withOpacity(0.2), // Shadow color
            blurRadius: 3.0, // Blur radius
            spreadRadius: 3.0, // Spread radius
            offset: Offset(0, 0), // Shadow offset (x, y)
          ),
        ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(
              150), // Set the border radius (e.g., 10 for rounded corners)
          child: Image(
            image: grade,
            width: 140,
            height: 140,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
