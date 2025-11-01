import 'package:bankpick/util/birth_date_picker.dart';
import 'package:bankpick/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBarWidget(title: "Edit Profile", buttonLeft: true),

            SizedBox(height: 20),

            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Profile Image
                            Center(
                              child: Column(
                                children: [
                                  ClipOval(
                                    child: Image.network(
                                      "https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=687",
                                      width: 90,
                                      height: 90,
                                      fit: BoxFit.cover,
                                    ),
                                  ),

                                  SizedBox(height: 10),

                                  Text(
                                    "Tanyan Myroniuk",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  SizedBox(height: 3),

                                  Text(
                                    "Senior Designer",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[500],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(height: 15),

                            // Profile Detials
                            Text(
                              "Full Name",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 8),
                            _customTextField(
                              icon: "assets/circle-user.png",
                              hint: "Full Name",
                            ),

                            SizedBox(height: 20),

                            Text(
                              "Email Address",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),

                            SizedBox(height: 8),

                            _customTextField(
                              icon: "assets/clip-mail.png",
                              hint: "Email Address",
                            ),

                            SizedBox(height: 20),

                            Text(
                              "Phone Number",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),

                            SizedBox(height: 8),

                            _customTextField(
                              icon: "assets/clip-mail.png",
                              hint: "Phone Number",
                            ),

                            SizedBox(height: 20),

                            SizedBox(height: 8),

                            BirthDatePicker(title: "Birth Date"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _customTextField({
    required String icon,
    required String hint,
    bool obscureText = false,
    IconData? suffixIcon,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
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
          Image.asset(icon, color: Colors.grey[500], width: 20),
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
