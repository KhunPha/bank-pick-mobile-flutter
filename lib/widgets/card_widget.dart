import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

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
                "4562",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: MediaQuery.of(context).size.width * 0.08,
                  color: Colors.white,
                ),
              ),

              Text(
                "1122",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: MediaQuery.of(context).size.width * 0.08,
                  color: Colors.white,
                ),
              ),

              Text(
                "4595",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: MediaQuery.of(context).size.width * 0.08,
                  color: Colors.white,
                ),
              ),

              Text(
                "7852",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: MediaQuery.of(context).size.width * 0.08,
                  color: Colors.white,
                ),
              ),
            ],
          ),

          SizedBox(height: 10),

          Text(
            "AR Jonson",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),

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
                        "12/2028",
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
                        "6986",
                        style: TextStyle(fontSize: 18, color: Colors.white),
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
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
