import 'package:baby_shop/widgets/Custombutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/LoginController.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Logincontroller());
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              cursorColor: Colors.grey,
              style: TextStyle(fontSize: 18, color: Colors.grey),
              decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.email,
                    color: Colors.grey,
                  ),
                  filled: true,
                  fillColor: const Color(0xf232323),
                  hintText: "Email.",
                  hintStyle: TextStyle(color: Colors.grey),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(50)),
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(50))),
            ),
            const SizedBox(
              height: 20,
            ),
            Obx(() {
              return TextField(
                obscureText: controller.isObsecureText.value,
                cursorColor: Colors.grey,
                style: const TextStyle(fontSize: 18, color: Colors.grey),
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(
                          controller.isObsecureText.value
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.grey),
                      onPressed: () {
                        controller.isToggle();
                      },
                    ),
                    filled: true,
                    fillColor: const Color(0xf232323),
                    hintText: "Password",
                    hintStyle: const TextStyle(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(50)),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(50))),
              );
            }),
            CustomButton(
                onTap: () {
                  controller.Login();
                },
                text: "Login")
          ],
        ),
      ),
    ));
  }
}
