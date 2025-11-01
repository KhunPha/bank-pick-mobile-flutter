import 'package:bankpick/widgets/app_bar_widget.dart';
import 'package:bankpick/widgets/custom_text_field_widget.dart';
import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBarWidget(title: "Change Password", buttonLeft: true),

            SizedBox(height: 40),

            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Current Password",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),

                      SizedBox(height: 8),

                      CustomTextFieldWidget(
                        icon: "assets/padlock.png",
                        hint: "Current Password",
                        isPadding: false,
                      ),

                      SizedBox(height: 20),

                      Text(
                        "New Password",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),

                      SizedBox(height: 8),

                      CustomTextFieldWidget(
                        icon: "assets/padlock.png",
                        hint: "New Password",
                        isPadding: false,
                      ),

                      SizedBox(height: 20),

                      Text(
                        "Confirm New Password",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),

                      SizedBox(height: 8),

                      CustomTextFieldWidget(
                        icon: "assets/padlock.png",
                        hint: "Confirm New Password",
                        isPadding: false,
                      ),

                      SizedBox(height: 5),

                      Text(
                        "Both Passwords Must Match",
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),

                      SizedBox(height: 50),

                      SizedBox(
                        width: double.infinity,
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
                            "Change Password",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ), // text color
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
