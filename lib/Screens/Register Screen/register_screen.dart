import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayfai_app/Component/Page%20Transition/slide_transition.dart';
import 'package:mayfai_app/nav_bar.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController birthDateController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

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
          padding: EdgeInsets.only(
              top: bodyHeight * 0.03,
              left: bodyWidth * 0.07,
              right: bodyWidth * 0.07),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                      "Images/RegisterScreen/registerScreenBg.png"))),
          child: Column(
            children: [
              Container(
                width: bodyWidth * 0.34,
                height: bodyHeight * 0.18,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    gradient: const LinearGradient(
                        colors: [
                          Color(0xFF6DBFFA),
                          Color.fromARGB(255, 29, 156, 240)
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
                child: Center(
                    child: Image.asset("Images/LoginScreen/mayfaiLogo.png")),
              ),
              SizedBox(
                height: bodyHeight * 0.03,
              ),
              Text(
                "Register",
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 18,
                        color: Color(0xFF404040),
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: bodyHeight * 0.01,
              ),
              Text(
                "Masukkan Data Diri Anda!",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 14,
                        color: Color(0xFF404040),
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: bodyHeight * 0.02,
              ),
              Form(
                  key: formKey,
                  child: Column(
                    children: [
                      Container(
                        width: bodyWidth * 0.9,
                        child: TextFormField(
                          controller: nameController,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(
                                      color: Color(0xFF20A0FD), width: 2)),
                              hintText: "Nama",
                              hintStyle: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 14, color: Color(0xFF20A0FD)))),
                        ),
                      ),
                      SizedBox(
                        height: bodyHeight * 0.03,
                      ),
                      Container(
                        width: bodyWidth * 0.9,
                        child: TextFormField(
                          controller: birthDateController,
                          keyboardType: TextInputType.datetime,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(
                                      color: Color(0xFF20A0FD), width: 2)),
                              hintText: "Tanggal Lahir",
                              hintStyle: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 14, color: Color(0xFF20A0FD)))),
                        ),
                      ),
                      SizedBox(
                        height: bodyHeight * 0.03,
                      ),
                      Container(
                        width: bodyWidth * 0.9,
                        child: TextFormField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(
                                      color: Color(0xFF20A0FD), width: 2)),
                              hintText: "Email",
                              hintStyle: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 14, color: Color(0xFF20A0FD)))),
                        ),
                      ),
                      SizedBox(
                        height: bodyHeight * 0.03,
                      ),
                      Container(
                        width: bodyWidth * 0.9,
                        child: TextFormField(
                          controller: usernameController,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(
                                      color: Color(0xFF20A0FD), width: 2)),
                              hintText: "Username",
                              hintStyle: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 14, color: Color(0xFF20A0FD)))),
                        ),
                      ),
                      SizedBox(
                        height: bodyHeight * 0.03,
                      ),
                      Container(
                        width: bodyWidth * 0.9,
                        child: TextFormField(
                          controller: passwordController,
                          obscureText: true,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(
                                      color: Color(0xFF20A0FD), width: 2)),
                              hintText: "Password",
                              hintStyle: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 14, color: Color(0xFF20A0FD)))),
                        ),
                      ),
                      SizedBox(
                        height: bodyHeight * 0.02,
                      ),
                      Container(
                        width: bodyWidth * 0.9,
                        height: bodyHeight * 0.06,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context,
                                  SlideRightRoute(page: const NavBar()));
                            },
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5)))),
                            child: Text(
                              "Register",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFFFFFFFF),
                                      fontWeight: FontWeight.bold)),
                            )),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
