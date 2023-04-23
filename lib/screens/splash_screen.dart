import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double opacityLevel = 0.0; // initial opacity level of the progress indicator

  @override
  void initState() {
    super.initState();
    // start the animation after 3 seconds
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        opacityLevel =
            1.0; // set the opacity level to 1 to animate the progress indicator
      });
      Future.delayed(Duration(seconds: 3), () {
        Navigator.pushReplacementNamed(context, 'logo');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/assets/images/logo.png',
              width: MediaQuery.of(context).size.width / 2,
            ),
            SizedBox(height: 16.0),
            AnimatedOpacity(
              opacity: opacityLevel,
              duration: Duration(seconds: 1),
              child: CircularProgressIndicator(),
            ),
          ],
        ),
      ),
    );
  }
}
