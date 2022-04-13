import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayfai_app/Component/Page%20Transition/slide_transition.dart';
import 'package:mayfai_app/Screens/Login%20Screen/login_screen.dart';
import 'package:mayfai_app/Screens/Register%20Screen/register_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double bodyHeight = MediaQuery.of(context).size.height -
        AppBar().preferredSize.height -
        MediaQuery.of(context).padding.top;
    double bodyWidth = MediaQuery.of(context).size.width;

    return Material(
      child: SafeArea(
        child: Container(
          width: bodyWidth,
          height: bodyHeight,
          padding: EdgeInsets.symmetric(
              horizontal: bodyWidth * 0.08, vertical: bodyHeight * 0.06),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image:
                      AssetImage("Images/LandingScreen/landingScreenBg.png"))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "Images/LandingScreen/landingScreenLogo.png",
                fit: BoxFit.contain,
              ),
              SizedBox(
                height: bodyHeight * 0.04,
              ),
              Text("Manage Your Financial \n(MAYFAI)",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Color(0xFF404040),
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  )),
              SizedBox(
                height: bodyHeight * 0.03,
              ),
              Text(
                "MAYFAI merupakan aplikasi mobile yang membantu pengguna dalam memanajemen keuangan, serta memberikan wawasan terkait ekonomi dan finansial.",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Color(0xFF404040),
                        fontSize: 13,
                        fontWeight: FontWeight.normal)),
              ),
              SizedBox(
                height: bodyHeight * 0.05,
              ),
              Container(
                width: bodyWidth * 0.8,
                height: bodyHeight * 0.06,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context, SlideRightRoute(page: const LoginScreen()));
                    },
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)))),
                    child: Text(
                      "Login",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 14,
                              color: Color(0xFFFFFFFF),
                              fontWeight: FontWeight.bold)),
                    )),
              ),
              SizedBox(
                height: bodyHeight * 0.03,
              ),
              Container(
                width: bodyWidth * 0.8,
                height: bodyHeight * 0.06,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          SlideRightRoute(page: const RegisterScreen()));
                    },
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)))),
                    child: Text(
                      "Register",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 14,
                              color: Color(0xFFFFFFFF),
                              fontWeight: FontWeight.bold)),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
