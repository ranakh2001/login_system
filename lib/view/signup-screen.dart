// ignore_for_file: file_names, must_be_immutable

import 'package:chat/controller/login-controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/drop-down-button.dart';
import 'widgets/email-field-widget.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
  LoginController loginController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              width: 50,
              height: 50,
              child: Image.asset("assets/images/logo.png"),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
              child: Text(
                "SIGN UP",
                style: GoogleFonts.poppins(
                    color: const Color.fromARGB(255, 75, 135, 97),
                    fontSize: 26),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              children: [
                Text(
                  "First Name",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  width: 100,
                ),
                Text(
                  "Last Name",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    width: 150,
                    child: TextField(
                      cursorColor: loginController.grey,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(255, 225, 225, 225),
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide(color: Colors.white)),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        hintText: "Rana",
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 12, color: loginController.grey),
                      ),
                    )),
                const SizedBox(
                  width: 20,
                ),
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    width: 150,
                    child: TextField(
                      cursorColor: loginController.grey,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(255, 225, 225, 225),
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide(color: Colors.white)),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        hintText: "El-khodary",
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 12, color: loginController.grey),
                      ),
                    )),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                "Email",
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            EmailFieldWidget(),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                "Phone",
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Dropdown(),
          ],
        ),
      ),
    );
  }
}
