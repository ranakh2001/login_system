// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controller/login-controller.dart';

class PhoneNumberTextField extends StatelessWidget {
  PhoneNumberTextField({super.key});
  LoginController loginController = Get.find();
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      cursorColor: loginController.grey,
      controller: loginController.phonecontroller,
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
        hintText: "592698128",
        hintStyle:
            GoogleFonts.poppins(fontSize: 12, color: loginController.grey),
      ),
    );
  }
}
