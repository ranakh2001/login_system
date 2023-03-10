// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:chat/controller/login-controller.dart';

import 'widgets/code-textField.dart';

// ignore: must_be_immutable
class VerificationCodeScreen extends StatelessWidget {
  VerificationCodeScreen({super.key});
  LoginController loginController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Get.back(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
              child: Image.asset("assets/images/email-veification.png"),
            ),
            Text(
              "Enter the verification code",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                "Enter the code sent to your email.",
                style: GoogleFonts.poppins(
                    color: const Color.fromARGB(255, 172, 183, 202),
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CodeTextField(
                    controller: loginController.c1,
                    action: loginController.next,
                  ),
                  CodeTextField(
                    controller: loginController.c2,
                    action: loginController.next,
                  ),
                  CodeTextField(
                    controller: loginController.c3,
                    action: loginController.next,
                  ),
                  CodeTextField(
                    controller: loginController.c4,
                    action: loginController.done,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 75, 135, 97),
                    padding: const EdgeInsets.all(10.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onPressed: () {
                    Get.toNamed("/resetPassword");
                  },
                  child: Text(
                    "Verify ",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  )),
            ),
            Text(
              "Didn't you receive a code?",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            // timer is incomplete
          ],
        ),
      ),
    );
  }
}
