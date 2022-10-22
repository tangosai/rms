import 'package:flutter/material.dart';

class ReportsScreen extends StatefulWidget {
  const ReportsScreen({super.key});

  @override
  State<ReportsScreen> createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          // appBar: AppBar(
          //   title: const Text("View All Reports"),
          //   centerTitle: true,
          //   backgroundColor: const Color(0xFF1a0a80),
          // bottom: TabBar(
          //   tabs: [
          //     Tab(
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: const [
          //           Icon(Icons.home),
          //           SizedBox(
          //             width: 10,
          //           ),
          //           Text("View reports")
          //         ],
          //       ),
          //     ),
          //     Tab(
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: const [
          //           Icon(Icons.home),
          //           SizedBox(
          //             width: 10,
          //           ),
          //           Text("Week wise reports")
          //         ],
          //       ),
          //     )
          //   ],
          // ),
          // ),

          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                      color: Color(0xFFe0e0e0),
                      borderRadius: BorderRadius.circular(25.0)),
                  child: TabBar(
                    indicator: BoxDecoration(
                      color: const Color(0xFF1a0a80),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black54,
                    tabs: [
                      Tab(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.description_outlined),
                            SizedBox(
                              width: 10,
                            ),
                            Text("View reports")
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.article_outlined),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Week wise reports")
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 20),
                            Table(
                              border: TableBorder.all(),
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                // const TableRow(children: [
                                //   Text("Week"),
                                //   Text("Date"),
                                //   Text("Worked hr"),
                                //   Text("Total hr")
                                // ]),
                                // const TableRow(children: [
                                //   Text("Cell1"),
                                //   Text("Cell2"),
                                //   Text("Cell3")
                                // ]),
                                // const TableRow(children: [
                                //   Text("Cell1"),
                                //   Text("Cell2"),
                                //   Text("Cell3")
                                // ]),
                              ],
                            )
                          ],
                        ),
                      ),
                      const Center(
                        child: Text("View week Reports"),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
