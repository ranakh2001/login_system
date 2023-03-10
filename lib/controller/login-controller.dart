// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginController extends GetxController {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController c1 = TextEditingController();
  TextEditingController c2 = TextEditingController();
  TextEditingController c3 = TextEditingController();
  TextEditingController c4 = TextEditingController();
  RxBool isVisible = false.obs;
  RxBool rememberMe = false.obs;
  Color grey = const Color.fromARGB(
    255,
    172,
    183,
    202,
  );
  RxString contryIntro = "+970".obs;
  List<DropdownMenuItem<dynamic>> contries = [
    DropdownMenuItem(
      value: "+970",
      child: Text(
        "+970",
        style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
      ),
    ),
    DropdownMenuItem(
      value: "+20",
      child: Text(
        "+20",
        style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
      ),
    ),
    DropdownMenuItem(
      value: "+212",
      child: Text(
        "+212",
        style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
      ),
    ),
    DropdownMenuItem(
      value: "+216",
      child: Text(
        "+216",
        style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
      ),
    ),
    DropdownMenuItem(
      value: "+218",
      child: Text(
        "+218",
        style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
      ),
    ),
  ];
  TextInputAction next = TextInputAction.next;
  TextInputAction done = TextInputAction.done;

  void changeVisiability() {
    if (isVisible.value) {
      isVisible.value = false;
    } else {
      isVisible.value = true;
    }
  }

  void onCheck(bool remember) {
    if (rememberMe.value == false) {
      rememberMe.value = true;
    } else {
      rememberMe.value = false;
    }
  }

  void selectContry(String contry) {
    contryIntro.value = contry;
  }
}
