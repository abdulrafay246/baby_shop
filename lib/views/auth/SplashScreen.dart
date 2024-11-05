import 'package:baby_shop/Colors/customcolors.dart';
import 'package:baby_shop/views/auth/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';

import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () => Get.to(() => const LoginScreen()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: Text("Baby Shop",
                  style: GoogleFonts.oswald(
                      fontSize: Get.width * 0.15,
                      fontWeight: FontWeight.w600,
                      color: CustomColors.purple))),
        ],
      ),
    );
  }
}
