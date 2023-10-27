import 'package:ecommerce_app/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add any initialization tasks here (e.g., loading data, checking user authentication)
    // You can use Future.delayed to simulate a delay for the Splash screen
    Future.delayed(Duration(seconds: 3), () {
      // Navigate to the main screen or the first screen of your app
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => WelcomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Loading spinner using flutter_spinkit
            SpinKitFadingCircle(
              color: Colors.blue, // Change the color of the spinner
              size: 50.0, // Adjust the size of the spinner
            ),
            SizedBox(height: 20),
            // You can use an image or logo for your app here
            Image.asset("assets/logo.png", width: 150, height: 150),
            SizedBox(height: 20),
            Text(
              'My App',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
