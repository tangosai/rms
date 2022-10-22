import 'package:pie_chart/pie_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  Map<String, double> dataMap = {
    "Campus Connect": 5,
    "GITAM New Website": 3,
    "GIMSR website": 2,
    "PRS 2.0": 2,
    "Payment module for conferences and workshops(University Level)": 4,
    "Dental College journals Website": 6,
  };
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 25),
                RichText(
                  text: const TextSpan(
                      text: "Hii,",
                      style: TextStyle(
                          fontSize: 22,
                          color: Color(0xFF111111),
                          fontWeight: FontWeight.w400),
                      children: [
                        TextSpan(
                            text: "Sai Kumar Dontham",
                            style: TextStyle(
                                fontSize: 24,
                                color: Color(0xFF1a0a80),
                                fontWeight: FontWeight.w600)),
                      ]),
                ),
                // Text(
                //   "Hi Sai Kumar Dontham",
                //   style: TextStyle(
                //     fontSize: 24,
                //     fontWeight: FontWeight.w600,
                //     color: Color(0xFF1a0a80),
                //   ),
                // ),
                const SizedBox(height: 5),
                const Text(
                  "Welcome to Dashboard!",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 20),
                //Today Work Report
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 20.0,
                          spreadRadius: 0.1,
                        )
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Today Work Report",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 20),
                      PieChart(
                        dataMap: dataMap,
                        chartRadius: MediaQuery.of(context).size.width / 1.5,
                        // animationDuration: const Duration(milliseconds: 800),
                        legendOptions: const LegendOptions(
                          showLegendsInRow: true,
                          legendPosition: LegendPosition.bottom,
                          showLegends: true,
                          legendTextStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                        chartValuesOptions: const ChartValuesOptions(
                          showChartValueBackground: true,
                          showChartValues: true,
                          showChartValuesInPercentage: false,
                          showChartValuesOutside: false,
                          decimalPlaces: 0,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                //Weekly Reports
                Container(
                  width: double.infinity,
                  height: 300,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 20.0,
                          spreadRadius: 0.1,
                        )
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Weekly reports",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
