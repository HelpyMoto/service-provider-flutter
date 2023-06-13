import 'package:authentication/Profile/KYC/Mechanic%20KYC/page5.dart';
import 'package:authentication/components/my_button_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
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
                      style: const TextStyle(),
                      obscureText: true,
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
                      style: const TextStyle(),
                      obscureText: true,
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
                      style: const TextStyle(),
                      obscureText: true,
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
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      style: const TextStyle(),
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: const Color(0XFFe8f7f0),
                        filled: true,
                        hintText: "Phone No",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 35),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 30),
            child: MyButton2(
              text: 'Next',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Page5(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}