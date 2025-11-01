import 'package:bankpick/screens/loan_screen.dart';
import 'package:bankpick/screens/send_money_screen.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  List<Map<String, dynamic>> paymentButtonData = [
    {
      "title": "Sent",
      "image": "assets/up-arrow.png",
      "route": SendMoneyScreen(),
    },
    {
      "title": "Receive",
      "image": "assets/down-arrow.png",
      "route": SendMoneyScreen(),
    },
    {
      "title": "Loan",
      "image": "assets/badge-dollar.png",
      "route": LoanScreen(),
    },
    {
      "title": "Topup",
      "image": "assets/money-income.png",
      "route": SendMoneyScreen(),
    },
  ];

  List<Map<String, dynamic>> transactionData = [
    {
      "title": "Apple Store",
      "subtitle": "Entertainment",
      "amount": "- \$5.99",
      "icon": "assets/apple.png",
      "tran_in": false,
    },
    {
      "title": "Spotify",
      "subtitle": "Music",
      "amount": "- \$12.99",
      "icon": "assets/spotify.png",
      "tran_in": false,
    },
    {
      "title": "Money Tranfer",
      "subtitle": "Transaction",
      "amount": "\$300.00",
      "icon": "assets/import.png",
      "tran_in": true,
    },
    {
      "title": "Grocery",
      "subtitle": "Shoping",
      "amount": "- \$88.00",
      "icon": "assets/trolley.png",
      "tran_in": false,
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
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ClipOval(
                        child: Image.network(
                          "https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=687",
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),

                      SizedBox(width: 15),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome back,",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[700],
                            ),
                          ),
                          SizedBox(height: 1),
                          Text(
                            "Tanya Myroniuk",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      shape: BoxShape.circle,
                    ),
                    padding: EdgeInsets.all(12),
                    child: Image.asset("assets/search.png", width: 20),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    // Card
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
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

                    SizedBox(height: 40),

                    // Button Payment
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: paymentButtonData.map((item) {
                          return Column(
                            children: [
                              GestureDetector(
                                onTap: () => Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    transitionDuration: const Duration(
                                      milliseconds: 400,
                                    ),
                                    pageBuilder:
                                        (
                                          context,
                                          animation,
                                          secondaryAnimation,
                                        ) => item["route"]!,
                                    transitionsBuilder:
                                        (
                                          context,
                                          animation,
                                          secondaryAnimation,
                                          child,
                                        ) {
                                          const begin = Offset(
                                            1.0,
                                            0.0,
                                          ); // slide from right
                                          const end = Offset.zero;
                                          const curve = Curves.easeOutCubic;

                                          final tween = Tween(
                                            begin: begin,
                                            end: end,
                                          ).chain(CurveTween(curve: curve));

                                          return SlideTransition(
                                            position: animation.drive(tween),
                                            child: child,
                                          );
                                        },
                                  ),
                                ),
                                child: Container(
                                  padding: EdgeInsets.all(18),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(item["image"]!, width: 30),
                                ),
                              ),
                              SizedBox(height: 8),

                              Text(
                                item["title"]!,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          );
                        }).toList(),
                      ),
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
                                        color: item["tran_in"]
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
