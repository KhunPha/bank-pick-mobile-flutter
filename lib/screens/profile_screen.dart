import 'package:bankpick/screens/bank_and_card.dart';
import 'package:bankpick/screens/edit_profile_screen.dart';
import 'package:bankpick/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<Map<String, dynamic>> profileMenuData = [
    {
      "icon": "assets/circle-user.png",
      "title": "Personal Information",
      "route": EditProfileScreen(),
    },
    {
      "icon": "assets/bitcoin-card.png",
      "title": "Payment Preferences",
      "route": EditProfileScreen(),
    },
    {
      "icon": "assets/credit-card-edit.png",
      "title": "Banks and Cards",
      "route": BankAndCard(),
    },
    {
      "icon": "assets/bell-notification-social-media.png",
      "title": "Notifications",
      "route": EditProfileScreen(),
    },
    {
      "icon": "assets/comment-alt-dots.png",
      "title": "Message Center",
      "route": EditProfileScreen(),
    },
    {
      "icon": "assets/marker.png",
      "title": "Address",
      "route": EditProfileScreen(),
    },
    {
      "icon": "assets/settings.png",
      "title": "Settings",
      "route": EditProfileScreen(),
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBarWidget(
              title: "Profile",
              buttonLeft: true,
              buttonRight: true,
              iconDataRight: "assets/user-pen.png",
              functionLeft: () => Navigator.pop(context),
              functionRight: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EditProfileScreen()),
              ),
            ),

            SizedBox(height: 20),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ClipOval(
                            child: Image.network(
                              "https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=687",
                              width: 90,
                              height: 90,
                              fit: BoxFit.cover,
                            ),
                          ),

                          SizedBox(width: 20),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Tanyan Myroniuk",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              SizedBox(height: 8),

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
                        ],
                      ),

                      SizedBox(height: 20),

                      Column(
                        children: profileMenuData.map((item) {
                          return GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => item["route"],
                              ),
                            ),
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 20),
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
                                  Row(
                                    children: [
                                      Image.asset(
                                        item["icon"]!,
                                        width: 22,
                                        color: Colors.grey[500],
                                      ),
                                      SizedBox(width: 20),
                                      Text(
                                        item["title"]!,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),

                                  item["title"]! != "Notifications"
                                      ? Image.asset(
                                          "assets/angle-small-right.png",
                                          width: 25,
                                          color: Colors.grey[500],
                                        )
                                      : Container(
                                          padding: EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Text(
                                            "2",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                ],
                              ),
                            ),
                          );
                        }).toList(),
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
