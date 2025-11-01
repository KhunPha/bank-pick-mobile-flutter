import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
    this.title = "All Cards",
    this.buttonLeft = false,
    this.buttonRight = false,
    this.iconDataLeft,
    this.iconDataRight,
    this.functionLeft,
    this.functionRight,
  });

  final String title;
  final bool buttonLeft;
  final bool buttonRight;
  final String? iconDataLeft;
  final String? iconDataRight;
  final VoidCallback? functionLeft;
  final VoidCallback? functionRight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // LEFT BUTTON
          if (buttonLeft)
            Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: functionLeft ?? () => Navigator.pop(context),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    iconDataLeft ?? "assets/angle-small-left.png",
                    width: 20,
                  ),
                ),
              ),
            ),

          // TITLE
          Center(
            child: Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          // RIGHT BUTTON
          if (buttonRight)
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: functionRight ?? () {},
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    iconDataRight ?? "assets/angle-small-right.png",
                    width: 20,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
