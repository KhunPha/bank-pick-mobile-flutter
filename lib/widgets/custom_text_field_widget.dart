import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    super.key,
    this.icon,
    required this.hint,
    this.obscureText = false,
    this.suffixIcon,
  });

  final String? icon;
  final String hint;
  final bool obscureText;
  final String? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        // color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border(bottom: BorderSide(color: Colors.grey[200]!, width: 1)),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey.withOpacity(0.3),
        //     blurRadius: 5,
        //     offset: Offset(0, 1),
        //   ),
        // ],
      ),
      child: Row(
        children: [
          if (icon != null)
            Image.asset(icon!, color: Colors.grey[500], width: 20),

          if (icon != null)
            const SizedBox(
              width: 15,
            ), // works because Column arranges vertically
          Expanded(
            child: TextField(
              obscureText: obscureText,
              decoration: InputDecoration(
                hintText: hint,
                border: InputBorder.none,
              ),
            ),
          ),
          if (suffixIcon != null) Image.asset(suffixIcon!, width: 30),
        ],
      ),
    );
  }
}
