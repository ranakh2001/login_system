// ignore_for_file: file_names

import 'package:flutter/material.dart';


class LogoContainer extends StatelessWidget {
  const LogoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
              margin: const EdgeInsets.all(20),
              width: 50,
              height: 50,
              child: Image.asset("assets/images/logo.png"),
            );
  }
}