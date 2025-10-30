import 'package:bankpick/util/amount_slider_card.dart';
import 'package:flutter/material.dart';

class MyCardTab extends StatefulWidget {
  const MyCardTab({super.key});

  @override
  State<MyCardTab> createState() => _MyCardTabState();
}

class _MyCardTabState extends State<MyCardTab> {
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
            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Center(
                    child: Text(
                      "My Cards",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.add_outlined),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            // Current Balance
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    // Card
                    Padding(
                      padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Color(0xFF25253D),
                          borderRadius: BorderRadius.circular(18),
                          image: DecorationImage(
                            image: AssetImage("assets/worldmap.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset("assets/sim.png"),
                                Image.asset(
                                  "assets/contactless.png",
                                  color: Color(0xFF4B5B98),
                                  width: 25,
                                ),
                              ],
                            ),

                            SizedBox(height: 30),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "4562",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                        0.08,
                                    color: Colors.white,
                                  ),
                                ),

                                Text(
                                  "1122",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                        0.08,
                                    color: Colors.white,
                                  ),
                                ),

                                Text(
                                  "4595",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                        0.08,
                                    color: Colors.white,
                                  ),
                                ),

                                Text(
                                  "7852",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                        0.08,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 10),

                            Text(
                              "AR Jonson",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),

                            SizedBox(height: 20),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Expiry Date",
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Color(0xFFA2A2A7),
                                          ),
                                        ),

                                        SizedBox(height: 2),

                                        Text(
                                          "12/2028",
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),

                                    SizedBox(width: 50),

                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "CVV",
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Color(0xFFA2A2A7),
                                          ),
                                        ),

                                        SizedBox(height: 2),

                                        Text(
                                          "6986",
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),

                                Column(
                                  children: [
                                    Image.asset("assets/master_logo.png"),
                                    SizedBox(height: 3),
                                    Text(
                                      "Mastercard",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 15),

                    // Transaction
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
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

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      width: double.infinity,
                      decoration: BoxDecoration(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Monthly spending limit",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 23,
                            ),
                          ),
                          SizedBox(height: 15),
                          
                          AmountSliderCard(),
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
