// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/password-field-widget.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

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
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: Image.asset("assets/images/reset-password.png"),
            ),
            Text(
              "Reset password",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                "Enter your email address to retrieve your password.",
                style: GoogleFonts.poppins(
                    color: const Color.fromARGB(255, 172, 183, 202),
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(3),
              child: Text(
                "Password",
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.start,
              ),
            ),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: PasswordFieldWidget()),
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
                    Get.toNamed("/passwordReseted");
                  },
                  child: Text(
                    "Verify ",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
