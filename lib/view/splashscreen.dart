import 'package:chatbot_app/controller/splashscreen_controller.dart';
import 'package:chatbot_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart'; // Make sure GetX is imported

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Bind the SplashController when the splash screen is loaded
    Get.put(SplashController()); // Ensure the controller is available

    return Scaffold(
      backgroundColor: blue, // Set background color if needed
      body: Center(
        child: Center(
          child: SvgPicture.asset(
            'assets/images/ai.svg', // Replace with your image path
            width: 100, // Image size
            height: 100,
          ),
        ),
      ),
    );
  }
}
