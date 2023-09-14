import 'package:flutter/material.dart';

class LoanEmiCalculatotr extends StatefulWidget {
  const LoanEmiCalculatotr({super.key});

  @override
  State<LoanEmiCalculatotr> createState() => _LoanEmiCalculatotrState();
}

class _LoanEmiCalculatotrState extends State<LoanEmiCalculatotr> {
  double _currentValue = 0;
  double _currentMonth = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('LOAN EMI CALCULATOR'),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 20,
                ),

                //maximum funding  container1 start

                child: Container(
                  height: 110,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 21, 21, 21),
                    border: Border.all(
                      color: Colors.yellowAccent,
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Maximum Funding',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        '8,00,000',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'ICICI Business Loan',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            '*Terms & Conditions',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),

            //maximum funding container1 end

            Padding(
              padding: const EdgeInsets.only(
                bottom: 10,
                left: 20,
                right: 20,
              ),

              //loan amount container2 start

              child: Container(
                // height: 110,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 21, 21, 21),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 5,
                        left: 20,
                      ),
                      child: Text(
                        'Loan Amount',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(
                        _currentValue.toString(),
                        style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Slider(
                      value: _currentValue,
                      max: 20000,
                      min: 0,
                      divisions: 20,
                      activeColor: Colors.yellowAccent[700],
                      inactiveColor: Colors.white,
                      onChanged: (value) {
                        setState(
                          () {
                            _currentValue = value;
                          },
                        );
                      },
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '₹20,000',
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            //loan amount container2 end

            Padding(
              padding: const EdgeInsets.only(
                bottom: 10,
                left: 20,
                right: 20,
              ),

              // loan period container3 start

              child: Container(
                // height: 110,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 21, 21, 21),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 5,
                        left: 20,
                      ),
                      child: Text(
                        'Loan Period',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Row(
                        children: [
                          Text(
                            '${_currentMonth.toString()} Months',
                            style: const TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          // const SizedBox(
                          //   width: 5,
                          // ),
                          // const Text(
                          //   ' Months',
                          //   style: TextStyle(
                          //     fontSize: 20,
                          //     color: Colors.white,
                          //     fontWeight: FontWeight.bold,
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                    Slider(
                      value: _currentMonth,
                      max: 12,
                      min: 0,
                      divisions: 12,
                      activeColor: Colors.yellowAccent[700],
                      inactiveColor: Colors.white,
                      onChanged: (value) {
                        setState(() {
                          _currentMonth = value;
                        });
                      },
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '6 Months',
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        Text(
                          '18 Months',
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            //loan period container3 end

            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 20,
                right: 20,
              ),

              // installment container4 start

              child: Container(
                // height: 200,
                padding: EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 21, 21, 21),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Estimeted monthly installments',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Text(
                        '5,000',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      'Installment fees may change according to the result of the  verification of physical conditions of the vehicle at the  branch office.',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 12),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 80,
                              vertical: 10,
                            ),
                            backgroundColor: Colors.yellowAccent[700],
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'APPLY LOAN',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
