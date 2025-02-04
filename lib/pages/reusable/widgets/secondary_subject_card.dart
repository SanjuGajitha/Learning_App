import 'package:flutter/material.dart';

class SecondarySubjectCard extends StatelessWidget {
  final String subject;
  final ImageProvider subjectImage;
  final Color cardColor;
  const SecondarySubjectCard(
      {super.key,
      required this.subject,
      required this.subjectImage,
      required this.cardColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165,
      height: 170,
      decoration: BoxDecoration(
          color: cardColor, borderRadius: BorderRadius.circular(25)),
      child: Column(
        children: [
          Image(image: subjectImage, width: 140),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              subject,
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Poppin',
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(width: 10),
            Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50)),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 22,
                )),
          ])
        ],
      ),
    );
  }
}
