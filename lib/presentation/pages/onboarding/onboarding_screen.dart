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
              SizedBox(height: 50),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Welcome to\n',
                    style: GoogleFonts.aclonica().copyWith(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'WellWise',
                    style: GoogleFonts.aclonica().copyWith(
                      color: Color(0xFF0093E5),
                      fontSize: 30,
                    ),
                  ),
                ]),
              ),
              SizedBox(height: 30),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'We love to see you\nhere',
                  style: GoogleFonts.poorStory().copyWith(
                    color: Colors.black,
                    fontSize: 28,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                child: Align(
                    alignment: Alignment.center,
                    child: Image(
                        image: AssetImage('assets/png/onboarding1.png'),
                        height: MediaQuery.of(context).size.height * .37)),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "Let's Stay Healthy",
                    style: GoogleFonts.poorStory().copyWith(
                      color: Color(0xFF0093E5),
                      fontSize: 26,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(200, 0, 0, 80),
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  child: Ink(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [Color(0xFF00F1FF), Color(0xFF399197)],
                      ),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}
