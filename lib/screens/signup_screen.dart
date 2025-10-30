import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sign Up",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 32),
                ),
                SizedBox(height: 20),

                // Full Name
                Text(
                  "Full Name",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                SizedBox(height: 8),
                _customTextField(
                  icon: Icons.person_2_outlined,
                  hint: "Full Name",
                ),
                SizedBox(height: 20),

                // Phone Number
                Text(
                  "Phone Number",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                SizedBox(height: 8),
                _customTextField(
                  icon: Icons.phone_android_outlined,
                  hint: "+8559988776655",
                ),
                SizedBox(height: 20),

                // Email
                Text(
                  "Email Address",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                SizedBox(height: 8),
                _customTextField(icon: Icons.email_outlined, hint: "Email"),
                SizedBox(height: 20),

                // Password
                Text(
                  "Password",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                SizedBox(height: 8),
                _customTextField(
                  icon: Icons.lock_outline,
                  hint: "Password",
                  obscureText: true,
                  suffixIcon: Icons.visibility_outlined,
                ),
                SizedBox(height: 40),

                // Sign Up button
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 18),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Center(
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 25),

                // Sign In row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account. ",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context); // use pop
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Reusable TextField
  Widget _customTextField({
    required IconData icon,
    required String hint,
    bool obscureText = false,
    IconData? suffixIcon,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 5,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.grey),
          SizedBox(width: 20),
          Expanded(
            child: TextField(
              obscureText: obscureText,
              decoration: InputDecoration(
                hintText: hint,
                border: InputBorder.none,
              ),
            ),
          ),
          if (suffixIcon != null) Icon(suffixIcon, color: Colors.grey),
        ],
      ),
    );
  }
}
