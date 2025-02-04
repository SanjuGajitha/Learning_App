import 'package:flutter/material.dart';

class SubjectCard extends StatelessWidget {
  final String subject;
  final String description;
  final Color cardColor;
  final ImageProvider image;
  const SubjectCard(
      {super.key,
      required this.subject,
      required this.description,
      required this.cardColor,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
          color: cardColor, borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: image,
            width: 100,
            height: 80,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                subject,
                style: TextStyle(
                    fontFamily: 'PoppinBold',
                    fontSize: 20,
                    color: Color(0xff2F2F2F)),
              ),
              Text(
                description,
                style: TextStyle(fontFamily: 'Poppin', fontSize: 16),
              ),
            ],
          )
        ],
      ),
    );
  }
}
