import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_appexpencemanager/loginscreen.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(108, 300, 108, 0),
            height: 134,
            width: 134,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(234, 238, 235, 1),
            ),
            child: Image.asset("assets/Group 77.png"),
          ),
          const Spacer(),
          Text(
            'Expense Manager',
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 19),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const LoginScreen()));
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
                "Lets Starts",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
