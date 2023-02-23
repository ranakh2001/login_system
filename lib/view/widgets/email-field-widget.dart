// ignore_for_file: file_names

import 'package:chat/controller/login-controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class EmailFieldWidget extends StatelessWidget {
  EmailFieldWidget({super.key});
  LoginController loginController = Get.find();
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      cursorColor: loginController.grey,
      controller: loginController.emailcontroller,
      decoration: InputDecoration(
        filled: true,
        fillColor:const Color.fromARGB(255, 225, 225, 225),
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            borderSide: BorderSide(color: Colors.white)),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:const BorderSide(color: Colors.white, width: 2.0),
          borderRadius: BorderRadius.circular(25.0),
        ),
        prefixIcon: Icon(Icons.email, color: loginController.grey),
        prefixIconColor: loginController.grey,
        hintText: "example@gmail.com",
        hintStyle:
            GoogleFonts.poppins(fontSize: 12, color: loginController.grey),
      ),
    );
  }
}
