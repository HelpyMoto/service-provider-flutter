import 'package:authentication/components/my_button_2.dart';
import 'package:flutter/material.dart';

class MachanicPage4 extends StatefulWidget {
  const MachanicPage4({super.key});

  @override
  State<MachanicPage4> createState() => _MachanicPage4State();
}

class _MachanicPage4State extends State<MachanicPage4> {
  final _controllermachnaicaccholdername = TextEditingController();
  final _controllermachanicaccno = TextEditingController();
  final _controllermachanicownerifsccode = TextEditingController();
  late String machanicaccholdername;
  late String machanicaccno;
  late String machanicownerifsccode;
  var accountType = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  // color: Colors.black,
                  margin: const EdgeInsets.only(left: 35, right: 35),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          const Text(
                            'Enter Account Details',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              const Text(
                                'Account Type:',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(width: 10),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    backgroundColor: Colors.green[300],
                                    fixedSize: const Size.fromHeight(45)),
                                child: const Text('Savings'),
                                onPressed: () {
                                  accountType = 'Savings';
                                },
                              ),
                              const SizedBox(width: 10),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    backgroundColor: Colors.green[300],
                                    fixedSize: const Size.fromHeight(45)),
                                child: const Text('current'),
                                onPressed: () {
                                  accountType = 'Current';
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 20), //1
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Account Holder Name:',
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      TextField(
                        controller: _controllermachnaicaccholdername,
                        style: const TextStyle(),
                        //obscureText: true,
                        decoration: InputDecoration(
                            fillColor: const Color(0XFFe8f7f0),
                            filled: true,
                            hintText: "Name",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      const SizedBox(height: 20), //2
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Account Number:',
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      TextField(
                        controller: _controllermachanicaccno,
                        style: const TextStyle(),
                        //obscureText: true,
                        decoration: InputDecoration(
                            fillColor: const Color(0XFFe8f7f0),
                            filled: true,
                            hintText: "Account No.",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      const SizedBox(height: 20), //3
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'IFSC Code:',
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      TextField(
                        controller: _controllermachanicownerifsccode,
                        style: const TextStyle(),
                        //obscureText: true,
                        decoration: InputDecoration(
                            fillColor: const Color(0XFFe8f7f0),
                            filled: true,
                            hintText: "IFSC Code",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),

                      const SizedBox(height: 100),
                      MyButton2(
                        text: 'Submit',
                        onTap: () {
                          setState(() {
                            accountType;
                            machanicaccholdername =
                                _controllermachnaicaccholdername.text;
                            machanicaccno = _controllermachanicaccno.text;
                            machanicownerifsccode =
                                _controllermachanicownerifsccode.text;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
