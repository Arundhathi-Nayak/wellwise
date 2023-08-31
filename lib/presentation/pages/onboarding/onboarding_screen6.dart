import 'package:flutter/material.dart';
import 'package:wellwise/presentation/widgets/backdround_widget.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return BackgroundWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text:
                        'Manage Hydration,\nNutrition,Fitness\n Sleep and many more\nin one place',
                    style: GoogleFonts.poorStory().copyWith(
                      color: Color(0xFF0093E5),
                      fontSize: 28,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                child: Align(
                  alignment: Alignment.center,
                  child: Image(
                    image: AssetImage('assets/png/onboarding6.png'),
                    height: MediaQuery.of(context).size.height * 0.37,
                  ),
                ),
              ),
              SizedBox(height: 60),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                width: 280,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  gradient: LinearGradient(
                    colors: [Color(0xFF00F1FF), Color(0xFF399197)],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                child: ElevatedButton(
                  onPressed: () {
                    // Add your onPressed logic here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Let's Get Started",
                      style: GoogleFonts.aclonica().copyWith(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
