import 'package:bankpick/widgets/app_bar_widget.dart';
import 'package:bankpick/widgets/card_widget.dart';
import 'package:bankpick/widgets/custom_text_field_widget.dart';
import 'package:flutter/material.dart';

class AddNewCardScreen extends StatefulWidget {
  const AddNewCardScreen({super.key});

  @override
  State<AddNewCardScreen> createState() => _AddNewCardScreenState();
}

class _AddNewCardScreenState extends State<AddNewCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBarWidget(
              title: "Add New Card",
              buttonLeft: true,
              functionLeft: () => Navigator.pop(context),
            ),

            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CardWidget(
                      cardNumber: "4562 1122 4595 7852",
                      cardHolder: "Lanh Sopha",
                      expiryDate: "12/2028",
                      cvv: "123",
                      cardType: 2,
                    ),
                    const SizedBox(height: 30),
                    Text(
                      "Cardholder Name",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    const SizedBox(height: 8),
                    CustomTextFieldWidget(
                      icon: "assets/circle-user.png",
                      hint: "Cardholder Name",
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        // Expiry Date Field
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Expiry Date",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 8),
                              CustomTextFieldWidget(hint: "MM/YY"),
                            ],
                          ),
                        ),

                        const SizedBox(width: 16), // spacing between fields
                        // CVV Field
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CVV",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 8),
                              CustomTextFieldWidget(hint: "123"),
                            ],
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    Text(
                      "Card Number",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),

                    SizedBox(height: 8),

                    CustomTextFieldWidget(
                      icon: "assets/credit-card.png",
                      hint: "4562 1122 4595 7852",
                      suffixIcon: "assets/master_logo.png",
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
