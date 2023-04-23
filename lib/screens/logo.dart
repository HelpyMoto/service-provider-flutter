import 'package:ServiceProviderApp/screens/onboarding_page.dart';
import 'package:ServiceProviderApp/screens/ragister.dart';
import 'package:ServiceProviderApp/screens/signup_form.dart';
import 'package:flutter/material.dart';
import 'package:ServiceProviderApp/drawer_screens/drawer_screen.dart';

class Logo extends StatefulWidget {
  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  double buttonWidth = 200; // initial width of the button
  double buttonHeight = 50; // initial height of the button

  void _startAnimation() {
    // animate the button when pressed
    setState(() {
      buttonWidth = 0; // set new width of the button
      buttonHeight = 0; // set new height of the button
    });
    Future.delayed(Duration(milliseconds: 200), () {
      // navigate to the next screen after a short delay
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => RegistrationFormScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'lib/assets/images/logo.png',
              width: MediaQuery.of(context).size.width / 0.5,
            ),
            SizedBox(height: 205),
            AnimatedContainer(
              width: buttonWidth,
              height: buttonHeight,
              duration: Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              child: ElevatedButton(
                child: Text(
                  'Let\'s Go!',
                  style: TextStyle(fontSize: 20.0),
                ),
                onPressed: () {
                  _startAnimation();
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color.fromARGB(255, 255, 255, 255)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: BorderSide(color: Color.fromARGB(255, 25, 219, 116)),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
