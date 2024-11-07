import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class passwordController extends GetxController {
  var isObsecure = true.obs;
  var isLoading = false.obs;

  void isToggle() {
    isObsecure.value = !isObsecure.value;
  }

  final userController = TextEditingController();
  final contactController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();

  void signup() async {
    String email = emailController.text.trim();
    String password = passController.text.trim();
    if (email.isEmpty || password.isEmpty) {
      Get.snackbar("Error", "Please enter both email and password",
          snackPosition: SnackPosition.TOP);
      return;
    }

    try {
         isLoading.value = true;
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      Get.snackbar("Success", "Account created successfully",
          snackPosition: SnackPosition.TOP);

      // Optionally clear the text fields after successful signup
      userController.clear();
      contactController.clear();
      emailController.clear();
      passController.clear();
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
    passController.dispose();
    super.onClose();
  }
}
