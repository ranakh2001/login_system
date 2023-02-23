// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controller/login-controller.dart';

// ignore: must_be_immutable
class PasswordFieldWidget extends StatelessWidget {
  PasswordFieldWidget({super.key});
  LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => TextField(
        obscureText: loginController.isVisible.value ? false : true,
        cursorColor: loginController.grey,
        controller: loginController.passwordcontroller,
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color.fromARGB(255, 225, 225, 225),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              borderSide: BorderSide(color: Colors.white)),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 2.0),
            borderRadius: BorderRadius.circular(25.0),
          ),
          prefixIcon: const Icon(Icons.lock),
          prefixIconColor: loginController.grey,
          suffixIcon: loginController.isVisible.value
              ? IconButton(
                  icon: Icon(Icons.visibility_off, color: loginController.grey),
                  onPressed: () => loginController.changeVisiability(),
                )
              : IconButton(
                  icon: Icon(
                    Icons.visibility,
                    color: loginController.grey,
                  ),
                  onPressed: () => loginController.changeVisiability(),
                ),
          hintText: "************",
          hintStyle:
              GoogleFonts.poppins(fontSize: 12, color: loginController.grey),
        ),
      ),
    );
  }
}
