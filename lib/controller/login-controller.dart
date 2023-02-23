// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  RxBool isVisible = false.obs;
  RxBool rememberMe = false.obs;
  Color grey = const Color.fromARGB(
    255,
    172,
    183,
    202,
  );

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
}
