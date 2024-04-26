import 'package:flutter/material.dart';
import 'package:flutter_appexpencemanager/mydrawer.dart';
import 'package:flutter_appexpencemanager/list.dart';
import 'package:google_fonts/google_fonts.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  Future<dynamic> showMyDialogue() async {
    return await showDialog(
        context: context,
        builder: (BuildContext builder) {
          return AlertDialog(
              alignment: Alignment.center,
              title: Text(
                "Delete Category",
                style: GoogleFonts.poppins(
                    fontSize: 16, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
              content: Text(
                "Are you sure you want to delete the selected category",
                style: GoogleFonts.poppins(
                    fontSize: 12, fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 35,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromRGBO(14, 161, 125, 1)),
                        child: Center(
                          child: Text(
                            "Delete",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 35,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromRGBO(140, 128, 128, 0.2)),
                        child: Center(
                          child: Text(
                            "Cancel",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ]);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: Text(
          "Categories",
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: const Color.fromRGBO(33, 33, 33, 1),
          ),
        ),
        // actions: [
        //   Image.asset(
        //     "assets/search.png",
        //     height: 40,
        //     width: 40,
        //   ),
        //   const SizedBox(
        //     width: 15,
        //   )
        // ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 25, crossAxisSpacing: 25),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onLongPress: () async {
                    await showMyDialogue();
                  },
                  child: Container(
                    padding: const EdgeInsets.only(top: 17),
                    height: 145,
                    width: 140,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.15),
                          offset: Offset(0, 5),
                          spreadRadius: 2,
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: Column(children: [
                        Image.asset(
                          list[index]["img"],
                          height: 74,
                          width: 74,
                        ),
                        // SvgPicture.asset('assets/food.svg'),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          list[index]["title"],
                          style: GoogleFonts.poppins(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        )
                      ]),
                    ),
                  ),
                );
              },
              itemCount: 4,
            ),
          ),
        ],
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return Container(
                padding: MediaQuery.of(context).viewInsets,
                child: Container(
                  margin: const EdgeInsets.fromLTRB(15, 35, 15, 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Column(
                          children: [
                            Container(
                                height: 70,
                                width: 70,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(140, 128, 128, 0.2),
                                ),
                                margin:
                                    const EdgeInsets.only(bottom: 5, top: 10),
                                child: Image.asset('assets/Group 45.png')),
                            Text("Add",
                                style: GoogleFonts.poppins(
                                    fontSize: 13, fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ),
                      Text("Image URL",
                          style: GoogleFonts.poppins(
                              fontSize: 13, fontWeight: FontWeight.w400)),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 60,
                        width: 360,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Enter URL",
                              hintStyle: GoogleFonts.poppins(
                                color: const Color.fromRGBO(0, 0, 0, 0.4),
                              ),
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Color.fromRGBO(191, 189, 189, 1),
                              ))),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text("Category",
                          style: GoogleFonts.poppins(
                              fontSize: 13, fontWeight: FontWeight.w400)),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 60,
                        width: 360,
                        decoration: const BoxDecoration(),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: "Enter category name",
                              hintStyle: GoogleFonts.poppins(
                                color: const Color.fromRGBO(0, 0, 0, 0.4),
                              ),
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Color.fromRGBO(191, 189, 189, 1),
                              ))),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Center(
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
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Container(
            padding: const EdgeInsets.fromLTRB(0, 10, 5, 10),
            height: 56,
            width: 170,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(67)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    offset: Offset(0, 4),
                    blurRadius: 4)
              ],
            ),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 8, right: 5),
                  child: const Icon(
                    Icons.add_circle_sharp,
                    size: 35,
                    color: Color.fromRGBO(14, 161, 125, 1),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "Add Category",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(37, 37, 37, 1),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
