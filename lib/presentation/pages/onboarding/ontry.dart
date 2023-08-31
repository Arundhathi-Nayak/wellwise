import 'package:flutter/material.dart';
import 'package:wellwise/presentation/widgets/backdround_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(MaterialApp(
      home: OnboardingScreen(),
      debugShowCheckedModeBanner: false,
    ));

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            Column(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  //margin: EdgeInsets.only(top: 100, left: 250, right: 25),
                  child:FloatingActionButton(
       
        child:Image.asset("assets/png/Component 14.png"),
      ), 
                     ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}


 floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child:Image.asset("assets/png/Component 14.png"),
      ), 