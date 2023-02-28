// ignore_for_file: file_names

import 'package:chat/controller/login-controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dropdown extends StatelessWidget {
  Dropdown({super.key});
  LoginController loginController = Get.find();
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        icon: Icon(Icons.flag_circle),
        value: loginController.contryIntro,
        items: loginController.contries,
        onChanged: (value) {
          loginController.selectContry(value);
        });
  }
}
