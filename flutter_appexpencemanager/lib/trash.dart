import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_appexpencemanager/mydrawer.dart';
import 'package:flutter_appexpencemanager/list.dart';
import 'package:google_fonts/google_fonts.dart';

class Trash extends StatefulWidget {
  const Trash({super.key});

  @override
  State<Trash> createState() => _TrashState();
}

class _TrashState extends State<Trash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: Text(
          "Trash",
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: const Color.fromRGBO(33, 33, 33, 1),
          ),
        ),
      ),
      body: ListView.separated(
        shrinkWrap: true,
        itemCount: trashlist.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(
          height: 10,
        ),
        itemBuilder: (context, index) {
          return SizedBox(
            height: 58,
            width: 350,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 12, bottom: 15, right: 15, top: 2),
                      child: Container(
                        height: 41,
                        width: 41,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(trashlist[index]["img"]),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              trashlist[index]["title"],
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              width: 200,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    child: Image.asset("assets/Subtract.png"),
                                  ),
                                  const SizedBox(
                                    width: 7,
                                  ),
                                  Text(
                                    "${trashlist[index]["price"]}",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              trashlist[index]["description"],
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: const Color.fromRGBO(0, 0, 0, 0.8)),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 280,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                trashlist[index]["date"],
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: const Color.fromRGBO(0, 0, 0, 0.6),
                                ),
                              ),
                              Text(
                                " | ",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: const Color.fromRGBO(0, 0, 0, 0.6),
                                ),
                              ),
                              Text(
                                trashlist[index]["time"],
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: const Color.fromRGBO(0, 0, 0, 0.6),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
