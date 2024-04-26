import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_appexpencemanager/mydrawer.dart';
import 'package:flutter_appexpencemanager/list.dart';
import 'package:google_fonts/google_fonts.dart';

class TranscationScreen extends StatefulWidget {
  const TranscationScreen({super.key});

  @override
  State<TranscationScreen> createState() => _TranscationScreenState();
}

class _TranscationScreenState extends State<TranscationScreen> {
  void showModelBottomSheet() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            // height: 400,
            // padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
            padding: MediaQuery.of(context).viewInsets,

            child: Container(
              margin: const EdgeInsets.fromLTRB(15, 35, 15, 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Date",
                      style: GoogleFonts.poppins(
                          fontSize: 13, fontWeight: FontWeight.w400)),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                      color: Color.fromRGBO(191, 189, 189, 1),
                    ))),
                  ),
                  const SizedBox(height: 15),
                  Text("Amount",
                      style: GoogleFonts.poppins(
                          fontSize: 13, fontWeight: FontWeight.w400)),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                      color: Color.fromRGBO(191, 189, 189, 1),
                    ))),
                  ),
                  const SizedBox(height: 15),
                  Text("Category",
                      style: GoogleFonts.poppins(
                          fontSize: 13, fontWeight: FontWeight.w400)),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                      color: Color.fromRGBO(191, 189, 189, 1),
                    ))),
                  ),
                  const SizedBox(height: 15),
                  Text("Description",
                      style: GoogleFonts.poppins(
                          fontSize: 13, fontWeight: FontWeight.w400)),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                      color: Color.fromRGBO(191, 189, 189, 1),
                    ))),
                  ),
                  const SizedBox(height: 15),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Center(
                      child: Container(
                        height: 40,
                        width: 123,
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(14, 161, 125, 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(67))),
                        child: Center(
                          child: Text(
                            "Add",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: Text(
          "June 2022",
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: const Color.fromRGBO(33, 33, 33, 1),
          ),
        ),
        actions: const [
          Icon(Icons.search),
          SizedBox(
            width: 25,
          ),
        ],
      ),
      body: ListView.separated(
        shrinkWrap: true,
        itemCount: list.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(
          height: 10,
        ),
        itemBuilder: (context, index) {
          return Container(
            height: 60,
            width: 360,
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 12, bottom: 8, right: 15, top: 9),
                      child: Container(
                        height: 41,
                        width: 41,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(list[index]["img"]),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 280,
                              child: Row(
                                children: [
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    list[index]["title"],
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const Spacer(),
                                  Row(
                                    // mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            SizedBox(
                                              child: Image.asset(
                                                  "assets/Subtract.png"),
                                            ),
                                            const SizedBox(
                                              width: 7,
                                            ),
                                            Text(
                                              "${list[index]["price"]}",
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
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              list[index]["description"],
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
                                list[index]["date"],
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
                                list[index]["time"],
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 20),
        height: 56,
        width: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(44),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              blurRadius: 4,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: FloatingActionButton(
          onPressed: () {
            showModelBottomSheet();
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(67),
          ),
          backgroundColor: Colors.white,
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 8, right: 5),
                child: const Icon(
                  Icons.add_circle_rounded,
                  color: Color.fromRGBO(14, 161, 125, 1),
                  size: 36,
                ),
              ),
              Text(
                "Add Transaction ",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(37, 37, 37, 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
