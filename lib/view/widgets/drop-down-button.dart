// ignore_for_file: file_names, must_be_immutable

import 'package:chat/controller/login-controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Dropdown extends StatelessWidget {
  Dropdown({super.key});
  LoginController loginController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => DropdownButtonFormField(
          style: GoogleFonts.poppins(fontSize: 8, color: Colors.black),
          decoration: InputDecoration(
            prefixIcon:const Icon(Icons.flag_circle),
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
          ),
          value: loginController.contryIntro.value,
          items: loginController.contries,
          onChanged: (value) {
            loginController.selectContry(value);
          }),
    );
  }
}
