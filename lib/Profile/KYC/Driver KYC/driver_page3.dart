import 'package:authentication/Profile/KYC/Driver%20KYC/driver_page4.dart';
import 'package:authentication/components/my_button_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DriverPage3 extends StatefulWidget {
  const DriverPage3({Key? key}) : super(key: key);

  @override
  State<DriverPage3> createState() => _DriverPage3State();
}

class _DriverPage3State extends State<DriverPage3> {
  final _controllerdriverorgname = TextEditingController();
  final _controllerdrivershopname = TextEditingController();
  final _controllerdriverownername = TextEditingController();
  final _controllerdriverownerphoneno = TextEditingController();
  late String driverorgname;
  late String drivershopname;
  late String driverownername;
  late String driverownerphoneno;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 35, top: 30),
            child: const Text(
              'Organization Details',
              style: TextStyle(color: Colors.black, fontSize: 28),
              textAlign: TextAlign.left,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.only(left: 35, right: 35),
                child: Column(
                  children: [
                    const SizedBox(height: 20), //1
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Organization Name:',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    TextField(
                      controller: _controllerdriverorgname,
                      style: const TextStyle(),
                      //obscureText: true,
                      decoration: InputDecoration(
                        fillColor: const Color(0XFFe8f7f0),
                        filled: true,
                        hintText: "Name of org",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20), //2
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Workshop Name:',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    TextField(
                      controller: _controllerdrivershopname,
                      style: const TextStyle(),
                      // obscureText: true,
                      decoration: InputDecoration(
                        fillColor: const Color(0XFFe8f7f0),
                        filled: true,
                        hintText: "Shop Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20), //3
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Owner Name:',
                        textAlign: TextAlign.start,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    TextField(
                      controller: _controllerdriverownername,
                      style: const TextStyle(),
                      //obscureText: true,
                      decoration: InputDecoration(
                        fillColor: const Color(0XFFe8f7f0),
                        filled: true,
                        hintText: "Owner Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20), //4
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Owner Number:',
                        textAlign: TextAlign.start,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    TextField(
                      controller: _controllerdriverownerphoneno,
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      style: const TextStyle(),
                      //obscureText: true,
                      decoration: InputDecoration(
                        fillColor: const Color(0XFFe8f7f0),
                        filled: true,
                        hintText: "Phone No",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 120),
                    MyButton2(
                      text: 'Next',
                      onTap: () {
                        setState(() {
                          driverorgname = _controllerdriverorgname.text;
                          drivershopname = _controllerdrivershopname.text;
                          driverownername = _controllerdriverownername.text;
                          driverownerphoneno =
                              _controllerdriverownerphoneno.text;
                        });
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DriverPage4(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
