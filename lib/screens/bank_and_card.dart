import 'package:bankpick/screens/add_new_card_screen.dart';
import 'package:bankpick/widgets/app_bar_widget.dart';
import 'package:bankpick/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class BankAndCard extends StatefulWidget {
  const BankAndCard({super.key});

  @override
  State<BankAndCard> createState() => _BankAndCardState();
}

class _BankAndCardState extends State<BankAndCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Header
            AppBarWidget(
              title: "All Cards",
              buttonLeft: true,
              iconDataLeft: "assets/angle-small-left.png",
              functionLeft: () => Navigator.pop(context),
            ),

            SizedBox(height: 20),

            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            CardWidget(
                              cardNumber: "4562 1122 4595 7852",
                              cardHolder: "Lanh Sopha",
                              expiryDate: "12/2028",
                              cvv: "123",
                              cardType: 1,
                            ),
                            SizedBox(height: 25),
                            CardWidget(
                              cardNumber: "4562 1122 4595 7852",
                              cardHolder: "Lanh Sopha",
                              expiryDate: "12/2028",
                              cvv: "123",
                              cardType: 2,
                            ),
                            SizedBox(height: 25),
                            CardWidget(
                              cardNumber: "4562 1122 4595 7852",
                              cardHolder: "Lanh Sopha",
                              expiryDate: "12/2028",
                              cvv: "123",
                              cardType: 2,
                            ),
                            SizedBox(height: 25),
                            CardWidget(
                              cardNumber: "4562 1122 4595 7852",
                              cardHolder: "Lanh Sopha",
                              expiryDate: "12/2028",
                              cvv: "123",
                              cardType: 2,
                            ),
                            SizedBox(height: 25),
                            CardWidget(
                              cardNumber: "4562 1122 4595 7852",
                              cardHolder: "Lanh Sopha",
                              expiryDate: "12/2028",
                              cvv: "123",
                              cardType: 2,
                            ),
                            SizedBox(height: 25),
                            CardWidget(
                              cardNumber: "4562 1122 4595 7852",
                              cardHolder: "Lanh Sopha",
                              expiryDate: "12/2028",
                              cvv: "123",
                              cardType: 2,
                            ),
                            SizedBox(height: 70),
                          ],
                        ),
                      ),
                    ),

                    Positioned(
                      bottom: 10,
                      left: 0,
                      right: 0,
                      child: ElevatedButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddNewCardScreen(),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue, // Button color
                          foregroundColor: Colors.white, // Text color
                          padding: EdgeInsets.symmetric(
                            vertical: 15,
                          ), // Optional: button height
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              10,
                            ), // Optional: rounded corners
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Add Card",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            SizedBox(width: 15),

                            Image.asset(
                              "assets/plus.png",
                              width: 15,
                              color: Colors.white,
                            ),
                          ],
                        ),
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
