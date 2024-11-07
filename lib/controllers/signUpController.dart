import 'package:baby_shop/views/auth/LoginScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Signupcontroller extends GetxController {
  final userController = TextEditingController();
  final contactController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  RxBool isObsecure = true.obs;

  void signup() async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    if (email.isEmpty || password.isEmpty) {
      Get.snackbar("Error", "Please enter both email and password",
          snackPosition: SnackPosition.TOP);
      return;
    }

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      Get.snackbar("Success", "Account created successfully",
          snackPosition: SnackPosition.TOP);
      Get.to(LoginScreen());

      // Optionally clear the text fields after successful signup
      userController.clear();
      contactController.clear();
      emailController.clear();
      passwordController.clear();
    } catch (e) {
      Get.snackbar("Signup Failed", e.toString(),
          snackPosition: SnackPosition.TOP);
    }
  }

  @override
  void onClose() {
    userController.dispose();
    contactController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void isToggle1() {
    isObsecure.value = !isObsecure.value;
  }
}
