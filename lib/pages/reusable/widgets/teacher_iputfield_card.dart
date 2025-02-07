import 'package:flutter/material.dart';

class TeacherIputfieldCard extends StatelessWidget {
  final IconData inputFieldIcon;
  final String inputHint;
  const TeacherIputfieldCard(
      {super.key, required this.inputFieldIcon, required this.inputHint});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 45,
      decoration: BoxDecoration(
          color: Color(0xffEAEAEB),
          borderRadius: BorderRadius.circular(17),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 0, 0, 0)
                  .withOpacity(0.5), // Shadow color
              spreadRadius: 5, // How much the shadow should spread
              blurRadius: 7, // How much the shadow should be blurred
              offset: const Offset(0, 3), // Offset of the shadow (x, y)
            ),
          ],
          border: Border.all(color: Color(0xff000000))),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          children: [
            Icon(inputFieldIcon),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    hintText: inputHint,
                    hintStyle: TextStyle(fontFamily: "Poppin"),
                    border: InputBorder.none),
              ),
            )
          ],
        ),
      ),
    );
  }
}
