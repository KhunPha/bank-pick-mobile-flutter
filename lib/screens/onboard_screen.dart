import 'package:bankpick/screens/login_screen.dart';
import 'package:flutter/material.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  final PageController _controller = PageController();
  int currentIndex = 0;

  List<Map<String, String>> onboardingData = [
    {
      "image": "assets/Group 1.png",
      "title": "Fastest Payment in the world",
      "description":
          "Integrate mutiple payment methods to help you up the process quickly",
    },
    {
      "image": "assets/Group 3.png",
      "title": "The most Secure Platform for Customer",
      "description":
          "Built-in Fingerprint, face recognition and more, keeping you completely safe",
    },
    {
      "image": "assets/Group 4.png",
      "title": "Paying for Everything is Easy and Convenient",
      "description":
          "Built-in Fingerprint, face recognition and more, keeping you completely safe",
    },
  ];

  void nextPage() {
    if (currentIndex < onboardingData.length - 1) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeIn,
      );
    } else {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 600),
          pageBuilder: (_, animation, __) {
            return FadeTransition(opacity: animation, child: LoginScreen());
          },
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemCount: onboardingData.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height / 5),
                  Image.asset(onboardingData[index]["image"]!, height: 250),

                  SizedBox(height: MediaQuery.of(context).size.height / 8),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: Text(
                      onboardingData[index]["title"]!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),
                  ),

                  SizedBox(height: 10),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: Text(
                      onboardingData[index]["description"]!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Color(0xFF7E848D),
                        height: 1.5,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),

          Positioned(
            bottom: MediaQuery.of(context).size.height / 2.2,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                onboardingData.length,
                (dotIndex) => Container(
                  margin: const EdgeInsets.only(right: 5),
                  height: 10,
                  width: currentIndex == dotIndex ? 25 : 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: currentIndex == dotIndex
                        ? Colors.blue
                        : Colors.grey[300],
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 60,
            width: MediaQuery.of(context).size.width,
            child: GestureDetector(
              onTap: nextPage,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF0066FF),
                  borderRadius: BorderRadius.circular(18),
                ),
                margin: EdgeInsets.symmetric(horizontal: 18),
                padding: EdgeInsets.symmetric(vertical: 18),
                child: Text(
                  currentIndex == onboardingData.length - 1
                      ? "Get Started"
                      : "Next",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
