import 'package:bankpick/util/line_chart.dart';
import 'package:bankpick/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';

class StatisticsTab extends StatefulWidget {
  const StatisticsTab({super.key});

  @override
  State<StatisticsTab> createState() => _StatisticsTabState();
}

class _StatisticsTabState extends State<StatisticsTab> {
  List<Map<String, String>> transactionData = [
    {
      "title": "Apple Store",
      "subtitle": "Entertainment",
      "amount": "- \$5.99",
      "icon": "assets/apple.png",
      "tran_in": "false",
    },
    {
      "title": "Spotify",
      "subtitle": "Music",
      "amount": "- \$12.99",
      "icon": "assets/spotify.png",
      "tran_in": "false",
    },
    {
      "title": "Money Tranfer",
      "subtitle": "Transaction",
      "amount": "\$300.00",
      "icon": "assets/import.png",
      "tran_in": "true",
    },
    {
      "title": "Grocery",
      "subtitle": "Shoping",
      "amount": "- \$88.00",
      "icon": "assets/trolley.png",
      "tran_in": "false",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Header
            AppBarWidget(
              title: "Staistics",
              buttonRight: true,
              iconDataRight: "assets/plus.png",
            ),

            SizedBox(height: 20),

            // Current Balance
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Column(
                      children: [
                        Text(
                          "Current Balance",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 23,
                            color: Colors.grey[500],
                          ),
                        ),

                        SizedBox(height: 5),

                        Text(
                          "\$8,545.00",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 10),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: LineChartUtil(),
                    ),

                    SizedBox(height: 15),

                    // Transaction
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Transaction",
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              Text(
                                "See All",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: const Color.fromARGB(
                                    255,
                                    42,
                                    120,
                                    255,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          Column(
                            children: transactionData.map((item) {
                              return Container(
                                decoration: BoxDecoration(),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 12,
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(15),
                                            decoration: BoxDecoration(
                                              color: Colors.grey[200],
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.asset(
                                              item["icon"]!,
                                              width: 30,
                                            ),
                                          ),

                                          SizedBox(width: 20),

                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                item["title"]!,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 19,
                                                ),
                                              ),

                                              Text(
                                                item["subtitle"]!,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14,
                                                  color: Colors.grey[500],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),

                                    Text(
                                      item["amount"]!,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: item["tran_in"] == "false"
                                            ? Colors.black
                                            : Color.fromARGB(255, 42, 120, 255),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
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
