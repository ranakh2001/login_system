// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:chat/controller/login-controller.dart';

// ignore: must_be_immutable
class CodeTextField extends StatelessWidget {
  LoginController loginController = Get.find();
  TextEditingController controller;
  TextInputAction action;
  CodeTextField({
    Key? key,
    required this.controller,
    required this.action,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 60,
      child: TextField(
        controller: controller,
        textInputAction: action,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        cursorColor: loginController.grey,
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
              borderRadius: BorderRadius.circular(20.0),
            ),
            hintText: "0",
            hintStyle: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: const Color.fromARGB(255, 167, 156, 156))),
      ),
    );
  }
}
