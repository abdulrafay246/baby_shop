import 'package:baby_shop/Colors/customcolors.dart';
import 'package:baby_shop/controllers/PasswordController.dart';
import 'package:baby_shop/widgets/Custombutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(passwordController());

    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Sign Up",
              style: TextStyle(
                  color: CustomColors.textField,
                  fontSize: 50,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              cursorColor: Colors.grey,
              style: TextStyle(fontSize: 18, color: CustomColors.textField),
              decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.email,
                    color: CustomColors.textField,
                  ),
                  filled: true,
                  fillColor: const Color(0xf232323),
                  hintText: "Email.",
                  hintStyle: TextStyle(color: CustomColors.textField),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: CustomColors.textField),
                      borderRadius: BorderRadius.circular(50)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: CustomColors.textField),
                      borderRadius: BorderRadius.circular(50))),
              controller: controller.emailController,
            ),
            const SizedBox(
              height: 20,
            ),
            Obx(() {
              return TextField(
                obscureText: controller.isObsecure.value,
                cursorColor: Colors.grey,
                style: TextStyle(fontSize: 18, color: CustomColors.textField),
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(
                          controller.isObsecure.value
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: CustomColors.textField),
                      onPressed: () {
                        controller.isToggle();
                      },
                    ),
                    filled: true,
                    fillColor: const Color(0xf232323),
                    hintText: "Password",
                    hintStyle: TextStyle(color: CustomColors.textField),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: CustomColors.textField),
                        borderRadius: BorderRadius.circular(50)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: CustomColors.textField),
                        borderRadius: BorderRadius.circular(50))),
                controller: controller.passController,
              );
            }),
            SizedBox(height: Get.height * 0.05),
            Obx(() {
              return CustomButton(
                  borderRadius: 20,
                  elevation: 10,
                  backgroundColor: CustomColors.purple,
                  isLoading: controller.isLoading.value,
                  onPressed: () {
                    controller.signup();
                  },
                  text: "SignUp");
            }),
          ],
        ),
      ),
    ));
  }
}
