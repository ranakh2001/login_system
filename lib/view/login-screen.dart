// ignore_for_file: file_names, avoid_types_as_parameter_names

import 'package:chat/controller/login-controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/email-field-widget.dart';
import 'widgets/login-with-other.dart';
import 'widgets/logo-container.dart';
import 'widgets/password-field-widget.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
           const LogoContainer(),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
              child: Text(
                "LOG IN",
                style: GoogleFonts.poppins(
                    color: const Color.fromARGB(255, 75, 135, 97),
                    fontSize: 26),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(3),
              child: Text(
                "Email",
                style: GoogleFonts.poppins(color: Colors.black, fontSize: 16),
                textAlign: TextAlign.start,
              ),
            ),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 3),
                child: EmailFieldWidget()),
            Container(
              margin: const EdgeInsets.all(3),
              child: Text(
                "Password",
                style: GoogleFonts.poppins(color: Colors.black, fontSize: 16),
                textAlign: TextAlign.start,
              ),
            ),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 3),
                child: PasswordFieldWidget()),
            Container(
              margin: const EdgeInsets.all(3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Obx(
                        () => Checkbox(
                            checkColor: Colors.white,
                            activeColor: Colors.green,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            value: loginController.rememberMe.value,
                            onChanged: (bool) => loginController
                                .onCheck(loginController.rememberMe.value)),
                      ),
                      Text(
                        "Remember Me",
                        style: GoogleFonts.poppins(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  TextButton(
                      onPressed: () {
                        Get.toNamed("/forgetPassword");
                      },
                      child: Text(
                        "Forget Password?",
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.red),
                      )),
                ],
              ),
            ),
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
                    "Log In",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  )),
            ),
            const LoginWithOther(),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Dont hanv an account alredy?",
                    style: GoogleFonts.poppins(
                        color: const Color.fromARGB(255, 145, 147, 151),
                        fontSize: 14),
                  ),
                  TextButton(
                      onPressed: () {
                        Get.toNamed('/signup');
                      },
                      child: Text(
                        "Sign Up",
                        style: GoogleFonts.poppins(
                            color: const Color.fromARGB(255, 75, 135, 97),
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
