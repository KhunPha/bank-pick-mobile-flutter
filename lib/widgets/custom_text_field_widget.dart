import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    super.key,
    this.icon,
    required this.hint,
    this.obscureText = false,
    this.suffixIcon,
    this.showBorder = true,
    this.textSize = 16,
    this.isPadding = true, // new boolean
  });

  final String? icon;
  final String hint;
  final bool obscureText;
  final String? suffixIcon;
  final bool showBorder;
  final double textSize;
  final bool isPadding; // control padding

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: isPadding
          ? EdgeInsets.symmetric(vertical: 8, horizontal: 12)
          : EdgeInsets.zero,
      decoration: BoxDecoration(
        border: showBorder
            ? Border(bottom: BorderSide(color: Colors.grey[200]!, width: 1))
            : null,
      ),
      child: Row(
        children: [
          if (icon != null)
            Image.asset(icon!, color: Colors.grey[500], width: 20),
          if (icon != null) const SizedBox(width: 15),
          Expanded(
            child: TextField(
              obscureText: obscureText,
              style: TextStyle(fontSize: textSize),
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: TextStyle(fontSize: textSize, color: Colors.grey),
                border: InputBorder.none,
                contentPadding: isPadding
                    ? EdgeInsets.symmetric(vertical: 12, horizontal: 10)
                    : EdgeInsets.zero,
              ),
            ),
          ),
          if (suffixIcon != null) Image.asset(suffixIcon!, width: 30),
        ],
      ),
    );
  }
}
