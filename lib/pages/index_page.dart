import 'package:e_learning_app/pages/primary_grades_page.dart';
import 'package:e_learning_app/pages/primary_subjects.dart';
import 'package:e_learning_app/pages/reusable/widgets/bottom_navigation.dart';
import 'package:e_learning_app/pages/secondary_grades_page.dart';
import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Bottom(),
      backgroundColor: Color(0xffffffff),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 55),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Hii ,",
                    style: TextStyle(
                      fontFamily: 'PoppinBold',
                      fontSize: 25,
                      color: Color(0xff000000),
                    ),
                  ),
                  SizedBox(width: 6),
                  Text(
                    "User ",
                    style: TextStyle(
                        fontFamily: 'Poppin',
                        fontSize: 23,
                        color: Color(0xff555555),
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.handshake,
                    size: 28,
                    color: Colors.amber,
                  ),
                  SizedBox(width: 100),
                  Image.asset(
                    'assests/boy.png',
                    width: 55,
                  ),
                ],
              ),
              SizedBox(height: 3),
              Text(
                "Welcome Back",
                style: TextStyle(
                    fontSize: 28,
                    fontFamily: 'Poppin',
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(height: 25),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xffC3C3C3),
                    borderRadius: BorderRadius.circular(7),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 0, 0, 0)
                            .withOpacity(0.5), // Shadow color
                        spreadRadius: 2, // Spread radius
                        blurRadius: 2, // Blur radius
                        offset:
                            const Offset(0, 3), // Offset (x, y) of the shadow
                      )
                    ]),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Expanded(
                          child: TextField(
                        decoration: InputDecoration(
                            hintText: "Find Your Course ...",
                            hintStyle: TextStyle(
                                fontFamily: 'Poppin',
                                fontWeight: FontWeight.w500),
                            border: InputBorder.none),
                      )),
                      Icon(
                        Icons.search,
                        size: 30,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text("Choose Your Course",
                    style: TextStyle(
                        fontSize: 19,
                        fontFamily: 'PoppinBold',
                        fontWeight: FontWeight.w800)),
                Text("More >>",
                    style: TextStyle(
                        color: Color(0xff888888),
                        fontSize: 14,
                        fontFamily: 'Poppin',
                        fontWeight: FontWeight.w900)),
              ]),
              SizedBox(height: 40),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PrimaryGradesPage(),
                            ),
                          );
                        },
                        child: Container(
                            width: 140,
                            height: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(50),
                                  topRight: Radius.circular(50)),
                              color: Colors.teal,
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 3, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assests/primary.png',
                                    width: 170,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Center(
                                    child: Text(
                                      "Primary",
                                      style: TextStyle(
                                          fontFamily: 'Poppin',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ),
                                  Center(
                                      child: Text(
                                    "Grades 1-5",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xffffffff),
                                        fontFamily: 'PoppinBold'),
                                  )),
                                ],
                              ),
                            )),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SecondaryGradesPage(),
                            ),
                          );
                        },
                        child: Container(
                            width: 140,
                            height: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50),
                                  bottomRight: Radius.circular(45)),
                              color: Colors.amber,
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 10),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assests/secondary.png',
                                    width: 170,
                                  ),
                                  SizedBox(
                                    height: 13,
                                  ),
                                  Center(
                                    child: Text(
                                      "Secondary",
                                      style: TextStyle(
                                          fontFamily: 'Poppin',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ),
                                  Center(
                                      child: Text(
                                    "Grades 6-9",
                                    style: TextStyle(
                                      fontFamily: 'PoppinBold',
                                      fontSize: 16,
                                      color: Color(0xffffffff),
                                    ),
                                  )),
                                ],
                              ),
                            )),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 140,
                          height: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50),
                                  bottomRight: Radius.circular(45)),
                              color: Color(0xffEC7B82)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 6),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assests/new2.png',
                                  width: 110,
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Center(
                                  child: Text(
                                    "O/L Exams",
                                    style: TextStyle(
                                        fontFamily: 'Poppin',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                                Center(
                                    child: Text(
                                  "Ordinary Level",
                                  style: TextStyle(
                                    fontFamily: 'PoppinBold',
                                    fontSize: 15,
                                    color: Color(0xffffffff),
                                  ),
                                )),
                              ],
                            ),
                          ),
                        ),
                        Container(
                            width: 140,
                            height: 160,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(50),
                                    bottomLeft: Radius.circular(45)),
                                color: Color(0xff5989EB)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 11, vertical: 10),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assests/al.png',
                                    width: 120,
                                  ),
                                  SizedBox(
                                    height: 0,
                                  ),
                                  Center(
                                    child: Text(
                                      "A/L Exams",
                                      style: TextStyle(
                                          fontFamily: 'Poppin',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ),
                                  Center(
                                      child: Text(
                                    "Advanced Level",
                                    style: TextStyle(
                                      fontFamily: 'PoppinBold',
                                      fontSize: 14,
                                      color: Color(0xffffffff),
                                    ),
                                  )),
                                ],
                              ),
                            ))
                      ]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
