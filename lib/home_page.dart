import 'package:flutter/material.dart';
import 'package:flutter_application_calculator/ui/butten_page.dart';

String userQuestion = '';
String userAnswer = '';
String tempA = '';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
        elevation: 5,
        title: Text(
          'calculator',
          style: TextStyle(fontSize: 30, color: Colors.grey),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Expanded(
                flex: 2,
                child: Container(
                  color: Color.fromARGB(255, 255, 255, 255),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          userAnswer,
                          textAlign: TextAlign.end,
                          style: TextStyle(color: Colors.red, fontSize: 28),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 17,
                ),
                child: Card(
                  margin: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60.0),
                  ),
                  shadowColor: Color.fromARGB(255, 255, 119, 0),
                  elevation: 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CardRight(
                            number: 'c',
                            iconcolor: Colors.white,
                            paint: Color.fromARGB(255, 255, 81, 1),
                            fontSize: 30,
                            buttonTapped: () {
                              tempA = userAnswer;
                              // setState(() {
                              //   userQuestion = '';
                              //   userAnswer = '';
                              // });
                            },
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          CardRight(
                            number: 'bk',
                            iconcolor: Color.fromARGB(255, 255, 81, 1),
                            paint: Colors.white,
                            fontSize: 30,
                            buttonTapped: () {
                              // setState(() {
                              //   userQuestion = userQuestion.substring(
                              //       0, userQuestion.length - 1);
                              // });
                            },
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          CardRight(
                            number: '%',
                            iconcolor: Color.fromARGB(255, 255, 81, 1),
                            paint: Colors.white,
                            fontSize: 30,
                            buttonTapped: () {},
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          CardRight(
                            number: '/',
                            iconcolor: Color.fromARGB(255, 255, 81, 1),
                            paint: Colors.white,
                            fontSize: 30,
                            buttonTapped: () {},
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            CardRight(
                              number: '7',
                              iconcolor: Colors.grey,
                              paint: Colors.white,
                              fontSize: 20,
                              buttonTapped: () {},
                            ),
                            CardRight(
                              number: '8',
                              iconcolor: Colors.grey,
                              paint: Colors.white,
                              fontSize: 20,
                              buttonTapped: () {
                                setState(() {
                                  userQuestion + '8';
                                });
                              },
                            ),
                            CardRight(
                              number: '9',
                              iconcolor: Colors.grey,
                              paint: Colors.white,
                              fontSize: 20,
                              buttonTapped: () {
                                setState(() {
                                  userQuestion += '9';
                                });
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            CardRight(
                              number: '4',
                              iconcolor: Colors.grey,
                              paint: Colors.white,
                              fontSize: 20,
                              buttonTapped: () {
                                setState(() {
                                  userQuestion += '4';
                                });
                              },
                            ),
                            CardRight(
                              number: '5',
                              iconcolor: Colors.grey,
                              paint: Colors.white,
                              fontSize: 20,
                              buttonTapped: () {
                                setState(() {
                                  userQuestion += '5';
                                });
                              },
                            ),
                            CardRight(
                              number: '6',
                              iconcolor: Colors.grey,
                              paint: Colors.white,
                              fontSize: 20,
                              buttonTapped: () {
                                setState(() {
                                  userQuestion += '6';
                                });
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            CardRight(
                              number: '1',
                              iconcolor: Colors.grey,
                              paint: Colors.white,
                              fontSize: 20,
                              buttonTapped: () {
                                setState(() {
                                  userQuestion += '1';
                                });
                              },
                            ),
                            CardRight(
                              number: '2',
                              iconcolor: Colors.grey,
                              paint: Colors.white,
                              fontSize: 20,
                              buttonTapped: () {
                                setState(() {
                                  userQuestion += '2';
                                });
                              },
                            ),
                            CardRight(
                              number: '3',
                              iconcolor: Colors.grey,
                              paint: Colors.white,
                              fontSize: 20,
                              buttonTapped: () {
                                setState(() {
                                  userQuestion += '3';
                                });
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            CardRight(
                              number: '00',
                              iconcolor: Colors.grey,
                              paint: Colors.white,
                              fontSize: 20,
                              buttonTapped: () {
                                setState(() {
                                  userQuestion += '00';
                                });
                              },
                            ),
                            CardRight(
                              number: '0',
                              iconcolor: Colors.grey,
                              paint: Colors.white,
                              fontSize: 20,
                              buttonTapped: () {
                                setState(() {
                                  userQuestion += '0';
                                });
                              },
                            ),
                            CardRight(
                              number: '.',
                              iconcolor: Colors.grey,
                              paint: Colors.white,
                              fontSize: 20,
                              buttonTapped: () {
                                setState(() {
                                  userQuestion += '.';
                                });
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 43,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.only(bottom: 28),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60.0),
                        ),
                        shadowColor: Color.fromARGB(255, 255, 119, 0),
                        elevation: 10,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CardRight(
                              number: '*',
                              iconcolor: Color.fromARGB(255, 255, 81, 1),
                              paint: Colors.white,
                              fontSize: 30,
                              buttonTapped: () {
                                // setState(() {
                                //   userQuestion += '*';
                                // });
                              },
                            ),
                            SizedBox(
                              height: 12.0,
                            ),
                            CardRight(
                              number: '-',
                              iconcolor: Color.fromARGB(255, 255, 81, 1),
                              paint: Colors.white,
                              fontSize: 30,
                              buttonTapped: () {
                                setState(() {
                                  userQuestion += '-';
                                });
                              },
                            ),
                            SizedBox(
                              height: 12.0,
                            ),
                            CardRight(
                              number: '+',
                              iconcolor: Color.fromARGB(255, 255, 81, 1),
                              paint: Colors.white,
                              fontSize: 30,
                              buttonTapped: () {
                                setState(() {
                                  userQuestion += '+';
                                });
                              },
                            ),
                            SizedBox(
                              height: 12.0,
                            ),
                            CardRight(
                              number: '=',
                              iconcolor: Colors.white,
                              paint: Color.fromARGB(255, 255, 81, 1),
                              fontSize: 30,
                              buttonTapped: () {
                                // setState(() {
                                //   equalPressed();
                                // });
                              },
                            ),
                            SizedBox(
                              height: 12.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
