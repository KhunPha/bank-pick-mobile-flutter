import 'package:bankpick/screens/profile_screen.dart';
import 'package:bankpick/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';

class SettingTab extends StatefulWidget {
  const SettingTab({super.key});

  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  List<Map<String, dynamic>> settingData = [
    {
      "menu": "General",
      "sub_menu": [
        {
          "title": "Language",
          "display": "English",
          "icon": "assets/",
          "route": ProfileScreen(),
        },
        {
          "title": "My Profile",
          "display": "",
          "icon": "assets/",
          "route": ProfileScreen(),
        },
        {
          "title": "Contact Us",
          "display": "",
          "icon": "assets/",
          "route": ProfileScreen(),
        },
      ],
    },
    {
      "menu": "Security",
      "sub_menu": [
        {
          "title": "Change Password",
          "display": "",
          "icon": "assets/",
          "route": ProfileScreen(),
        },
        {
          "title": "Privacy Policy",
          "display": "",
          "icon": "assets/",
          "route": ProfileScreen(),
        },
      ],
    },
    {
      "menu": "Choose what data you share with us",
      "sub_menu": [
        {
          "title": "Biometric",
          "display": "",
          "icon": "assets/",
          "route": ProfileScreen(),
        },
      ],
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            AppBarWidget(
              title: "Settings",
              buttonRight: true,
              iconDataRight: "assets/leave.png",
            ),

            SizedBox(height: 20),

            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: settingData.map((item) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item["menu"]!,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[600],
                              fontSize: 17,
                            ),
                          ),

                          SizedBox(height: 10),

                          Column(
                            children: (item["sub_menu"] as List).map((subItem) {
                              return GestureDetector(
                                onTap: () => {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => subItem["route"],
                                    ),
                                  ),
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 18),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Colors.grey[200]!,
                                        width: 0.5,
                                      ),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        subItem["title"]!,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),

                                      Row(
                                        children: [
                                          Text(
                                            subItem["display"]!,
                                            style: TextStyle(
                                              color: Colors.grey[600],
                                              fontSize: 17,
                                            ),
                                          ),

                                          SizedBox(width: 20),

                                          Image.asset(
                                            "assets/angle-small-right.png",
                                            width: 25,
                                            color: Colors.grey[600],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }).toList(),
                          ),

                          SizedBox(height: 20),
                        ],
                      );
                    }).toList(),
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
