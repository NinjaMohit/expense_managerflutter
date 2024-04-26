import 'package:flutter/material.dart';
import 'package:flutter_appexpencemanager/loginscreen.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.only(top: 75),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 145, right: 145),
                child: SizedBox(
                  child: Image.asset(
                    "assets/Group 77.png",
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Create your Account",
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 25),
                    Container(
                      padding: const EdgeInsets.only(left: 12, bottom: 8),
                      height: 45,
                      width: 280,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.15),
                              offset: Offset(0, 3),
                              blurRadius: 5,
                              spreadRadius: 0),
                        ],
                      ),
                      child: TextFormField(
                        keyboardAppearance: null,
                        showCursor: false,
                        decoration: InputDecoration(
                            hintText: "Name",
                            hintStyle: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(0, 0, 0, 0.4),
                                  fontSize: 12),
                            ),
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.only(left: 12, bottom: 8),
                      height: 45,
                      width: 280,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.15),
                              offset: Offset(0, 3),
                              blurRadius: 5,
                              spreadRadius: 0),
                        ],
                      ),
                      child: TextFormField(
                        showCursor: false,
                        decoration: InputDecoration(
                            hintText: "Username",
                            hintStyle: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(0, 0, 0, 0.4),
                                  fontSize: 12),
                            ),
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.only(left: 12, bottom: 8),
                      height: 45,
                      width: 280,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.15),
                              offset: Offset(0, 3),
                              blurRadius: 5,
                              spreadRadius: 0),
                        ],
                      ),
                      child: TextFormField(
                        showCursor: false,
                        decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(0, 0, 0, 0.4),
                                  fontSize: 12),
                            ),
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.only(left: 12, bottom: 8),
                      height: 45,
                      width: 280,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.15),
                              offset: Offset(0, 3),
                              blurRadius: 5,
                              spreadRadius: 0),
                        ],
                      ),
                      child: TextFormField(
                        showCursor: false,
                        decoration: InputDecoration(
                            hintText: "Confirm Password",
                            hintStyle: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(0, 0, 0, 0.4),
                                  fontSize: 12),
                            ),
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 45,
                        width: 280,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(14, 161, 125, 1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          "Sign Up",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 140,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account ?",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: const Color.fromRGBO(0, 0, 0, 0.6)),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (conetxt) => const LoginScreen()));
                    },
                    child: Text(
                      " Sign In",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: const Color.fromRGBO(14, 161, 125, 1)),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
