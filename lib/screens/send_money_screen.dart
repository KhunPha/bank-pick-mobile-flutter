import 'package:bankpick/widgets/app_bar_widget.dart';
import 'package:bankpick/widgets/card_widget.dart';
import 'package:bankpick/widgets/custom_text_field_widget.dart';
import 'package:flutter/material.dart';

class SendMoneyScreen extends StatefulWidget {
  const SendMoneyScreen({super.key});

  @override
  State<SendMoneyScreen> createState() => _SendMoneyScreenState();
}

class _SendMoneyScreenState extends State<SendMoneyScreen> {
  List<Map<String, dynamic>> cardData = [
    {
      "cardNumber": "4562 1122 3595 7852",
      "cardHolder": "AR Jonson",
      "expiryDate": "12/2025",
      "cvv": "6986",
      "cardType": 2,
    },
    {
      "cardNumber": "4562 1122 3595 7852",
      "cardHolder": "AR Jonson",
      "expiryDate": "12/2025",
      "cvv": "6986",
      "cardType": 1,
    },
    {
      "cardNumber": "4562 1122 4595 7852",
      "cardHolder": "AR Jonson",
      "expiryDate": "12/2025",
      "cvv": "6986",
      "cardType": 1,
    },
    {
      "cardNumber": "4562 1122 3595 7852",
      "cardHolder": "AR Jonson",
      "expiryDate": "12/2025",
      "cvv": "6986",
      "cardType": 1,
    },
    {
      "cardNumber": "4562 1122 3595 7852",
      "cardHolder": "AR Jonson",
      "expiryDate": "12/2025",
      "cvv": "6986",
      "cardType": 1,
    },
  ];

  List<Map<String, String>> userListData = [
    {
      "profile":
          "https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=687",
      "name": "Yamilet",
    },
    {
      "profile":
          "https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=687",
      "name": "John",
    },
    {
      "profile":
          "https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=687",
      "name": "Sarah",
    },
    {
      "profile":
          "https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=687",
      "name": "Sarah",
    },
    {
      "profile":
          "https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=687",
      "name": "Sarah",
    },
    {
      "profile":
          "https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=687",
      "name": "Sarah",
    },
    {
      "profile":
          "https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=687",
      "name": "Sarah",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBarWidget(
              title: "Send Money",
              buttonLeft: true,
              functionLeft: () => Navigator.pop(context),
            ),
            SizedBox(height: 20),

            // Send to section
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(
                      height: 248,
                      child: PageView.builder(
                        itemCount: cardData.length,
                        itemBuilder: (context, index) {
                          final item = cardData[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20.0,
                            ),
                            child: CardWidget(
                              cardNumber: item["cardNumber"],
                              cardHolder: item["cardHolder"],
                              expiryDate: item["expiryDate"],
                              cvv: item["cvv"],
                              cardType: item["cardType"],
                            ),
                          );
                        },
                      ),
                    ),

                    SizedBox(height: 40),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(
                            color: Colors.grey[300]!,
                            width: 1,
                          ),
                        ),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Sent to",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey[600],
                                    fontSize: 17,
                                  ),
                                ),

                                SizedBox(height: 12),

                                Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(18),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Colors.blue,
                                          width: 2,
                                        ),
                                      ),
                                      child: Image.asset(
                                        "assets/plus.png",
                                        width: 22,
                                        color: Colors.blue,
                                      ),
                                    ),

                                    SizedBox(height: 2),

                                    Text(
                                      "Add",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            Flexible(
                              child: SizedBox(
                                height: 118, // set height for horizontal scroll
                                child: ListView.builder(
                                  itemCount: userListData.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    final item = userListData[index];
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0,
                                      ),
                                      child: Column(
                                        children: [
                                          Text(""),
                                          SizedBox(height: 12),
                                          CircleAvatar(
                                            radius: 30,
                                            backgroundImage: NetworkImage(
                                              item["profile"]!,
                                            ),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(item["name"]!),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 40),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 24,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(
                            color: Colors.grey[300]!,
                            width: 1,
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Enter Your Amount",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey[600],
                                  ),
                                ),

                                Text(
                                  "Change Currency?",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: const Color.fromARGB(
                                      255,
                                      255,
                                      91,
                                      79,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 12),

                            Row(
                              children: [
                                Text(
                                  "USD",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 26,
                                    color: Color(0xFF9BB2D4),
                                  ),
                                ),

                                SizedBox(width: 18),

                                Expanded(
                                  child: CustomTextFieldWidget(
                                    hint: "36.00",
                                    showBorder: false,
                                    textSize: 26,
                                    isPadding: false,
                                  ),
                                ),
                              ],
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
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue, // <--- button color
            padding: EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            "Send Money",
            style: TextStyle(fontSize: 18, color: Colors.white), // text color
          ),
        ),
      ),
    );
  }
}
