import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe0c902),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 150),
              Center(
                child: Image.asset(
                  'assests/homeimage.png',
                  width: 400,
                ),
              ),
              Text("E-LEARNING",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'PoppinBold',
                  )),
              SizedBox(height: 15),
              Text(
                "Welcome to the online\n E-Learning App",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppin',
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Online e-learning delivers education and training digitally, offering flexibility and accessibility to learners worldwide.",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppin',
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(height: 40),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Color(0xff17202a),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 29, 29, 29)
                            .withOpacity(0.5), // Shadow color
                        spreadRadius: 3, // Spread radius
                        blurRadius: 5, // Blur radius
                        offset: Offset(0, 3), // Offset in x,y
                      ),
                    ]),
                child: Center(
                  child: Text(
                    "CONTINUE",
                    style: TextStyle(
                        color: Color(0xffe0c902),
                        fontSize: 20,
                        fontFamily: 'Poppin',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
