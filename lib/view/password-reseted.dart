// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordReseted extends StatelessWidget {
  const PasswordReseted({super.key});

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
          )),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: Image.asset("assets/images/reset-done.png"),
            ),
            Text(
              "Reset password successfully",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                "Reset your password to recovery & login to your account",
                style: GoogleFonts.poppins(
                    color: const Color.fromARGB(255, 172, 183, 202),
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 75, 135, 97),
                    padding: const EdgeInsets.all(10.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onPressed: () {
                    Get.offAndToNamed("/");
                  },
                  child: Text(
                    "Log In ",
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
