import 'dart:developer';

import 'package:baby_shop/views/auth/LoginScreen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Signupcontroller extends GetxController {
  final userNameController = TextEditingController();
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
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
        email: email,
        password: password,
      )
          .then((value) {
        final users = FirebaseFirestore.instance;
        users.collection('users').doc(value.user!.uid).set({
          'email': email,
          'contact': contactController.text.trim(),
          'user': userNameController.text.trim(),
          'uid': value.user!.uid
        });
      }).then((value) {
        Get.snackbar("Success", "Account created successfully",
            snackPosition: SnackPosition.TOP);
        Get.to(() => const LoginScreen());
      }).then((value) {
        userNameController.clear();
        contactController.clear();
        emailController.clear();
        passwordController.clear();
      });

      // Optionally clear the text fields after successful signup
    } catch (e) {
      Get.snackbar("Signup Failed", "Something went wrong",
          snackPosition: SnackPosition.TOP);
      log(e.toString());
    }
  }

  @override
  void onClose() {
    userNameController.dispose();
    contactController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void isToggle1() {
    isObsecure.value = !isObsecure.value;
  }
}
