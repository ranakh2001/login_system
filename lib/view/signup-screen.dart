// ignore_for_file: file_names, must_be_immutable

import 'package:chat/controller/login-controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/drop-down-button.dart';
import 'widgets/email-field-widget.dart';
import 'widgets/login-with-other.dart';
import 'widgets/logo-container.dart';
import 'widgets/password-field-widget.dart';
import 'widgets/phone-number-widget.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
  LoginController loginController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const LogoContainer(),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 137, child: Dropdown()),
                SizedBox(width: 182, child: PhoneNumberTextField())
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                "Password",
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            PasswordFieldWidget(),
            // Row(
            //   children: [
            //     Text(
            //       "By Clicking 'Sign Up' , I Agree To",
            //       style: GoogleFonts.poppins(color: Colors.black, fontSize: 12),
            //     ),
            //     Text(
            //       "Terms of conditions & Peivacy Policy",
            //       style: GoogleFonts.poppins(
            //           color: const Color.fromARGB(255, 0, 75, 255),
            //           fontSize: 12),
            //     ),
            //   ],
            // )
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 75, 135, 97),
                    padding: const EdgeInsets.all(10.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Sign Up",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  )),
            ),
            const LoginWithOther(),
          ],
        ),
      ),
    );
  }
}
