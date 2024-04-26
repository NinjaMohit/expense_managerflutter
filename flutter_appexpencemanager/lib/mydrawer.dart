import 'package:flutter/material.dart';
import 'package:flutter_appexpencemanager/category.dart';
import 'package:flutter_appexpencemanager/graph.dart';
import 'package:flutter_appexpencemanager/transactionscreen.dart';
import 'package:flutter_appexpencemanager/trash.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 230,
      child: Padding(
        padding: const EdgeInsets.only(left: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 45,
            ),
            Text("Expense Manager",
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.w600)),
            const SizedBox(
              height: 4,
            ),
            Text(
              "Saves All Your Transactions",
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(0, 0, 0, 0.5),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const TranscationScreen()));
              },
              child: Container(
                height: 40,
                width: 184,
                decoration:
                    const BoxDecoration(color: Color.fromRGBO(0, 0, 0, 0)),
                child: Row(
                  children: [
                    Image.asset("assets/Transactions.png"),
                    const SizedBox(
                      width: 10,
                    ),
                    Text("Transaction",
                        style: GoogleFonts.poppins(
                            fontSize: 18, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Graph()));
              },
              child: Container(
                height: 40,
                width: 184,
                decoration:
                    const BoxDecoration(color: Color.fromRGBO(0, 0, 0, 0)),
                child: Row(
                  children: [
                    Image.asset("assets/graph.png"),
                    const SizedBox(
                      width: 10,
                    ),
                    Text("Graph",
                        style: GoogleFonts.poppins(
                            fontSize: 18, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Category()));
              },
              child: Container(
                height: 40,
                width: 184,
                decoration:
                    const BoxDecoration(color: Color.fromRGBO(0, 0, 0, 0)),
                child: Row(
                  children: [
                    Image.asset("assets/category.png"),
                    const SizedBox(
                      width: 10,
                    ),
                    Text("Category",
                        style: GoogleFonts.poppins(
                            fontSize: 18, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Trash()));
              },
              child: Container(
                height: 40,
                width: 184,
                decoration:
                    const BoxDecoration(color: Color.fromRGBO(0, 0, 0, 0)),
                child: Row(
                  children: [
                    Image.asset("assets/trash.png"),
                    const SizedBox(
                      width: 15,
                    ),
                    Text("Trash",
                        style: GoogleFonts.poppins(
                            fontSize: 18, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 40,
                width: 184,
                decoration:
                    const BoxDecoration(color: Color.fromRGBO(0, 0, 0, 0)),
                child: Row(
                  children: [
                    Image.asset("assets/aboutus.png"),
                    const SizedBox(
                      width: 13,
                    ),
                    Text("About Us",
                        style: GoogleFonts.poppins(
                            fontSize: 18, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
