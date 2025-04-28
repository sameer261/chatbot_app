import 'dart:async';
import 'package:chatbot_app/view/onboarding_screen.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    startDelay();
  }

  void startDelay() {
    Timer(const Duration(seconds: 3), () {
      // Navigate to OnboardingScreen after 3 seconds
      Get.off(() => OnboardingScreen());
    });
  }
}
