import 'package:flutter/material.dart';
import 'package:flutter_appexpencemanager/mydrawer.dart';
import 'package:flutter_appexpencemanager/list.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

class Graph extends StatefulWidget {
  const Graph({super.key});

  @override
  State<Graph> createState() => _GraphState();
}

class _GraphState extends State<Graph> {
  Map<String, double> map = {
    "food": 650,
    "medicine": 500,
    "fuel": 600,
    "entertainment": 475,
    "shopping": 325
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: Text(
          "Graphs",
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: const Color.fromRGBO(33, 33, 33, 1),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 15, top: 20),
        child: Column(
          children: [
            PieChart(
              chartValuesOptions:
                  const ChartValuesOptions(showChartValues: false),
              dataMap: map,
              chartType: ChartType.ring,
              colorList: Colors.accents,
              animationDuration: const Duration(seconds: 1),
              centerWidget: Column(
                children: [
                  Text(
                    "Total",
                    style: GoogleFonts.poppins(
                        fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "₹2550",
                    style: GoogleFonts.poppins(
                        fontSize: 17, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              legendOptions: const LegendOptions(showLegends: true),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                      height: 40,
                      width: 284,
                      padding: const EdgeInsets.only(left: 10, right: 25),
                      margin: const EdgeInsets.only(top: 14, bottom: 14),
                      child: Row(
                        children: [
                          Image.asset(list[index]["img"]),
                          const SizedBox(width: 20),
                          Text(list[index]["title"],
                              style: GoogleFonts.poppins(
                                  fontSize: 17, fontWeight: FontWeight.w400)),
                          const Spacer(),
                          Text(
                            "₹${list[index]["price"]}",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500, fontSize: 15),
                          ),
                        ],
                      ));
                },
                itemCount: 5,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Total",
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w400)),
                  Text("₹2550",
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w800)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
