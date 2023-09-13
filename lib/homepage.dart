import 'package:calculatorrr/loanemicalculator.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

Widget button({text, textColor, buttonBgColor, shape, size}) {
  return Container(
    margin: const EdgeInsets.all(8),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
          fixedSize: size, backgroundColor: buttonBgColor, shape: shape),
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: textColor),
      ),
    ),
  );
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: (Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoanEmiCalculatotr();
                    },
                  ),
                );
              },
              icon: const Icon(
                Icons.more_vert_outlined,
                size: 30,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.black,
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                '6000/2+3227*2',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              const Text(
                '=12,454',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30.0, bottom: 15),
                child: Divider(
                  thickness: 2,
                  color: Colors.yellowAccent,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                              children: [
                                button(
                                  buttonBgColor: Colors.grey,
                                  textColor: Colors.yellow,
                                  text: 'θ',
                                  shape: const StadiumBorder(),
                                  size: const Size(40, 40),
                                ),
                                button(
                                  buttonBgColor: Colors.grey,
                                  textColor: Colors.yellow,
                                  text: 'μ',
                                  shape: const StadiumBorder(),
                                  size: const Size(40, 40),
                                ),
                                button(
                                  buttonBgColor: Colors.grey,
                                  textColor: Colors.yellow,
                                  text: 'sin',
                                  shape: const StadiumBorder(),
                                  size: const Size(40, 40),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            button(
                                text: 'Ac',
                                buttonBgColor: Colors.blueGrey,
                                textColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                size: const Size(60, 60)),
                            button(
                                text: '⌫',
                                buttonBgColor: Colors.blueGrey,
                                textColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                size: const Size(60, 60)),
                            button(
                                buttonBgColor: Colors.amber,
                                text: '/',
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                size: const Size(60, 60)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            button(
                                buttonBgColor: Colors.grey,
                                textColor: Colors.yellow,
                                text: '7',
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                size: const Size(60, 60)),
                            button(
                                buttonBgColor: Colors.grey,
                                textColor: Colors.yellow,
                                text: '8',
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                size: const Size(60, 60)),
                            button(
                                buttonBgColor: Colors.grey,
                                textColor: Colors.yellow,
                                text: '9',
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                size: const Size(60, 60)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            button(
                                buttonBgColor: Colors.grey,
                                textColor: Colors.yellow,
                                text: '4',
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                size: const Size(60, 60)),
                            button(
                                buttonBgColor: Colors.grey,
                                textColor: Colors.yellow,
                                text: '5',
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                size: const Size(60, 60)),
                            button(
                                buttonBgColor: Colors.grey,
                                textColor: Colors.yellow,
                                text: '6',
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                size: const Size(60, 60)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          //crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            button(
                                buttonBgColor: Colors.grey,
                                textColor: Colors.yellow,
                                text: '1',
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                size: const Size(60, 60)),
                            button(
                                buttonBgColor: Colors.grey,
                                textColor: Colors.yellow,
                                text: '2',
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                size: const Size(60, 60)),
                            button(
                                buttonBgColor: Colors.grey,
                                textColor: Colors.yellow,
                                text: '3',
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                size: const Size(60, 60)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          //crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            button(
                                buttonBgColor: Colors.grey,
                                textColor: Colors.yellow,
                                text: '0',
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                size: const Size(150, 60)),
                            button(
                              buttonBgColor: Colors.grey,
                              textColor: Colors.yellow,
                              text: '.',
                              size: const Size(60, 60),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0),
//color: Colors.blue,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        button(
                          buttonBgColor: Colors.grey,
                          textColor: Colors.yellow,
                          text: 'deg',
                          shape: const StadiumBorder(),
                          size: const Size(40, 40),
                        ),
                        button(
                          buttonBgColor: Colors.brown[300],
                          text: '*',
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          size: const Size(60, 60),
                        ),
                        button(
                          buttonBgColor: Colors.amber,
                          text: '-',
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          size: const Size(60, 60),
                        ),
                        button(
                          buttonBgColor: Colors.amber,
                          text: '+',
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          size: const Size(60, 98),
                        ),
                        button(
                          text: '=',
                          buttonBgColor: Colors.amber,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          size: const Size(60, 98),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
