import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String textHint;
  final IconData icon;

  const InputField({super.key, required this.textHint, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color(0xffE7E7E7),
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: Color(0xffA1A1A1))),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: 20),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: textHint,
                border: InputBorder.none,
              ),
            ),
          )
        ],
      ),
    );
  }
}
