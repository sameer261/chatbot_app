import 'package:chatbot_app/utils/colors.dart';
import 'package:chatbot_app/view/chat/chatscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Title and description
              Column(
                children: [
                  Text(
                    'You AI Assistant',
                    style: TextStyle(
                      color: blue,
                      fontSize: 23,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 14),
                  Text(
                    'Using this software, you can ask your\nquestions and receive articles using\nartificial intelligence assistant',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF757575),
                      fontSize: 15,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),

              // Robot Image
              Image.asset('assets/images/robot2.png'),

              // Custom Button with GestureDetector
              GestureDetector(
                onTap: () {
                  // Navigate to next screen here
                  Get.to(Chatscreen());
                },
                child: Container(
                  width: double.infinity,
                  height: 56,
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                    color: blue,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 24), // For left spacing
                      Text(
                        'Continue',
                        style: TextStyle(
                          color: white,
                          fontSize: 19,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios, color: white, size: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
