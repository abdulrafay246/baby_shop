import 'dart:developer';

import 'package:baby_shop/views/auth/SignupScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class Logincontroller extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final FirebaseAuth auth = FirebaseAuth.instance;
  var isLoading = false.obs;

  var isObsecureText = true.obs;

  void isToggle() {
    isObsecureText.value = !isObsecureText.value;
  }

  void login() {
    try {
      isLoading.value = true;
      auth
          .signInWithEmailAndPassword(
              email: emailController.text.trim(),
              password: passwordController.text.trim())
          .then((value) {
        isLoading.value = false;
        Get.snackbar("Successful", "User Login Successfull");
        Get.to(() => const SignupScreen());
      }).onError((error, stractrance) {
        isLoading.value = false;
        Get.snackbar("error", "Something Went wrong");
        log(error.toString());
      });
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  void dispose() {
    passwordController.dispose();
    emailController.dispose();
    super.dispose();
  }
}
