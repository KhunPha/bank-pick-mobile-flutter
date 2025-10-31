import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.cardNumber,
    required this.cardHolder,
    required this.expiryDate,
    required this.cvv,
    required this.cardType,
  });

  final String cardNumber;
  final String cardHolder;
  final String expiryDate;
  final String cvv;
  final int cardType;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                cardNumber.substring(0, 4),
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: MediaQuery.of(context).size.width * 0.08,
                  color: Colors.white,
                ),
              ),

              Text(
                cardNumber.substring(5, 9),
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: MediaQuery.of(context).size.width * 0.08,
                  color: Colors.white,
                ),
              ),

              Text(
                cardNumber.substring(10, 14),
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: MediaQuery.of(context).size.width * 0.08,
                  color: Colors.white,
                ),
              ),

              Text(
                cardNumber.substring(15, 19),
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: MediaQuery.of(context).size.width * 0.08,
                  color: Colors.white,
                ),
              ),
            ],
          ),

          SizedBox(height: 10),

          Text(cardHolder, style: TextStyle(color: Colors.white, fontSize: 16)),

          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                        expiryDate,
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ],
                  ),

                  SizedBox(width: 50),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                        cvv,
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),

              cardType == 1
                  ? Column(
                      children: [
                        Image.asset("assets/master_logo.png"),
                        SizedBox(height: 3),
                        Text(
                          "Mastercard",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    )
                  : Image.asset("assets/visa.png", width: 70),
            ],
          ),
        ],
      ),
    );
  }
}
